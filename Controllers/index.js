
const {
  postRegistrationdata,
  getRegistrationdata,
  postloginCheckdata,
} = require("../Services");
const { createResponse } = require("../Utils/responseGenerate");

/*------------- All Post Routes ---------------*/


module.exports.postRegistration = async (req, res, next) => {
  const data = req.body;
  

  try {
    //   const { categoryen } = req.body;
    //   if (!categoryen) {
    //     res.json(createResponse(null, "Category name is required", true));
    //   } else {

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
console.log(result[0]);
    // res.json(createResponse(result));

      }
  } catch (err) {
    next(err);
  }
};
/*------------- All get Routes ---------------*/
module.exports.getRegistration = async (req, res, next) => {
 
  try {
    const result = await getRegistrationdata();
    console.log(result);
    res.json(createResponse(result));

    
  } catch (err) {
    next(err);
  }
};