const sequelize = require('sequelize');
const db_connection = new sequelize('student', 'root', '',
    {
        host: '127.0.0.1',
        dialect: 'mysql',
        operatorsAliases: false,
    });
try {
    db_connection.authenticate();
    console.log('Sequelize DB ocnnected');
} catch (error) {
    console.error('Unable to connect to the database:', error);
}
module.exports = db_connection;