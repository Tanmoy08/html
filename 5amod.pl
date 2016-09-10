#!/usr/bin/perl
use CGI':standard';
print header();
print start_html(-title=>"Environment Variables",-bgcolor=>"blue",-text=>"yellow");

foreach  $var (sort(keys(%ENV))) {
print("<pre>");
   print ("$var=$ENV{'SERVER_NAME'}");
print("</pre>");
}

print end_html();
