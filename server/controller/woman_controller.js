var Womandb = require('../model/woman_model');

const fs = require('fs');



// retrieve and return all woman fashions/ retrive and return a single woman fashion
exports.find = (req, res)=>{

    if(req.query.id){
        const id = req.query.id;

        Womandb.findById(id)
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
        Womandb.find()
            .then(woman => {
                res.send(woman)
            })
            .catch(err => {
                res.status(500).send({ message : err.message || "Error Occurred while retriving product information" })
            })
    }

    
}




