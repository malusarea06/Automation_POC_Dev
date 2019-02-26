<html>
<body>
<h2>User Information</h2>

<form name = "form1">
First name:<br>
<input type="text" id ="firstname">
<br>
Last name:<br>
<input type="text" id ="lastname" onblur="getFullName()" />
<br>
Full name:<br>
<input type="text" id="fullName">
</form>
<script type="text/javascript">
function getFullName(){
	document.getElementById("fullName").value = document.getElementById("firstname").value + 
	document.getElementById("lastname").value;	
}
</script>
</body>
</html>
