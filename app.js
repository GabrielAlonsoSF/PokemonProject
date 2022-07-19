var express = require('express')
var app = express();
var mysql = require('mysql')
var bodyParser = require("body-parser");


app.set("view engine","ejs")
app.use(bodyParser.urlencoded({extended: true}))
app.use(express.static(__dirname + "/public"));

var connection = mysql.createConnection({
	host: 'localhost',
	user: 'root',
	database: 'Pokemon_Project'
});

//get the requisition and send a response matched to it
app.get("/",function(req,res){
	//Find count of users in DB
	var q = 'SELECT COUNT(*) AS count FROM pokedex';
	connection.query(q,function(error,results){
	if (error) throw error;
    var count = results[0].count;
	//res.send("We have " + count + " users in our db");
	res.render("home_2",{count: count});
	});
    // Respond with that count 	
	
});

app.post('/register',function(req,res){
	var pokemon = {
		name: req.body.name,
		type_1: req.body.type_1,
		type_2: req.body.type_2
	};
	connection.query('INSERT INTO pokedex SET ?', pokemon, function(err, result) {
		if (err) throw err
		res.send("Thanks for registering a new pokemon!")
	});
});


//set the port the app is listening
app.listen(8080,function(){
	console.log('app listening on port 8080!');
});
