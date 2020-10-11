const sequelize = require('sequelize');
const db        = require('./../db/sequelize');

module.exports = db.define('users',{   
        id:{
        type:sequelize.INTEGER(11),
            autoIncrement: true,
            allowNull: false,
            primaryKey:true,
        },
        username:sequelize.CHAR(50),
        name:sequelize.CHAR(50),
        status:sequelize.INTEGER(11),
        createdAt:sequelize.DATE,
        updatedAt:sequelize.DATE,
});

/*(sequelize)=>{
/*User.associate = (models)=>{
    User.hasOne(models.email);
}
return User;
}*/



