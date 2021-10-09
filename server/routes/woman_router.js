const express=require('express');
const route=express.Router()
const controller=require('../controller/woman_controller');

// API
route.get('/api/womans', controller.find);

module.exports= route