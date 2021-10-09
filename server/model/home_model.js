const mongoose = require('mongoose');

var Homeschema = new mongoose.Schema({
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

const Homedb = mongoose.model('homedb', Homeschema);

module.exports = Homedb;