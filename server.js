const express = require("express");
const bodyParser = require("body-parser");
const fileUpload = require("express-fileupload");
const session = require('express-session');

const app = express();

app.engine("express", express)
app.set('view engine', 'ejs');
app.use(bodyParser.urlencoded({ extended: true }));
app.use(express.static(__dirname + "/public"));
app.use('/js', express.static('public/js'));
app.use(express.json());
app.use(fileUpload({
    limits: { fileSize: 50 * 1024 * 1024 }
}));

// Middleware for sessions
app.use(session({
    secret: 'your_secret_key',
    resave: true,
    saveUninitialized: true,
    cookie: { secure: false }
}));

// Routes
const resepRoute = require("./routes/resepRoute");
const authRoute = require("./routes/authRoute");
const profileRoute = require("./routes/profileRoute");
const pages = require("./routes/pages");

// Routes
app.use('/', pages)
app.use('/resep', resepRoute);
app.use('/auth', authRoute);
app.use('/profile', profileRoute);

// Start the server
app.listen(4000, function () {
    console.log("Listening to http://localhost:4000");
});