const express = require('express');
const router = express.Router();
const student = require('./../models/student');
const UsersModel = require('./../models/users');
const EmailModel = require('./../models/email');  
const bcrypt = require('bcrypt');

UsersModel.hasMany(EmailModel/*,{ primaryKey: 'id'}*/);
EmailModel.belongsTo(UsersModel/*,{  foreignKey: 'userId'}*/);

router.get('/test',(req,res)=>{

    EmailModel.findAll({
        include :{
            model:UsersModel
        },
        //attributes :['id','name','username']
    }).then((result)=>{
         res.send(result);
    }).catch((err)=>{ console.log(err)});


})

router.post('/registration', async (req, res) => {
    let body = req.body;
    student.findOne({
        where: {
            email: body.email,
            status: 1
        }
    }).then((email) => {
        // EMAIL ALLREADY EXISTING CHECK
        if (email) {
            res.status(500).send({
                message: 'email already has been registered in database',
                status: 'failed'
            });
        } else {
            student.create(
                {
                    name: body.name,
                    email: body.email,
                    password: bcrypt.hashSync(body.password, 10),
                    phone: body.phone,
                    status: 1
                }
            ).then((student) => {

                res.status(200).send({
                    message: 'student created successfully',
                    status: 'success'
                });
            }).catch((err) => {
                res.status(500).send({
                    message: 'something went wrong',
                    status: 'failed',
                    error: err
                })
            })
        }
    }).catch((err) => {
        res.status(500).send({
            message: 'something went wrong',
            status: 'failed',
            error: err
        })
    })
})

router.post('/login', (req, res) => {

    let email = req.body.email;
    let password = req.body.password;
    student.findOne({
        where: {
            email: email,
            status: '1'
        },
    }).then((student) => {
        if (student) {
            if(bcrypt.compareSync(password, student.password)) {
                res.send({
                    message: 'sucess',
                    status: true,
                    data: { id: student.id, name: student.name, email: student.email, phone: student.phone }
                });
            } else {
                res.send({
                    message: 'You have entered a wrong password'
                });
            }
        } else {
            res.send({
                message: 'You have entered a wrong email'
            });
        }
    }).catch((err) => {
        res.send({
            message: 'Something Went Wrong',
            error: err
        });
    })
})


module.exports = router;