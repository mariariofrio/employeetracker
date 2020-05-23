var mysql = require("mysql");
var inquirer = require("inquirer");
require("dotenv").config()
console.log(process.env.MYSQL_PASSWORD)
var connection = mysql.createConnection({
    host: "localhost",
  
    // Your port; if not 3306
    port: 3306,
  
    // Your username
    user: "root",
  
    // Your password
    password: process.env.MYSQL_PASSWORD,
    database: "employeer_db"
  });
  
connection.connect(function(err) {
    if (err) throw err;
    console.log("connected to db")
    runSearch();
  });
  
  function runSearch(){
      connection.query("SELECT * FROM employeer_db.employees", (err,sult)=>{
          //console.log("1",err)
          console.table(sult)
        })
        doIt()
        //getRoles()
}
function getRoles(){
    connection.query("SELECT title FROM role", (err,sult)=>{
            //console.log("1",err)
            console.log(sult)
            return sult
        })
}
async function doIt(){
    const myChoices= await getRoles()
    console.log("x",myChoices)
    inquirer.prompt([{
        type:"list",
        message: "which job?",
        name: 'role',
        choices: ["a","b"] //my
    }]).then(answers=>console.log(answers))
}