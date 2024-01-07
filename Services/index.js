const db = require("../Config/db");

module.exports.postCategory = () => {
  

    return new Promise(function (resolve, reject) {
        db.getConnection((error, connection) => {
            if (error) {
                console.error("Error getting database connection:", error.message);
                reject(error);
            } else {
                connection.query("SELECT * FROM `demo`", (queryError, queryResult) => {
                    connection.release(); // Release the connection when done with it

                    if (queryError) {
                        console.error("Error executing query:", queryError.message);
                        reject(queryError);
                    } else {
                        resolve(queryResult);
                    }
                });
            }
        });
    });
};
