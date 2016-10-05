#!/usr/bin/perl
use CGI':standard';
use DBI;
print header();
print start_html(-title=>"Student Information", -bgcolor=>"white",-text=>"black");
$driver='DBI:mysql:database=Tanmoy';
$user="root";
$pwd="";
$con=DBI->connect($driver,$user,$pwd);
$n=param("name");
$a=param("age");
$q="insert into stud_info value('$n',$a)";
$rs=$con->prepare($q);
$rs->execute();
if($rs)
{
	print("Data inserted successfully");
}
else
{
	print "Data insertion error";
}
$q="select * from stud_info";
$rs=$con->prepare($q);
$rs->execute();
print "<table border='2'>
	<tr>
	<th>Name</th>
	<th>Age</th>
	</tr>";
while(($n,$a)=$rs->fetchrow)
{
	print "<tr><td>$n<td>$a</tr>";
}
print"</table>";
$rs->finish();
$con->disconnect();
print end_html();
