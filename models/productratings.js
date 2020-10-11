const sequelize =    require('sequelize');
const db        =    require('./../db/sequelize');

module.exports = db.define('productratings',{
    id:{
        type:sequelize.INTEGER(11),
        autoIncrement:true,
        allowNull:false,
        primaryKey:true,
    },
    productId:sequelize.INTEGER(11),
    rating:sequelize.INTEGER(11),
    status:sequelize.INTEGER(50),
    createdAt:sequelize.DATE,
    updatedAt:sequelize.DATE,


})