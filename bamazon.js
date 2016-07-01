
var mysql=require('mysql');
var inquirer=require('inquirer');

var connection=mysql.createConnection({
	host:"localhost",
	port: 3306,
	user:"root", //Your username//
	password:"", //Your password//
	database:"Bamazon"})

connection.connect(function(){
	showProducts()})


var showProducts=function(){
	connection.query('SELECT * FROM products',function(err,res){
		var space="\t";
		console.log("ID"+space+"Name"+space+"Department"+space+"Price"+space+"Stock Quantity")
		for(var i=0;i<res.length;i++){

			console.log(res[i].id+space+res[i].ProductName+space+res[i].DepartmentName+space+res[i].Price+space+res[i].StockQuantity);}
		prompter(res);})}


var prompter=function(res){
		inquirer.prompt([
		{type:'input',
		name:'choice',
		message:'What do you want to buy?'}]).then(function(val){
		var present=false;
		for(var i=0;i<res.length;i++){
			if(res[i].ProductName==val.choice){
				var present=true;
				var product=val.choice;
				var id=i;
				
				inquirer.prompt([
					{type:'input',
					name:'quant',
					message:"How many do you want?"}]).then(function(val){
					if((res[id].StockQuantity-val.quant)>0){
						connection.query("UPDATE products SET StockQuantity='"+(res[id].StockQuantity-val.quant)+"' WHERE ProductName='"+product+"'", function(err, res2){
							console.log("PRODUCT BOUGHT!");
							showProducts();})}
					else{
						console.log("NOT ENOUGH!");
						prompter(res);}})}
			
			if(val.choice=="Q"||val.choice=="q"){process.exit()}}
		
		if(i==res.length&&present==false){
			console.log("We don't sell that...");
			prompter(res);}
		})}