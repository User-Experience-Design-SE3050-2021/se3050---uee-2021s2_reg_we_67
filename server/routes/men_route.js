const express=require('express');
const route=express.Router()
const controller=require('../controller/men_controller');

// API
route.get('/api/mens', controller.find);

module.exports= route