<?php
session_start();
if(isset($_SESSION["lastvisit"]))
{
	$_SESSION["lastvisit"]++;
	print "The page is visted by ".$_SESSION["lastvisit"]." users";
}
else
{
	$_SESSION["lastvisit"]=0;
	print "Session is initiated";
}
?>
