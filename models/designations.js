
const sequelize =    require('sequelize');
const db        =    require('./../db/sequelize');

module.exports = db.define('designations',{
    id:{
        type:sequelize.INTEGER(11),
        autoIncrement:true,
        allowNull:false,
        primaryKey:true,
    },
    designationName:sequelize.CHAR(50),
    status:sequelize.INTEGER(50),
    createdAt:sequelize.DATE,
    updatedAt:sequelize.DATE,


})