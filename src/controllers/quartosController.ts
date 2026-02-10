import {Request, Response, NextFunction} from "express"

async function disponiveis(req:Request, res:Response, next:NextFunction) {
    const {dataInicio, dataFim, quantidade} = req.body;
    console.log({dataInicio, dataFim, quantidade})
    res.sendStatus(200);
}


export default{
    disponiveis
}
