const express     = require('express');
const app         = express();
const PORT        = 3038;
const bodyParser  = require('body-parser'); 
app.use(bodyParser.json());

const student =  require('./controllers/students');
const candidate =  require('./controllers/candidates');
const employee1 =  require('./controllers/employee_assoc');
const products =  require('./controllers/products');
app.use('/student',student);
app.use('/candidate',candidate);
app.use('/employee',employee1);
app.use('/products',products);


app.listen(PORT,()=>{   console.log('Server running at ', PORT) })