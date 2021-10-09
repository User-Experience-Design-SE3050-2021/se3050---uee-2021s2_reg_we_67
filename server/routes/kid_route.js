const express=require('express');
const route=express.Router()
const controller=require('../controller/kid_controller');

// API
route.get('/api/kids', controller.find);

module.exports= route