const pool = require("../config/database");

const getLessons = async () => {
    const result = await pool.query(`SELECT * FROM lessons`);
    return result.rows;
};

const getLessonById = async (id) => {
    const result = await pool.query(
        `SELECT * FROM lessons WHERE id = $1`, [id]
    );
    return result.rows[0];
};

const getLessonsByCourse = async (course_id) => {
    const result = await pool.query(
        `SELECT * FROM lessons WHERE course_id = $1`, [course_id]
    );
    return result.rows;
};

const createLesson = async (course_id, title, subtitle, content, media) => {
    const result = await pool.query(
        "INSERT INTO lessons (course_id, title, subtitle, content, media) VALUES ($1, $2, $3, $4, $5) RETURNING *",
        [course_id, title, subtitle, content, media]
    );
    return result.rows[0];
};

const updateLesson = async (id, course_id, title, subtitle, content, media) => {
    const result = await pool.query(
        "UPDATE lessons SET course_id = $1, title = $2, subtitle = $3, content = $4, media = $5 WHERE id = $6 RETURNING *",
        [course_id, title, subtitle, content, media, id]
    );
    return result.rows[0];
};

const deleteLesson = async (id) => {
    const result = await pool.query("DELETE FROM lessons WHERE id = $1 RETURNING *", [id]);
    if (result.rowCount === 0) {
        return { error: "Lição não encontrada." };
    }
    return { message: "Lição deletada com sucesso." };
};

module.exports = { getLessons, getLessonById, getLessonsByCourse, createLesson, updateLesson, deleteLesson };