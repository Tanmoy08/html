<html>
<head><title>Details of student</title></head>
<body>
<?php
$con=mysqli_connect("localhost","root","") or die("mysql error");
mysqli_select_db($con,"Tanmoy") or die("database not found");
$n=$_POST['name'];
$add1=$_POST['addr1'];
$add2=$_POST['addr2'];
$email=$_POST['email'];
$rs=null;
if(isset($_POST['submit']))
{
if($n==null or $add1==null)
{
	echo "Invalid input or fields are empty";
	echo "<a href='11html.html'>go back to input page</a>";     
}
else
{
	$q="insert into details values('".$n."','".$add1."','".$add2."','".$email."')";
	$rs=mysqli_query($con,$q);
	if($rs)
		echo "data inserted successfully";
	else
		echo "data insertion error";
	echo "<br/>";
	echo "<a href='11html.html'>go back to input page</a>";	
}
}
if(isset($_POST['submit1']))
{
	$q="select * from details where name like '%$n%'";
	$rs=mysqli_query($con,$q);
	echo "<table border='1'>
	<tr><th>Name</th><th>Address1<th>Address2<th>Email></tr>";
	while($a=mysqli_fetch_array($rs))
	{
		echo "<tr><td>$a[0]<td>$a[1]<td>$a[2]<td>$a[3]</tr>";
	}
echo "<br/>";
echo "<a href='11html.html'>go back to input page</a>";
mysqli_free_result($rs);
}
mysqli_close($con);
?>
</body>
</html>
