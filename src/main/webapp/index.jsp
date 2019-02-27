<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<style>
body {font-family: Arial, Helvetica, sans-serif;
display:flex;
align-item:center;
justify-content:center;}
* {box-sizing: border-box}


/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

/* Set a style for all buttons */

button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

button:hover {
  opacity:1;
}

/* Float signup buttons and add an equal width */
.signupbtn {
  float: left;
  width: 50%;
}

/* Add padding to container elements */
.container {
  padding: 16px;
}

/* Clear floats */
 .clearfix::after {
  content: "";
  clear: both;
  display: table;
} 

/* Change styles for signup button on extra small screens */
@media screen and (max-width: 300px) {
  .signupbtn {
     width: 100%;
  }
}
</style>
<body>

<form style="border:1px solid #ccc" id="myForm">
  <div class="container">
   
    <label for="firstName"><b>First Name</b></label>
    <input type="text" placeholder="Enter First Name" id="firstName" pattern="[A-Za-z]+"/>
    
    <label for="middleName"><b>Middle Name</b></label>
    <input type="text" placeholder="Enter Middle Name" id="middleName" pattern="[A-Za-z]+"/>

    <label for="lastName"><b>Last Name</b></label>
    <input type="text" placeholder="Enter Last Name" id="lastName" pattern="[A-Za-z]+" required="required"/>

	<div class="clearfix" align="center">
      <button type="submit" class="signupbtn" >Submit</button>
    </div>
    
    <label for="fullName"><b>Full Name</b></label>
    <input type="text" id="fullName" readonly>
    
  </div>
</form>
<script type="text/javascript">
document.getElementById("myForm").onsubmit = function() {getFullName()};
setTimeout(location.reload.bind(location), 100000);
	function getFullName() {
		var fname = document.getElementById("firstName").value;
		var lname = document.getElementById("lastName").value;
		if(fname==""){
			document.getElementById("firstName").placeholder = "Please fill out this field";
			return;	
		} else if(lname==""){
			document.getElementById("lastName").placeholder = "Please fill out this field";
			return;	
		}
		var mName = document.getElementById("middleName").value;
		var fullName = "";
		if(mName==""){
			fullName += fname + " "+lname;
		} else {
			fullName += fname + " "+ mName +" "+ lname;
		}
		document.getElementById("fullName").value = fullName;
		
	}
</script>

</body>
</html>
