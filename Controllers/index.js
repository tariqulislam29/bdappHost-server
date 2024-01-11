const {
  postRegistrationdata,
  getRegistrationdata,
  postloginCheckdata,
  putUpdateProfileData,
  putUpdatePasswordData,
} = require("../Services");
const { createResponse } = require("../Utils/responseGenerate");
const bcrypt = require("bcryptjs");
const {} = require("jsonwebtoken");
const { createTokens } = require("../middlewares/JWT");
/*------------- All Post Routes ---------------*/


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
module.exports.putUpdateProfile = async (req, res, next) => {
  const data = req.body;
  console.log(data);
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
  console.log(data);
  try {
    const result1 = await getRegistrationdata(data.id);
    console.log(result1[0].password);
    const isMatchedPass = await bcrypt.compare(
      data?.password,
      result1[0]?.password
    );
  
    if (!isMatchedPass) {
      res.json(createResponse(null, message = "Older Password Not Match", true));
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
       console.log(result);
        if (result.length <= 0) {
          res.json(createResponse(null,message = "User not Registered",true));
       }
        else {
          if (result[0]?.status == 0) {
             res.json(
               createResponse(null, message = "User Deactivated Please contact with admin.", true)
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

             res.json(createResponse(data1, message = "Successfully Login", false));
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
  console.log(id);
  try {
    const result = await getRegistrationdata(id);
   
    res.json(createResponse(result));

    
  } catch (err) {
    next(err);
  }
};