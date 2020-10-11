
const sequelize =    require('sequelize');
const db        =    require('./../db/sequelize');

module.exports = db.define('productcategories',{
    id:{
        type:sequelize.INTEGER(11),
        autoIncrement:true,
        allowNull:false,
        primaryKey:true,
    },
    categoryName:sequelize.CHAR(50),
    status:sequelize.INTEGER(50),
    createdAt:sequelize.DATE,
    updatedAt:sequelize.DATE,


})