const sequelize =    require('sequelize');
const db        =    require('./../db/sequelize');

module.exports = db.define('employees',{
    id:{
        type:sequelize.INTEGER(11),
        autoIncrement:true,
        allowNull:false,
        primaryKey:true,
    },
    name:sequelize.CHAR(50),
    departmentId:sequelize.INTEGER(11),
    designationId:sequelize.INTEGER(11),
    status:sequelize.INTEGER(50),
    createdAt:sequelize.DATE,
    updatedAt:sequelize.DATE,


})

const test = ()=>{

    return 'value 1';
}

const single = 'single Value';


/*module.exports = {

    employeeCall  : employees,
    //testcall   : test,
    //singlecall : single,

}*/