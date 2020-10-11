const sequelize =    require('sequelize');
const db        =    require('./../db/sequelize');

module.exports = db.define('emails',{
    id:{
        type:sequelize.INTEGER(11),
        autoIncrement:true,
        allowNull:false,
        primaryKey:true,
    },
    email:sequelize.CHAR(50),
    userId:sequelize.INTEGER(11),
    status:sequelize.INTEGER(50),
    createdAt:sequelize.DATE,
    updatedAt:sequelize.DATE,


})

/*(sequelize)=>{

    const Email =
Email.associate = function(models){
    Email.belongsTo(models.User)
}
return Email;
}*/

