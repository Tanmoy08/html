#!/usr/bin/perl
use CGI':standard';
print header();
print start_html(-title=>"Environment Variables",-bgcolor=>"blue",-text=>"yellow");
print("<pre>");
foreach  $var (sort(keys(%ENV))) {
   print ("$var=$ENV{$var}");
   print("<br/>");
}
print("</pre>");
print end_html();
