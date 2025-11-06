import { Router } from "express";

const rotaTarefa = Router();

rotaTarefa.get("/", ()=>console.log('pegar todas as tarefas'))
rotaTarefa.get("/:id", ()=>console.log('pegar uma tarefa'))
rotaTarefa.post("/", ()=>console.log('cadastrar uma tarefa'))
rotaTarefa.put("/:id", ()=>console.log('atualizar uma tarefa'))
rotaTarefa.delete("/:id", ()=>console.log('deltar uma tarefa'))

export default rotaTarefa;
