
const { postCategory } = require("../Services");
const { createResponse } = require("../Utils/responseGenerate");

/*------------- All Post Routes ---------------*/

// category
module.exports.postCategory = async (req, res, next) => {
    console.log("hitt")
    try {
    //   const { categoryen } = req.body;
    //   if (!categoryen) {
    //     res.json(createResponse(null, "Category name is required", true));
    //   } else {
       
          const result = await postCategory();
         
          res.json(createResponse(result));
       
    //   }
    } catch (err) {
      next(err);
    }
  };