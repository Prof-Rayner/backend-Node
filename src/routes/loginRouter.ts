import { Router } from "express";
import tarefasController from "../controllers/tarefasController";

const rotaLogin = Router();

rotaLogin.post("/", ()=>{
    console.log('ok')
})

export default rotaLogin;
