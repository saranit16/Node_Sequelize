

const sequelize =    require('sequelize');
const db        =    require('./../db/sequelize');

module.exports = db.define('productsubcategories',{
    id:{
        type:sequelize.INTEGER(11),
        autoIncrement:true,
        allowNull:false,
        primaryKey:true,
    },
    productcategoryId :sequelize.INTEGER(11),
    subCategoryName :sequelize.CHAR(50),
    status:sequelize.INTEGER(50),
    createdAt:sequelize.DATE,
    updatedAt:sequelize.DATE,


})