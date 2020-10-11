const express = require('express');
const router = express.Router();

const Employee = require('./../models/employees');
const Salary = require('./../models/salaries');
const Department = require('./../models/departments');
const Designation = require('./../models/designations');

// ASSOCIATIONS
/*main table*/      /* foreign key table*/
Employee.hasOne(Salary)
Salary.belongsTo(Employee)
Department.hasOne(Employee)
Employee.belongsTo(Department)
Designation.hasOne(Employee)
Employee.belongsTo(Designation)



router.get('/assoc', (req, res) => {


    Employee.findAll({
        attributes:['id','name']
        ,include: [
            { model :  Salary  , attributes:['salary']    },
            { model :  Department , attributes:['departName']   },
            { model :  Designation , attributes:['designationName']},
        ]
    }).then((data) => {
            res.send({ data: data });
        }).catch((err) => { console.log(err) })

})

module.exports = router;