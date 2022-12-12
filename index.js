// import inquirer, mysql2
const inquirer = require("inquirer");
const mysql = require("mysql2");
// require dotenv so we can hide our database credentials
require("dotenv").config();

// connect to database
const db = mysql.createConnection(
  {
    host: "localhost",
    user: process.env.DB_USER,
    password: process.env.DB_PASSWORD,
    database: process.env.DB_NAME,
  },
  console.log(`Connected to the ${process.env.DB_NAME} database.`)
);

// prompt user for what they would like to do with inquirer
const init = () => {
  inquirer
    .prompt({
      name: "action",
      type: "list",
      message: "Please make a selection:",
      choices: [
        "View departments",
        "View roles",
        "View employees",
        "Add department",
        "Add role",
        "Add employee",
        "Update employee role",
        "Exit",
      ],
    })
    .then((answer) => {
      switch (answer.action) {
        case "View departments":
          viewDepartments();
          break;

        case "View roles":
          viewRoles();
          break;

        case "View employees":
          viewEmployees();
          break;

        case "Add department":
          addDepartment();
          break;

        case "Add role":
          addRole();
          break;

        case "Add employee":
          addEmployee();
          break;

        case "Update employee role":
          updateEmployeeRole();
          break;

        case "Exit":
          db.end();
          break;

        default:
          console.log(`Unsupported action: ${answer.action}`);
          break;
      }
    });
};

// add functions to perform database queries that are called by the inquirer prompts

// start the application
init();
