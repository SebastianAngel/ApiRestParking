const router = require('express').Router();

const { Registro } = require('../src/db');

//Mostrar todos los vehiculos-------------------------------------------------------
router.get('/', async(req, res)=>{
    const registros = await Registro.findAll();
    res.json(registros);
});

//Ingresar nuevo vehiculo-----------------------------------------------------------
router.post('/', async(req, res) => {
    const { tipo_vehiculo, placa, tiempo } = req.body;
    console.log({ tipo_vehiculo, placa, tiempo })
    if (tipo_vehiculo !== 'carro' && tipo_vehiculo !== 'moto') {  // Verificar si es carro o moto
        res.status(400).send('Tipo de vehículo inválido');
        return;
    }

        
    const cuposDisponibles = tipo_vehiculo === 'carro' ? 5 : 10; //Asignar los cupos segun el vehiculo ingresado

    if(tipo_vehiculo == 'carro'){
        var count = await Registro.sequelize.query('SELECT COUNT(*) AS total FROM registros WHERE tipo_vehiculo = "carro"') //Contador carros ingresados
        .then(([result]) => {
            const countcarro = result[0].total;
            return countcarro;
        })
        .catch(err => {
            console.error('Error al ejecutar la consulta:', err);
        });
        
        if ( count >= cuposDisponibles) {
            res.status(403).send(`El parqueadero de ${tipo_vehiculo}s está lleno`);
            return;
        }
        const registro =  await Registro.create(req.body)
        res.json(registro);
        console.log('Agregado');


    }else{
        var count = await Registro.sequelize.query('SELECT COUNT(*) AS total FROM registros WHERE tipo_vehiculo = "moto"')//Contador motos ingresadas
            .then(([result]) => {
                const countmoto = result[0].total;
                return countmoto;
            })
            .catch(err => {
                console.error('Error al ejecutar la consulta:', err);
                return;
            });
        
            if ( count >= cuposDisponibles) {
                res.status(403).send(`El parqueadero de ${tipo_vehiculo}s está lleno`);
                return;
            }
            const registro = await Registro.create(req.body)
            res.json(registro);
            console.log('Agregado');

        }


    
});

//Actualizar Registro-----------------------------------------------------
router.put('/:placa', async(req, res)=>{
    await Registro.update(req.body, {
        where: {id: req.params.placa}
    });
    res.json({success: 'Se ha modificado'});
});


//Eliminar Registro------------------------------------------------------
router.delete('/:placa', async(req, res)=>{
    await Registro.destroy({
        where: {id: req.params.placa}
    });
    res.json({success: 'Se ha eliminado con exito'});
});

module.exports = router;