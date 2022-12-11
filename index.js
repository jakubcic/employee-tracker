// import inquirer, mysql2
const inquirer = require('inquirer');
const mysql = require('mysql2');
// require dotenv so we can hide our database credentials
require('dotenv').config();

// connect to database
const db = mysql.createConnection(
    {
        host: 'localhost',
        user: process.env.DB_USER,
        password: process.env.DB_PASSWORD,
        database: process.env.DB_NAME,
    },
    console.log(`Connected to the ${process.env.DB_NAME} database.`)
);

// prompt user for what they would like to do with inquirer

// add functions to perform database queries that are called by the inquirer prompts

// start the application