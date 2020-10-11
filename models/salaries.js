const sequelize =    require('sequelize');
const db        =    require('./../db/sequelize');

module.exports = db.define('salaries',{
    id:{
        type:sequelize.INTEGER(11),
        autoIncrement:true,
        allowNull:false,
        primaryKey:true,
    },
    employeeId:sequelize.INTEGER(50),
    salary:sequelize.INTEGER(11),
    status:sequelize.INTEGER(50),
    createdAt:sequelize.DATE,
    updatedAt:sequelize.DATE,


})