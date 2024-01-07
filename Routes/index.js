const { postCategory } = require("../Controllers");

const router = require("express").Router();


// post routes
router.get("/categories", postCategory);
module.exports = router;