const {
  postRegistrationdata,
  getRegistrationdata,
  postloginCheckdata,
  putUpdateProfileData,
  putUpdatePasswordData,
  postNewAppdata,
  getNewAppdata,
  postContentdata,
  getCheckLastConDateData,
} = require("../Services");
const { createResponse } = require("../Utils/responseGenerate");
const bcrypt = require("bcryptjs");
const {} = require("jsonwebtoken");
const { createTokens } = require("../middlewares/JWT");
const xlsx = require("xlsx");
const { parse, format } = require("date-fns");
/*------------- All Post Routes ---------------*/


module.exports.postExcelContent = async (req, res, next) => {
  
  const { reg_id } = req.headers;
 const buffer = req.file.buffer;
 const workbook = xlsx.read(buffer, { type: "buffer" });

 // Assuming only one sheet is present
 const sheet = workbook.Sheets[workbook.SheetNames[0]];

 // Convert sheet data to JSON

const data = xlsx.utils.sheet_to_json(sheet, { raw: false });
console.log(data);
// Function to convert Excel serial number to Date object
const excelDateFormatToDate = (excelDateFormat) => {
  const [month, day, year] = excelDateFormat.split("/");
  const parsedDate = parse(`${month}/${day}/20${year}`, "M/d/yyyy", new Date());
  return parsedDate;
};

// Format date in the desired output format ('YYYY-MM-DD')
const formattedData = data.map((row) => {
  // Assuming the date is in a column named 'date'
  if (row.date) {
    row.date = format(excelDateFormatToDate(row.date), "yyyy-MM-dd");
  }
  row.reg_id = parseInt(reg_id);
  return row;
});

console.log(formattedData);
  try {
     const result = await postContentdata(formattedData);
     res.json(createResponse(result));
     
  } catch (err) {
    next(err);
  }
};
module.exports.postRegistration = async (req, res, next) => {
  const data = req.body;
  

  try {
   
    const result = await postRegistrationdata(data);

    res.json(createResponse(result));

    //   }
  } catch (err) {
    next(err);
  }
};



module.exports.postContent = async (req, res, next) => {
  const data = req.body;
console.log(data);
  try {
    
  
    const result = await postContentdata(data);
     res.json(createResponse(result));
  
  

  

    //   }
  } catch (err) {
    next(err);
  }
};




module.exports.postNewApp = async (req, res, next) => {
  const data = req.body;

  try {
    const result1 = await getNewAppdata(data.reg_id);
    const isObjectInArray = result1.some((item) => item.app_id === data.app_id);

   
    if (isObjectInArray) {
         res.json(
           createResponse(null, "This App id has been already installed", true)
         );
    }
    else {
        const result = await postNewAppdata(data);
       
        res.json(createResponse(result));
    }
  

    //   }
  } catch (err) {
    next(err);
  }
};
module.exports.putUpdateProfile = async (req, res, next) => {
  const data = req.body;

  try {
    const result = await putUpdateProfileData(data);

    res.json(createResponse(result));

    //   }
  } catch (err) {
    next(err);
  }
};
module.exports.putUpdatePassword = async (req, res, next) => {
  const data = req.body;
 
  try {
    const result1 = await getRegistrationdata(data.id);
    
    const isMatchedPass = await bcrypt.compare(
      data?.password,
      result1[0]?.password
    );
  
    if (!isMatchedPass) {
      res.json(createResponse(null,"Older Password Not Match", true));
    }
    else {
      const result = await putUpdatePasswordData(data.id, data.newpassword);
      res.json(createResponse(result));
    }
   

   
  } catch (err) {
    next(err);
  }
};
module.exports.postloginCheck = async (req, res, next) => {
 
  try {
    const data = req.body;
    
      if (!data.email && !data.password) {
        res.json(createResponse(null, "email and password is required", true));
      } else {

        const result = await postloginCheckdata(data.email);
     
        if (result.length <= 0) {
          res.json(createResponse(null,"User not Registered",true));
       }
        else {
          if (result[0]?.status == 0) {
             res.json(
               createResponse(null,"User Deactivated Please contact with admin.", true)
             );
          }
          else {
             const isMatchedPass = await bcrypt.compare(
               data?.password,
               result[0]?.password
            );
            
             const token = createTokens(result[0].id, result[0].email);

             const data1 = {
               token: token,
               isMatchedPass: isMatchedPass,
             };

             res.json(createResponse(data1,"Successfully Login", false));
          }
          
        }


      }
  } catch (err) {
    next(err);
  }
};

/*------------- All get Routes ---------------*/
module.exports.getRegistrationByID = async (req, res, next) => {
  const { id } = req.headers;
 
  try {
    const result = await getRegistrationdata(id);
   
    res.json(createResponse(result));

    
  } catch (err) {
    next(err);
  }
};
module.exports.getNewApp = async (req, res, next) => {
  const { id } = req.headers;

  try {
    const result = await getNewAppdata(id);

    res.json(createResponse(result));
  } catch (err) {
    next(err);
  }
};
module.exports.getCheckLastConDate = async (req, res, next) => {
  const { id,reg_id } = req.headers;
// console.log(id, reg_id);
  try {
    const result = await getCheckLastConDateData(
      parseInt(id),
      parseInt(reg_id)
    );
//  console.log(result);
    res.json(createResponse(result));
  } catch (err) {
    next(err);
  }
};