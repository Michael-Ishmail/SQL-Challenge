const mysql = require('mysql2')
const inquirer = require('Inquirer')
const Connection = require('mysql2/typings/mysql/lib/Connection')
const Choices = require('inquirer/lib/objects/choices')
const { allowedNodeEnvironmentFlags } = require('process')
require('console.table')

const app = mysql.createConnection({
    host: 'localhost',
    port: 3306,
    user: 'root',
    password: 'password',
    database: 'employeeDB'
})

Connection.connect(function (err) {
    if (err) {console.log(err)};
    mainMenu()
})

function mainMenu() {
    inquirer

    .prompt({
        type: 'list',
        name: 'task',
        message: "Select an option.",
        Choices: [
            "View Employees",
            "View Employees by Department",
            "Add Employee",
            "Delete Employee",
            "Update Employee Information",
            "Add role",
        ]
    })

    .then(function ({ menu }) {
        switch (menu) {
            case "View Employees":
                viewEmployees()
                break;
            
            case "View Employees by Department":
                viewEmployeeDepartment()
                break;

            case "Add Employee":
                addEmployee()
                break;
            
            case "Delete Employee":
                deleteEmployee()
                break;

            case "Update Employee Information":
                updateEmployee()
                break;
            
            case "Add Role":
                addRole()
                break;
        }
    })
}

function viewEmployees() {
    var query = 
    `SELECT e.id, e.first_name, e.last_name, r.title, d.name AS department, r.salary, CONCAT(m.first_name, ' ', m.last_name) AS manager
    FROM employee e
    LEFT JOIN role r
    ON e.role_id = r.id
    LEFT JOIN department d
    ON d.id = r.department_id
    LEFT JOIN employee m
    ON m.id = e.manager_id`

    Connection.query(query, function (err, res) {
        if (err) {console.log(err)}

        console.table(res)
        mainMenu()
    })
}