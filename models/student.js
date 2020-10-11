const sequelize = require('sequelize');
const db = require('./../db/sequelize');

module.exports = db.define('students',{

    id:{
       type: sequelize.INTEGER(11),
       autoIncrement: true,
       allowNull: false,
       primaryKey:true,
    },
    name:sequelize.CHAR(50),
    email:sequelize.CHAR(50),
    password:sequelize.CHAR(255),
    phone:sequelize.CHAR(15),
    status:sequelize.INTEGER(10),
    createdAt:sequelize.DATE,
    updatedAt:sequelize.DATE,

})

