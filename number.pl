#!/usr/bin/perl
print("\n Enter a number:\n");
chomp($num1=<STDIN>);
print("\n THe entered number is :$num1","\n");
$result= $num1 + $num1;
print("\n The addition of two numbers is : $result","\n");
$result1 = $result * $result;
print("\n The multiplication of two numbers is : $result1","\n ");
$result2= $result1 . $result1;
print("\n The contcatenation of two numbers is : $result2","\n");

