const pool = require("../config/database");

const getUsers = async () => {
    const result = await pool.query(`SELECT * FROM users`);
    return result.rows;
};

const getUserById = async (id) => {
    const result = await pool.query(
        `SELECT * FROM users WHERE id = $1`, [id]
    );
    return result.rows[0];
};

const createUser = async (full_name, username, email, phone, password, photo) => {
    const result = await pool.query(
        "INSERT INTO users (full_name, username, email, phone, password, photo) VALUES ($1, $2, $3, $4, $5, $6) RETURNING *",
        [full_name, username, email, phone, password, photo]
    );
    return result.rows[0];
};

const updateUser = async (id, full_name, username, email, phone, password, photo) => {
    const result = await pool.query(
        "UPDATE users SET full_name = $1, username = $2, email = $3, phone = $4, password = $5, photo = $6 WHERE id = $7 RETURNING *",
        [full_name, username, email, phone, password, photo, id]
    );
    return result.rows[0];
};

const deleteUser = async (id) => {
    const result = await pool.query("DELETE FROM users WHERE id = $1 RETURNING *", [id]);
    if (result.rowCount === 0) {
        return { error: "Usuário não encontrado." };
    }
    return { message: "Usuário deletado com sucesso." };
};

module.exports = { getUsers, getUserById, createUser, updateUser, deleteUser };