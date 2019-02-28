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

input[type=text]:focus {
  background-color: #ddd;
  outline: none;
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

<form style="border:1px solid #ccc">
  <div class="container">
   
    <label for="firstName"><b>First Name</b></label>
    <input type="text" placeholder="Enter First Name" id="firstName"/>
    
    <label for="middleName"><b>Middle Name</b></label>
    <input type="text" placeholder="Enter Middle Name" id="middleName"/>

    <label for="lastName"><b>Last Name</b></label>
    <input type="text" placeholder="Enter Last Name" id="lastName"/>

    <div class="clearfix" align="center">
      <button type="button" class="signupbtn" onclick="getFullName()">Generate Full Name</button>
    </div>
    
    <label for="fullName"><b>Full Name</b></label>
    <input type="text" id="fullName" readonly/>
    
  </div>
</form>
<script type="text/javascript">

       function getFullName() {
              var fname = document.getElementById("firstName");
              var lname = document.getElementById("lastName");
              var mName = document.getElementById("middleName");
              var fullname =  document.getElementById("fullName");
              var message = "Please fill out the field in the correct format";
              if(fname.value.match(/^[A-Za-z]+$/)==null){
            	  fname.value="";
            	  fname.placeholder = message;
            	  fullname.value="";
            	  return;
              } else if(lname.value.match(/^[A-Za-z]+$/)==null){
            	  lname.value="";
            	  lname.placeholder = message;
            	  fullname.value="";
            	  return;
              }
              if(mName==""){
                     fullName.value = fname.value + " "+lname.value;
              } else if(mName.value.match(/^[A-Za-z]+$/)==null){
            	  mName.value="";
            	  mName.placeholder = message;
            	  fullname.value="";
            	  return;
              }
              else {
                     fullName.value = fname.value + " "+ mName.value +" "+ lname.value;
              }
       }
</script>

</body>
</html>
