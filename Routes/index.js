const {
  postRegistration,
  getRegistrationByID,
  postloginCheck,
  putUpdateProfile,
  putUpdatePassword,
  postNewApp,
  getNewApp,
  postContent,
  getCheckLastConDate,
  postExcelContent,
} = require("../Controllers");
const multer = require("multer");
const xlsx = require("xlsx");

const router = require("express").Router();
const storage = multer.memoryStorage();
const upload = multer({ storage: storage });
// get routes
// router.get("/getregistration", getRegistration);
router.get("/getregistration", getRegistrationByID);
router.get("/getnewapp", getNewApp);
router.get("/getCheckLastConDate", getCheckLastConDate);
// post routes
router.post("/registration", postRegistration);
router.post("/postContent", postContent);
router.post("/newApp", postNewApp);
router.post("/excelfileupload", upload.single('file'), postExcelContent);

router.put("/updateProfile", putUpdateProfile);
router.put("/updatePassword", putUpdatePassword);
router.post("/loginCheck", postloginCheck);

module.exports = router;