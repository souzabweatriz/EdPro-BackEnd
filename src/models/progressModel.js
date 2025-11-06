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

module.exports = { getProgress, getProgressById, createProgress, updateProgress, deleteProgress };