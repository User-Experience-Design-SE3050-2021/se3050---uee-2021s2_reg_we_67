const express=require('express');
const route=express.Router()
const controller=require('../controller/beauty_controller');

// API
route.get('/api/beautys', controller.find);

module.exports= route