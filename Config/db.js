const mysql = require("mysql");

const db = mysql.createPool({
    host: "localhost",
    user: "root",
    password: "",
    database: "bdappsproapp"
});

// common connection
db.getConnection((error, connection) => {
    if (error) {
        console.error("Error connecting to database:", error.message);
    } else {
        console.log("Connected to database successfully");
        connection.release(); // Release the connection when done with it
    }
});

module.exports = db;
