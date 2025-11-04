const pool = require("../config/database");

const getEnrollments = async () => {
    const result = await pool.query(`SELECT * FROM enrollments`);
    return result.rows;
};

const getEnrollmentById = async (id) => {
    const result = await pool.query(
        `SELECT * FROM enrollments WHERE id = $1`, [id]
    );
    return result.rows[0];
};

const createEnrollment = async (student_id, course_id) => {
    const result = await pool.query(
        "INSERT INTO enrollments (student_id, course_id) VALUES ($1, $2) RETURNING *",
        [student_id, course_id]
    );
    return result.rows[0];
};

const updateEnrollment = async (id, student_id, course_id) => {
    const result = await pool.query(
        "UPDATE enrollments SET student_id = $1, course_id = $2 WHERE id = $3 RETURNING *",
        [student_id, course_id, id]
    );
    return result.rows[0];
};

const deleteEnrollment = async (id) => {
    const result = await pool.query("DELETE FROM enrollments WHERE id = $1 RETURNING *", [id]);
    if (result.rowCount === 0) {
        return { error: "Matrícula não encontrada." };
    }
    return { message: "Matrícula deletada com sucesso." };
};

module.exports = { getEnrollments, getEnrollmentById, createEnrollment, updateEnrollment, deleteEnrollment };