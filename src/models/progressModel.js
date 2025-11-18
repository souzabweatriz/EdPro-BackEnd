const pool = require("../config/database");

const getProgress = async () => {
    const result = await pool.query(`SELECT * FROM progress`);
    return result.rows;
};

const getProgressById = async (id) => {
    const result = await pool.query(
        `SELECT * FROM progress WHERE id = $1`, [id]
    );
    return result.rows[0];
};

const createProgress = async (enrollment_id, lesson_id, status, completed_at) => {
    const result = await pool.query(
        "INSERT INTO progress (enrollment_id, lesson_id, status, completed_at) VALUES ($1, $2, $3, $4) RETURNING *",
        [enrollment_id, lesson_id, status, completed_at]
    );
    return result.rows[0];
};

const updateProgress = async (id, enrollment_id, lesson_id, status, completed_at) => {
    const result = await pool.query(
        "UPDATE progress SET enrollment_id = $1, lesson_id = $2, status = $3, completed_at = $4 WHERE id = $5 RETURNING *",
        [enrollment_id, lesson_id, status, completed_at, id]
    );
    return result.rows[0];
};

const deleteProgress = async (id) => {
    const result = await pool.query("DELETE FROM progress WHERE id = $1 RETURNING *", [id]);
    if (result.rowCount === 0) {
        return { error: "Progresso não encontrado." };
    }
    return { message: "Progresso deletado com sucesso." };
};

const getProgressPercentage = async (enrollment_id) => {
    // Busca o id do curso pela matrícula
    const enrollmentRes = await pool.query(
        "SELECT course_id FROM enrollments WHERE id = $1",
        [enrollment_id]
    );
    if (enrollmentRes.rowCount === 0) return 0;
    const course_id = enrollmentRes.rows[0].course_id;

    // Conta total de lições do curso
    const lessonRes = await pool.query(
        "SELECT COUNT(*) AS total_lessons FROM lessons WHERE course_id = $1",
        [course_id]
    );
    const totalLessons = parseInt(lessonRes.rows[0].total_lessons, 10);

    // Conta lições concluídas pelo aluno na matrícula
    const completedRes = await pool.query(
        "SELECT COUNT(*) AS completed_lessons FROM progress WHERE enrollment_id = $1 AND status = 'completed'",
        [enrollment_id]
    );
    const completedLessons = parseInt(completedRes.rows[0].completed_lessons, 10);

    if (totalLessons === 0) return 0;
    return Math.round((completedLessons / totalLessons) * 100);
};


module.exports = { getProgress, getProgressById, createProgress, updateProgress, deleteProgress, getProgressPercentage };