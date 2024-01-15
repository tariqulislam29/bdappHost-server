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
  getAllContent,
  deleteContent,
  putUpdateContent,
  getAllAppTodayContent,
  getallcontenthome,
} = require("../Controllers");
const multer = require("multer");
const xlsx = require("xlsx");

const router = require("express").Router();
const storage = multer.memoryStorage();
const upload = multer({ storage: storage });
// get routes
// router.get("/getregistration", getRegistration);
router.get("/getregistration", getRegistrationByID);
router.get("/getallcontent", getAllContent);
router.get("/getallAppTcontent", getAllAppTodayContent);
router.get("/getallcontenthome", getallcontenthome);
router.get("/getnewapp", getNewApp);
router.get("/getCheckLastConDate", getCheckLastConDate);
// post routes
router.post("/registration", postRegistration);
router.post("/postContent", postContent);
router.post("/newApp", postNewApp);
router.post("/excelfileupload", upload.single('file'), postExcelContent);
router.post("/loginCheck", postloginCheck);
// update routes 
router.put("/updateProfile", putUpdateProfile);
router.put("/updatePassword", putUpdatePassword);
router.put("/updateContent", putUpdateContent);
// delete routes 
router.delete("/deleteContent", deleteContent);

module.exports = router;