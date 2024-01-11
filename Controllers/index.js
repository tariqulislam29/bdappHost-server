const {postRegistrationdata,getRegistrationdata,postloginCheckdata,} = require("../Services");
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
module.exports.postloginCheck = async (req, res, next) => {
 
  try {
    const data = req.body;
    
      if (!data.email && !data.password) {
        res.json(createResponse(null, "email and password is required", true));
      } else {

    const result = await postloginCheckdata(data.email);
       
         const isMatchedPass = await bcrypt.compare(
           data.password,
           result[0].password
        );
        const token = createTokens(result[0].user_id, result[0].email);
        //  const cookies = require("cookie");
        //  const cookieOptions = {
        //    maxAge: 3600000,
        //    httpOnly: false,
        //    sameSite: "None",
        //    secure: false,
        //  };
        

        //  res.cookie("yourCookieName", "cookieValue", cookieOptions);
        res.cookie("testCookie", "TestValue", {
          maxAge: 3600000,
          httpOnly: false,
          sameSite: "lax",
          path: "/",
        });

        // res.cookie("userId", result[0]?.user_id, {
        //   signed: false,
        //   httpOnly: false,
        //   maxAge: 36000000,
        //   path: "/",
        //   sameSite: "lax",
        //   // domain: "http://127.0.0.1:5173/",
        // });
        
        const data1 = {
          token: token,
          isMatchedPass: isMatchedPass,
        };
       
    res.json(createResponse(data1));


      }
  } catch (err) {
    next(err);
  }
};

/*------------- All get Routes ---------------*/
module.exports.getRegistration = async (req, res, next) => {
 
  try {
    const result = await getRegistrationdata();
    
    res.json(createResponse(result));

    
  } catch (err) {
    next(err);
  }
};