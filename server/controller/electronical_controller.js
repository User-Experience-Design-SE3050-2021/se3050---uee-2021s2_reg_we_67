var Electronicaldb = require('../model/electronical_model');

const fs = require('fs');



// retrieve and return all Electronical devices/ retrive and return a single Electronical devices
exports.find = (req, res)=>{

    if(req.query.id){
        const id = req.query.id;

        Electronicaldb.findById(id)
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
        Electronicaldb.find()
            .then(electronical => {
                res.send(electronical)
            })
            .catch(err => {
                res.status(500).send({ message : err.message || "Error Occurred while retriving product information" })
            })
    }

    
}




