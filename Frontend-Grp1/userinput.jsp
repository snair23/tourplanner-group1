<!DOCTYPE html>  
<html>  
<head>  
<meta name="viewport" content="width=device-width, initial-scale=1">  
<style>  
body{  
  font-family: Calibri, Helvetica, sans-serif;  
  background-color: pink;  
}  
.container {  
    padding: 50px;  
  background-color: lightblue;  
}  
  
input[type=text], input[type=password], textarea {  
  width: 100%;  
  padding: 15px;  
  margin: 5px 0 22px 0;  
  display: inline-block;  
  border: none;  
  background: #f1f1f1;  
}  
input[type=text]:focus, input[type=password]:focus {  
  background-color: orange;  
  outline: none;  
}  
div {  
            padding: 10px 0;  
         }  
hr {  
  border: 1px solid #f1f1f1;  
  margin-bottom: 25px;  
}  
.registerbtn {  
  background-color: #4CAF50;  
  color: white;  
  padding: 16px 20px;  
  margin: 8px 0;  
  border: none;  
  cursor: pointer;  
  width: 100%;  
  opacity: 0.9;  
}  
.registerbtn:hover {  
  opacity: 1;  
}  
</style>  
</head>  
<body>  
<form>  
  <div class="container">  
  <center>  <h1>Book Package</h1> </center>  
  <hr>  
  <label> Name </label>   
<input type="text" name="name" placeholder= "Name" size="15" required />   
<label> No of People: </label>    
<input type="text" name="people" placeholder="People" size="15"required />   
<div>  
<label>   
Packages :  
</label>   
  
<select>   
<option value=" Majestic Maharashtra"> Majestic Maharashtra</option>  
<option value=" Upbeat Uttarakhand"> Upbeat Uttarakhand</option>  
<option value=" Royal Rajasthan"> Royal Rajasthan</option>  
<option value="Joyful J&K">Joyful J&K</option>   
<option value="Klassic Kerala">Klassic Kerala</option>   
</select>  
</div>  
<label>   
<button type= "submit" class= "Bookbtn">Submit</button>
</form>  
</body>  
</html>  