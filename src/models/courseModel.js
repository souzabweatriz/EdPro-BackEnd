const pool = require("../config/database");

const getCourses = async () => {
    const result = await pool.query(`SELECT * FROM courses`);
    return result.rows;
};

const getCourseById = async (id) => {
    const result = await pool.query(
        `SELECT * FROM courses WHERE id = $1`, [id]
    );
    return result.rows[0];
};

const createCourse = async (owner_id, photo, title, description, category) => {
    const result = await pool.query(
        "INSERT INTO courses (owner_id, photo, title, description, category) VALUES ($1, $2, $3, $4, $5) RETURNING *",
        [owner_id, photo, title, description, category]
    );
    return result.rows[0];
};

const updateCourse = async (id, owner_id, photo, title, description, category) => {
    const result = await pool.query(
        "UPDATE courses SET owner_id = $1, photo = $2, title = $3, description = $4, category = $5 WHERE id = $6 RETURNING *",
        [owner_id, photo, title, description, category, id]
    );
    return result.rows[0];
};

const deleteCourse = async (id) => {
    const result = await pool.query("DELETE FROM courses WHERE id = $1 RETURNING *", [id]);
    if (result.rowCount === 0) {
        return { error: "Curso não encontrado." };
    }
    return { message: "Curso deletado com sucesso." };
};

module.exports = { getCourses, getCourseById, createCourse, updateCourse, deleteCourse };