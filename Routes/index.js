const {
  postRegistration,
  getRegistration,
  postloginCheck,
} = require("../Controllers");

const router = require("express").Router();

// get routes
// router.get("/getregistration", getRegistration);
router.get("/getregistration", getRegistration);
// post routes
router.post("/registration", postRegistration);
router.post("/loginCheck", postloginCheck);

module.exports = router;