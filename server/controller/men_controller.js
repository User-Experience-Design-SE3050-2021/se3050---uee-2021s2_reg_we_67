var Mendb = require('../model/men_model');

const fs = require('fs');



// retrieve and return all men fashion/ retrive and return a single men fashion
exports.find = (req, res)=>{

    if(req.query.id){
        const id = req.query.id;

        Mendb.findById(id)
            .then(data =>{
                if(!data){
                    res.status(404).send({ message : "Not found product with id "+ id})
                }else{
                    res.send(data)
                }
            })
            .catch(err =>{
                res.status(500).send({ message: "Erro retrieving product with id " + id})
            })

    }else{
        Mendb.find()
            .then(men => {
                res.send(men)
            })
            .catch(err => {
                res.status(500).send({ message : err.message || "Error Occurred while retriving product information" })
            })
    }

    
}




