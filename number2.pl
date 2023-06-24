#!/usr/bin/perl
print("\n Enter a number:\n");
chomp($num1=<STDIN>);
print("\n THe entered number is :$num1","\n");
print("\n The addition of two numbers $num1 + $num1 is :",$num1+=$num1,"\n");
print("\n The multiplication of two numbers $num1 * $num1 is :",$num1*=$num1,"\n ");
print("\n The contcatenation of two numbers $num1.$num1 is ",$num1.=$num1,"\n");
