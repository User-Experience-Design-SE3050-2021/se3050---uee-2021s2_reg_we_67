var Kiddb = require('../model/kid_model');

const fs = require('fs');



// retrieve and return all kid's fashion/ retrive and return a single kid's fashion
exports.find = (req, res)=>{

    if(req.query.id){
        const id = req.query.id;

        Kiddb.findById(id)
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
        Kiddb.find()
            .then(kid => {
                res.send(kid)
            })
            .catch(err => {
                res.status(500).send({ message : err.message || "Error Occurred while retriving product information" })
            })
    }

    
}




