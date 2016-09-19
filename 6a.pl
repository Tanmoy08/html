#!/usr/bin/perl
use CGI':standard';
print header();
print start_html(-title=>"6a.pl",-bgcolor=>"blue",-text=>"yellow");
@message=("Hello","good morning","have a nice day","good luck");
$range=4;
$r=int rand($range);
if(param)
{
	$c=param("com");
	print "hi $c : @message[$r]";
}
else
{
	print start_form(),
	"Enter the Username",textfield(-name=>"com"),submit(-value=>"Press"),reset(-value=>"reset");
	print end_form();
}
print end_html;
