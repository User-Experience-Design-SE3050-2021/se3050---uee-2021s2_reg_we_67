var Beautydb = require('../model/beauty_model');

const fs = require('fs');



// retrieve and return all health and beauty/ retrive and return a single health and beauty
exports.find = (req, res)=>{

    if(req.query.id){
        const id = req.query.id;

        Beautydb.findById(id)
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
        Beautydb.find()
            .then(beauty => {
                res.send(beauty)
            })
            .catch(err => {
                res.status(500).send({ message : err.message || "Error Occurred while retriving product information" })
            })
    }

    
}




