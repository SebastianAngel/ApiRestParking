const Sequelize = require('sequelize');

const RegistroModel = require('../models/registros');

const sequelize = new Sequelize('parqueadero', 'root', '1234', {   //Coneccion con la base de datos y creacion de la tabla en base al modelo registros
    host: 'localhost',
    dialect: 'mysql'
});

const Registro = RegistroModel(sequelize, Sequelize);

sequelize.sync({force: false})
    .then(() =>{
        console.log('Tablas sincronizadas')
    });

module.exports={
    Registro
}