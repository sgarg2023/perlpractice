#!usr/bin/perl
print("\n enter a number\n");
chomp($num1 = <STDIN>);
print("\n enter another number\n");
chomp($num2 = <STDIN>);
print("THE GREATER NUMBER IS:\n");
if($num1 > $num2){
print("$num1\n");
}else{
print("$num2\n");
}
