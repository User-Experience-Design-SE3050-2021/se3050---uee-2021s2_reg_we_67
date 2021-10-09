const express = require('express');
const dotenv = require('dotenv');
const morgan = require('morgan');
const bodyparser = require("body-parser");
const path = require('path');
const session = require('express-session');

const connectDB = require('./server/database/connection');

const app = express();

dotenv.config({ path:'config.env'})
const PORT = process.env.PORT || 8080

//middlewares
app.use(express.urlencoded({extended: false}));
app.use(express.json());

app.use(session({
    secret: 'my secret key',
    saveUninitialized: true,
    resave: false,
})
);

app.use((req, res, next) => {
    res.locals.message = req.session.message;
    delete req.session.message;
    next();
});

// log requests
app.use(morgan('tiny'));

// mongodb connection
connectDB();

// parse request to body-parser
app.use(bodyparser.urlencoded({ extended : true}))

// set view engine
app.set("view engine", "ejs")
//app.set("views", path.resolve(__dirname, "views/ejs"))

// load assets
app.use('/css', express.static(path.resolve(__dirname, "assets/css")))
app.use('/js', express.static(path.resolve(__dirname, "assets/js")))
app.use(express.static('uploads'));

//load routers
app.use('/',require('./server/routes/woman_router'))
app.use('/',require('./server/routes/men_router'))
app.use('/',require('./server/routes/kid_router'))
app.use('/',require('./server/routes/home_router'))
app.use('/',require('./server/routes/beauty_router'))
app.use('/',require('./server/routes/electronical_router'))

app.listen(PORT, ()=> { console.log(`Server is running on http://localhost:${PORT}`)});