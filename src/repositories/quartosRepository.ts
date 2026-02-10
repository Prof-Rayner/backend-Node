import {pool} from "../database/database"
import { RowDataPacket } from "mysql2";

async function disponiveis(data:any):Promise<any|null>{
    const sql = `SELECT *
        FROM quartos q
        WHERE q.disponivel = 1
        AND (q.qnt_cama_casal * 2 + q.qnt_cama_solteiro) >= ?
        AND q.id NOT IN (
            SELECT r.quarto_id
            FROM reservas r
            WHERE (r.fim >= ? AND r.inicio <= ?))`;

    const [quartos] = await pool.query<RowDataPacket[]>(sql, [
        data.capacidade,
        data.inicio,
        data.fim,
    ])
    return quartos.length ? quartos : null
}

export default{
    disponiveis
}