var express = require('express');
var router = express.Router();


router.all('/*', function (req, res, next) {
  // res.render('index', { title: 'Express' });
  res.json(req.method);
})

module.exports = router;
