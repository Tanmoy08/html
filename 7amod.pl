#!/usr/bin/perl
use CGI':standard';
print header(-Refresh=>1);
print start_html(-title=>"7a.pl",-bgcolor=>"blue",-text=>"yellow");
($s,$m,$h)=localtime();
$c=localtime();
print "The time is $h:$m:$s in format(hh:mm:ss)";
print("<br/>");
print "$c";
print end_html;
