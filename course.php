<!DOCTYPE html>
<html>
<head>
	<style type="text/css">
	.form-group{
		margin-left: 33%;
		}
		#a{
			margin-left: 32%;
		}
	</style>
	
	<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  
	<title></title>
</head>
<body>
	<div class="container text-center">
<b>INSERT COURSE</b>
<br><br><br>	
	<form action="" method="post">
	<div class="form-group col-sm-4">
			<label for="courseid">Enter Course Id</label>
		<input type="text" id="courseid" name="courseid" class="form-control">
	</div>

		<div class="form-group col-sm-4">
			<label for="cname">Enter ISBN</label>
		<input type="text" name="coursename" id="cname" class="form-control">
		</div>

		<div class="form-group col-sm-4">
			<label for="deptid">Enter ISBN</label>
		<input type="text" name="deptid" id="deptid" class="form-control">
		</div>
		<button type="submit" class="btn btn-primary" name="sub">INSERT</button>

	</form>


<br><br><br><br>
<b>DELETE COURSES</b>
<br>
<br>
<form action="" method="post">
<div class="form-group col-sm-12" id="a">       
		<select name="delete_col" class="form-control col-sm-4">
			<option value="COURSE_ID">COURSE ID</option>
			<option value="COURSE_NAME">COURSE NAME</option>
			<option value="DEPT_ID">DEPARTMENT ID</option>
		</select>
		</div>
		<br><br>
		<div class="form-group col-sm-4">
		<label for="value">Enter the value</label>
				<input type="text" name="delete_value" id="value" class="form-control">
		</div><br>
				<button type="submit" class="btn btn-primary" name="delete_sub">DELETE</button>
</form>

<br><br><br>
<b>UPDATE COURSE</b>
<br><br>

	Select Column for Update<br>	
		<form action="" method="post">
		<div class="form-group col-sm-12" id="a">       
		<select name="update_col" class="form-control col-sm-4">
			
			<option value="COURSE_ID">COURSE ID</option>
			<option value="COURSE_NAME">COURSE NAME</option>
			<option value="DEPT_ID">DEPARTMENT ID</option>
		</select>
		</div>
		<br><br>
		<div class="form-group col-sm-4">
		<label for="value">Enter the value to update</label>
				<input type="text" name="update_value" id="value" class="form-control">
		</div><br>
Select column for update Condition <br>
<div class="form-group col-sm-12" id="a">       
		<select name="update_cond_col" class="form-control col-sm-4">
			
			<option value="COURSE_ID">COURSE ID</option>
			<option value="COURSE_NAME">COURSE NAME</option>
			<option value="DEPT_ID">DEPARTMENT ID</option>
		</select>
		</div>
		<br><br>
		<div class="form-group col-sm-4">
		<label for="value">Enter the value of update condition</label>
				<input type="text" name="update_cond_value" id="value" class="form-control">
		</div><br>
				<button type="submit" class="btn btn-primary" name="update_sub">UPDATE</button>
	</form>

<br><br><br>
<b>SEARCH FOR BOOKS</b>
<br><br>
	<form action="" method="post">
		<div class="form-group col-sm-12" id="a">       
		<select name="search_col" class="form-control col-sm-4">
			<option value="COURSE_ID">COURSE ID</option>
			<option value="COURSE_NAME">COURSE NAME</option>
			<option value="DEPT_ID">DEPARTMENT ID</option>
		</select>
		</div>
		<br><br>
		<div class="form-group col-sm-4">
		<label for="value">Enter the value</label>
				<input type="text" name="search_value" id="value" class="form-control">
		</div><br>
				<button type="submit" class="btn btn-primary" name="search_sub">SEARCH</button>
	</form>



<?php
extract($_POST);
if(isset($sub))
{
	$conn=mysqli_connect("localhost","root","","dbms1");
		$sql="
	CREATE TABLE COURSE
	(
	  COURSE_ID CHAR(4),
	  COURSE_NAME VARCHAR(20) NOT NULL,
	  DEPT_ID CHAR(3),
	  NO_STUDENTS INT DEFAULT 0,
	  PRIMARY KEY (COURSE_ID),
	  FOREIGN KEY (DEPT_ID) REFERENCES DEPARTMENT(DEPARTMENT_ID)
	  ON UPDATE CASCADE
	  ON DELETE SET NULL,
	  UNIQUE (COURSE_NAME)
	);
	";
	mysqli_query($conn,$sql);

	$sql="INSERT INTO COURSE(COURSE_ID,COURSE_NAME,DEPT_ID) VALUES(
	'$courseid','$coursename','$deptid'
	);
	";
	mysqli_query($conn,$sql);

	$conn->close();
}



extract($_POST);
if(isset($delete_sub))
{
	$conn=mysqli_connect("localhost","root","","dbms1");
	$sql = "DELETE FROM COURSE WHERE $delete_col = '$delete_value' ";
	mysqli_query($conn,$sql);
}

extract($_POST);
if(isset($update_sub))
{
	$conn=mysqli_connect("localhost","root","","dbms1");
	$sql = "UPDATE COURSE SET $update_col = '$update_value' WHERE $update_cond_col = '$update_cond_value' ";
	mysqli_query($conn,$sql);

}

if(isset($search_sub))
{

	$conn=mysqli_connect("localhost","root","","dbms1");
	$sql = "SELECT * FROM COURSE WHERE $search_col = '$search_value' ";
	$res = mysqli_query($conn,$sql);
echo "<br><br>";
echo "<table class='table table-bordered'>
	<thead class='thead-dark'>
	<tr>
	<th>COURSE ID</th>
	<th>COURSE NAME</th>
	<th>DEPARTMENT ID</th>
	<th>NO OF STUDENTS</th>
	</tr>
	</thead>
	";
while($row=mysqli_fetch_assoc($res))				// fetches one row at a time ; 
	{
		echo "<tr>";
		echo "<td>";echo $row['COURSE_ID'];echo "</td>";
		echo "<td>";echo $row['COURSE_NAME'];echo "</td>";
		echo "<td>";echo $row['DEPT_ID'];echo "</td>";
		echo "<td>";echo $row['NO_STUDENTS'];echo "</td>";
		echo "</tr>";
			
	}	
echo "</table></div>";

}




?>

</body>
</html>
