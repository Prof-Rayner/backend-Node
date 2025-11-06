import express from "express";
import { Request, Response, NextFunction } from "express";

const app = express();
app.use(express.json())

//rota parametro:  /parametro/seuNome
app.get("/parametro/:nome", (req: Request, res: Response, next: NextFunction) => {
  const nome = req.params.nome;
  console.log("Rota de parametro - Cliente digitou:", nome);
  res.send(`voce digitou o nome: ${nome}`);
});

//rota query(opcional): /query ? inicio=2025&fim=2026&qt=2
app.get("/query", (req: Request, res: Response, next: NextFunction) => {
  const nome = req.query.nome;
  console.log("Cliente digitou:", nome);
  res.send(`voce digitou o nome: ${nome}`);
});

//rota parametros no corpo - /corpo
app.get("/corpo", (req: Request, res: Response, next: NextFunction) => {
  const nome = req.body.nome;
  console.log("Variavel dentro do copo - Cliente digitou:", nome);
  res.send(`Variavel dentro do copo - voce digitou o nome: ${nome}`);
});


app.get("/exemplo", (req: Request, res: Response, next: NextFunction) => {
  console.log("aconteceu algo!!!!!");
  res.send("rodou tudo serto!!");
});

export default app;
