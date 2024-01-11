const {
  postRegistration,
  getRegistrationByID,
  postloginCheck,
  putUpdateProfile,
  putUpdatePassword,
} = require("../Controllers");

const router = require("express").Router();

// get routes
// router.get("/getregistration", getRegistration);
router.get("/getregistration", getRegistrationByID);
// post routes
router.post("/registration", postRegistration);
router.put("/updateProfile", putUpdateProfile);
router.put("/updatePassword", putUpdatePassword);
router.post("/loginCheck", postloginCheck);

module.exports = router;