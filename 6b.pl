#!/usr/bin/perl
use CGI':standard';
print header();
print start_html(-title=>"6b.pl",-bgcolor=>"blue",-text=>"yellow");
open(FILE,"<count.txt");
$count=<FILE>;
close(FILE);
$count++;
open(FILE,">count.txt");
print FILE "$count";
close(FILE);
print("The page is visited by $count user");
print end_html;
