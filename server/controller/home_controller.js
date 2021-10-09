var Homedb = require('../model/home_model');

const fs = require('fs');



// retrieve and return all home and lifestyle/ retrive and return a single home and lifestyle
exports.find = (req, res)=>{

    if(req.query.id){
        const id = req.query.id;

        Homedb.findById(id)
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
        Homedb.find()
            .then(home => {
                res.send(home)
            })
            .catch(err => {
                res.status(500).send({ message : err.message || "Error Occurred while retriving product information" })
            })
    }

    
}




