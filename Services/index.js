const db = require("../Config/db");
const bcrypt = require('bcryptjs');

// Post Method 
module.exports.postRegistrationdata = async (data) => {
     const hashedPassword = await bcrypt.hash(data.password, 10);
   
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
module.exports.postNewAppdata = async (data) => {
 
  return new Promise(function (resolve, reject) {
    db.getConnection((error, connection) => {
      if (error) {
        console.error("Error getting database connection:", error.message);
        reject(error);
      } else {
        connection.query(
          `INSERT INTO new_app (reg_id, app_id, api_key, sms_keyword, ussd_keyword, delivery_time)
  VALUES ('${data.reg_id}','${data.app_id}','${data.api_key}','${data.sms_keyword}','${data.ussd_keyword}','${data.delivery_time}')`,
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
module.exports.postContentdata = async (data1) => {
  return new Promise(function (resolve, reject) {
    // Create a string of values for SQL insertion
    const values = data1
      .map(
        (data) =>
          `('${data.new_id}', '${data.reg_id}', '${data.date}', '${data.content}')`
      )
      .join(",");

    // Construct the SQL query
    const query = `INSERT INTO new_content( new_id, reg_id, date, content) VALUES ${values}`;

    // Get a connection from the database pool
    db.getConnection((error, connection) => {
      if (error) {
        console.error("Error getting database connection:", error.message);
        reject(error);
      } else {
        // Execute the SQL query
        connection.query(query, (queryError, queryResult) => {
          connection.release(); // Release the connection when done with it

          if (queryError) {
            console.error("Error executing query:", queryError.message);
            reject(queryError);
          } else {
            resolve(queryResult);
          }
        
        })
    }
    });
  });
};

module.exports.putUpdateProfileData = (data) => {
  return new Promise(function (resolve, reject) {
    db.getConnection((error, connection) => {
      if (error) {
        console.error("Error getting database connection:", error.message);
        reject(error);
      } else {
        connection.query(
          `UPDATE registration SET email = ?,name = ?,phone = ?, gender = ?,dob = ?,division = ?,institute = ?,study_level = ? WHERE id = ?
`,
          [
            `${data.email}`,
            `${data.name}`,
            `${data.phone}`,
            `${data.gender}`,
            `${data.dob}`,
            `${data.division}`,
            `${data.institute}`,
            `${data.study_level}`,
            `${data.id}`, // assuming [value-1] is the id
          ],
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
module.exports.putUpdatePasswordData = async (id, password) => {
    const hashedPassword = await bcrypt.hash(password, 10);
   
  return new Promise(function (resolve, reject) {
    db.getConnection((error, connection) => {
      if (error) {
        console.error("Error getting database connection:", error.message);
        reject(error);
      } else {
        connection.query(
          `UPDATE registration SET password = ? WHERE id = ?`,
          [hashedPassword, id],
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
module.exports.putUpdateContentData = async (data) => {
 

  return new Promise(function (resolve, reject) {
    db.getConnection((error, connection) => {
      if (error) {
        console.error("Error getting database connection:", error.message);
        reject(error);
      } else {
        connection.query(
          `UPDATE new_content SET content = ? WHERE id = ?`,
          [data.content, data.id],
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

module.exports.getRegistrationdata =  (id) => {
 
  return new Promise(function (resolve, reject) {
    db.getConnection((error, connection) => {
      if (error) {
        console.error("Error getting database connection:", error.message);
        reject(error);
      } else {
        connection.query(
          `SELECT * FROM registration where id =?`,[id],
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
module.exports.getAllContentdata = (reg_id, id, srtdate, eddate) => {
 
  return new Promise(function (resolve, reject) {
    db.getConnection((error, connection) => {
      if (error) {
        console.error("Error getting database connection:", error.message);
        reject(error);
      } else {
        connection.query(
          `SELECT nc.*, na.app_id, DATE_FORMAT(nc.date, '%d-%m-%Y') AS formatted_date
   FROM new_content nc
   JOIN new_app na ON nc.new_id = na.id
   WHERE nc.date BETWEEN ? AND ?
   AND nc.reg_id = ?
   AND nc.new_id = ?`,
          [srtdate, eddate, reg_id, id],
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
module.exports.getAllAppTodayContentdata = (startDate, endDate, reg_id) => {
  return new Promise(function (resolve, reject) {
    db.getConnection((error, connection) => {
      if (error) {
        console.error("Error getting database connection:", error.message);
        reject(error);
      } else {
        connection.query(
          `SELECT nc.*, na.app_id, DATE_FORMAT(nc.date, '%d-%m-%Y') AS formatted_date
   FROM new_content nc
   JOIN new_app na ON nc.new_id = na.id
   WHERE nc.date BETWEEN ? AND ?
   AND nc.reg_id = ?
   `,
          [startDate, endDate, reg_id],
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
module.exports.getNewAppdata = (id) => {
  return new Promise(function (resolve, reject) {
    db.getConnection((error, connection) => {
      if (error) {
        console.error("Error getting database connection:", error.message);
        reject(error);
      } else {
        connection.query(
          `SELECT * FROM new_app where reg_id =?`,
          [id],
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
module.exports.getCheckLastConDateData = (id, reg_id) => {
  console.log(id, reg_id);
  return new Promise(function (resolve, reject) {
    db.getConnection((error, connection) => {
      if (error) {
        console.error("Error getting database connection:", error.message);
        reject(error);
      } else {
        connection.query(
          `SELECT reg_id,new_id,id,DATE_FORMAT(MAX(date), '%d-%b-%Y') AS formatted_date FROM new_content where reg_id =${reg_id} AND new_id= ${id}`,

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
module.exports.deleteContentData = (id) => {
  return new Promise(function (resolve, reject) {
    db.getConnection((error, connection) => {
      if (error) {
        console.error("Error getting database connection:", error.message);
        reject(error);
      } else {
        connection.query(
          `DELETE FROM new_content WHERE id=?`,
          [id],
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
