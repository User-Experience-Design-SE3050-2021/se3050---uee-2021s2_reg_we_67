const express=require('express');
const route=express.Router()
const controller=require('../controller/home_controller');

// API
route.get('/api/homes', controller.find);

module.exports= route