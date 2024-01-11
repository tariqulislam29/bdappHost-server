const db = require("../Config/db");
const bcrypt = require('bcryptjs');

// Post Method 
module.exports.postRegistrationdata = async (data) => {
     const hashedPassword = await bcrypt.hash(data.password, 10);
    console.log(hashedPassword);
  return new Promise(function (resolve, reject) {
    db.getConnection((error, connection) => {
      if (error) {
        console.error("Error getting database connection:", error.message);
        reject(error);
      } else {
        connection.query(
          `INSERT INTO registration( name, email, phone,gender,dob, division,institute,study_level,password) VALUES ('${data.name}','${data.email}','${data.phone}','${data.gender}','${data.dob}','${data.division}','${data.institute}','${data.study_level}','${hashedPassword}')`,
          (queryError, queryResult) => {
            connection.release(); // Release the connection when done with it

            if (queryError) {
              console.error("Error executing query:", queryError.message);
              reject(queryError);
            } else {
              resolve(queryResult);
            }
          }
        );
      }
    });
  });
};

// Get Method 

module.exports.getRegistrationdata =  () => {
 
  return new Promise(function (resolve, reject) {
    db.getConnection((error, connection) => {
      if (error) {
        console.error("Error getting database connection:", error.message);
        reject(error);
      } else {
        connection.query(
          `SELECT * FROM registration`,
          (queryError, queryResult) => {
            connection.release(); // Release the connection when done with it

            if (queryError) {
              console.error("Error executing query:", queryError.message);
              reject(queryError);
            } else {
              resolve(queryResult);
            }
          }
        );
      }
    });
  });
};
module.exports.postloginCheckdata = (data) => {
  return new Promise(function (resolve, reject) {
    db.getConnection((error, connection) => {
      if (error) {
        console.error("Error getting database connection:", error.message);
        reject(error);
      } else {
        connection.query(
          `SELECT * FROM registration where email=?`,
          [data],
          (queryError, queryResult) => {
            connection.release(); // Release the connection when done with it

            if (queryError) {
              console.error("Error executing query:", queryError.message);
              reject(queryError);
            } else {
              resolve(queryResult);
            }
          }
        );
      }
    });
  });
};
