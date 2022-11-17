<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Dynamic Dependent Select Box</title>
  <link rel="stylesheet" href="css/style.css">
</head>
<body>
	
	<div id="main">
		<div id="header">
			<h1>Dynamic Dependent Select Box in<br> PHP & jQuery Ajax</h1>
		</div>
		<div id="content">
		<form action="" method="POST">	
        <label>Course : </label>
        <select id="course">
        	<option value="">Select Course</option>
        </select>
				<br><br>
        <label>Batch : </label>
        <select id="batch">
        	<option value="">Select Batch</option>
        </select><br>
		<span></span>
<br>
		<input type="submit" value="Submit">
      </form>
		</div>
	</div>

<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript">
  $(document).ready(function(){
  	function loadData(type, category_id){
  		$.ajax({
  			url : "load-cs.php",
  			type : "POST",
  			data: {type : type, id : category_id},
  			success : function(data){
  				if(type == "stateData"){
  					$("#batch").html(data);
  				}else{
  					$("#course").append(data);
  				}
  				
  			}
  		});
  	}

  	loadData();

  	$("#course").on("change",function(){
  		var course = $("#course").val();

  		if(course != ""){
  			loadData("stateData", course);
  		}else{
  			$("#batch").html("");
  		}

  		
  	})
  });
</script>
</body>
</html>
