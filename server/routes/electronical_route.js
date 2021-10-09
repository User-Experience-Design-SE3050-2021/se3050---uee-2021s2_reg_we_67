const express=require('express');
const route=express.Router()
const controller=require('../controller/electronical_controller');

// API
route.get('/api/electronicals', controller.find);

module.exports= route