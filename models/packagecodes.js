const sequelize =    require('sequelize');
const db        =    require('../db/sequelize');

module.exports = db.define('packagecodes',{
    id:{
        type:sequelize.INTEGER(11),
        autoIncrement:true,
        allowNull:false,
        primaryKey:true,
    },
    packageId:sequelize.CHAR(50),
    code:sequelize.CHAR(11),
    status:sequelize.INTEGER(50),
    createdAt:sequelize.DATE,
    updatedAt:sequelize.DATE,


})