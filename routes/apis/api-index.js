var express = require('express');
var router = express.Router();

router.use('/login', require('./loginApi'));
router.use('/logout', require('./logoutApi'));
router.use('/update', require('./update'));
router.use('/apiUpdate', require('./apiUpdate'));
router.use('/apiInsert', require('./apiInsert'));
router.use('/mail', require('./mailApi'));
router.use('/apiDelete', require('./apiDelete'));
router.use('/data', require('./dataApi'));
router.use('/addFaculty', require('./new-faculty'))

module.exports = router;
