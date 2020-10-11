const sequelize =    require('sequelize');
const db        =    require('./../db/sequelize');

module.exports = db.define('packages',{
    id:{
        type:sequelize.INTEGER(11),
        autoIncrement:true,
        allowNull:false,
        primaryKey:true,
    },
    packageName:sequelize.CHAR(50),
    cost:sequelize.INTEGER(11),
    status:sequelize.INTEGER(50),
    createdAt:sequelize.DATE,
    updatedAt:sequelize.DATE,
});