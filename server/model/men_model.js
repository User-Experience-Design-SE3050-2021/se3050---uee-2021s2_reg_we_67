const mongoose = require('mongoose');

var Menschema = new mongoose.Schema({
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

const Mendb = mongoose.model('mendb', Menschema);

module.exports = Mendb;