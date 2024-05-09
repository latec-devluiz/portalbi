const mysql = require('mysql2');

const connection = mysql.createConnection({
  host: '77.37.68.185',
  user: 'myluiz',
  database: 'libertas',
 //port: 3306,
  password: '785612'
});

module.exports = connection;