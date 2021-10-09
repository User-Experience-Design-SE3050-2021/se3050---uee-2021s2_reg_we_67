const mongoose = require('mongoose');

var Womanschema = new mongoose.Schema({
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

const Womandb = mongoose.model('womandb', Womanschema);

module.exports = Womandb;