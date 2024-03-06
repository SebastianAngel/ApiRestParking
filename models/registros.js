module.exports = (sequelize, type)=>{        //Modelo de la tabla registros con sus atributos
    return sequelize.define('registro', {
        placa: {
            type: type.STRING(6),
            primaryKey: true,
        },
        tipo_vehiculo: type.STRING(10),
        tiempo: type.DATE
    })
}