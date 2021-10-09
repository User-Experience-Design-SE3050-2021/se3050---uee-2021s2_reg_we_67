const mongoose = require('mongoose');

var Electronicalschema = new mongoose.Schema({
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

const Electronicaldb = mongoose.model('electronicaldb', Electronicalschema);

module.exports = Electronicaldb;