const express = require('express');
const path = require('path');
const morgan = require('morgan');
const mysql = require('mysql');
const myConnection = require('express-myconnection');

const app = express ();

//importing routes
const customerRoutes = require('./routes/customer');
const { urlencoded } = require('express');



// settings para express (framework)
app.set('port', process.env.PORT || 3000);
app.set('view engine', 'ejs');
app.set('views', path.join(__dirname, 'views'));
//Set View
app.get('/asignar_tutoria', (req, res) => {
    res.render('asignar_tutoria', { text: 'Asignacion de Tutorias'})
})
app.get('/solicitar_tutoria', (req, res) => {
    res.render('solicitar_tutoria', { text: 'Solicitar de Tutoria'})
})
app.get('/registro_docente', (req, res) => {
    res.render('registro_docente', { text: 'Registro docente'})
})
app.get('/contacto_docente', (req, res) => {
    res.render('contacto_docente', { text: 'contacto docente'})
})
app.get('/registro_estudiante', (req, res) => {
    res.render('registro_estudiante', { text: 'registro estudiante'})
})
app.get('/contacto_estudiante', (req, res) => {
    res.render('contacto_estudiante', { text: 'contacto estudiante'})
})

//middlewares (peticiones)
app.use(morgan('dev'));
app.use(myConnection(mysql, {
    host: 'localhost',
    user: 'aplicacion',
    password: 'avancepagina',
    port: 3306,
    database: 'a_tutoria'
}, 'single'));
app.use(express.urlencoded({extended: false}));

//routes
app.use('/', customerRoutes);

// statics files
app.use(express.static(path.join(__dirname, 'public')));



//starting the server


app.listen(app.get('port'), () => {
    console.log('Server on port 3000');
})