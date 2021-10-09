const mongoose = require('mongoose');

var Beautyschema = new mongoose.Schema({
    name : {
        type: String,
        required: true,
    },
    description : {
        type : String,
        required: true
    },
    price : {
        type : String,
        required: true
    },
    image: {
        type: String,
        required: true,
    },
    rating: {
        type: String,
        required: true,
    },


})

const Beautydb = mongoose.model('beautydb', Beautyschema);

module.exports = Beautydb;