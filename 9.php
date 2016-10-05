<?php
date_default_timezone_set("Asia/kolkata");
$duration=60*24*60*60+time();
setcookie("lastvisit",date("H:i:s D,d/m/Y;",$duration));
if(isset($_COOKIE["lastvisit"]))
{
	$visit=$_COOKIE["lastvisit"];
	print "The page was last visited on ".$visit;
}
else
{
	print "cookie is initiated";
}
?>
