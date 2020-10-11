const sequelize =    require('sequelize');
const db        =    require('../db/sequelize');

module.exports = db.define('candidatePackages',{
    id:{
        type:sequelize.INTEGER(11),
        autoIncrement:true,
        allowNull:false,
        primaryKey:true,
    },
    candidateId:sequelize.CHAR(50),
    packageId:sequelize.INTEGER(11),
    status:sequelize.INTEGER(50),
    createdAt:sequelize.DATE,
    updatedAt:sequelize.DATE,


})