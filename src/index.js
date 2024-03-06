const express = require('express');
const bodyParser = require('body-parser');
const apiRouter  = require('../routes/registros');


const app = express();

require('./db');

app.set('port', process.env.PORT || 3000);

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: true}));

app.use('/registros', apiRouter);

app.listen(app.get('port'), () =>{
    console.log('server running on port', app.get('port'));
});