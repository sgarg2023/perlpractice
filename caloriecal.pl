#!/usr/bin/perl
while(1){
print("How old are you? Please enter the number and then press enter\n");
chomp($age=<STDIN>);
print("How much do you weigh? Please enter the weight in pounds and then press enter\n");
chomp($weight=<STDIN>);
$weight = $weight/2.2;
print("Weight in kgs=",$weight,"\n");
print("What is your height? Eneter the height in feet in one line and then inches in second line\n");
chomp($feet=<STDIN>);
chomp($inches=<STDIN>);
$height=(($feet *12)+$inches)*2.54;
print("\n height in cms=",$height,"\n");
print("Please enter whether you are male(m) or female (f) and then press enter\n");
chomp($gender=<STDIN>);
print "Please look at the activity levels listed below.  Then enter the number that\n";
print "corresponds to the activity level you are closest to on a weekly basis.\n";
print "1) Sedentary		(little or no exercise, desk job)\n";
print "2) Lightly Active	(light exercise/sports 1-3 days/wk)\n";
print "3) Mod. Active		(moderate exercise/sports 3-5 days/wk)\n";
print "4) Very Active		(hard exercise/sports 6-7 days/wk)\n";
print "5) Extr. Active		(hard daily exercise/sports & physical job or)\n";
print "				 2 X day training, marathon, football camp, contest, etc.\n";
chomp($levels=<STDIN>);
if($gender =~ /m/i){
$BMR=(66+(13.7 * $weight)+(5* $height) - (6.8 * $age));} 
elsif($gender =~ /f/i){
$BMR=(655+(9.6 * $weight)+(1.8 * $height)- (4.7 * $age));}
else {
	print "Never heard of that gender!  Try again.  Enter a 'm' for male or an 'f' for female.\n";
	chomp ($gender = <STDIN>);
}
if($levels == 1){$maintenanceCalories=$BMR *1.2}
elsif($levels == 2){$maintenanceCalories=$BMR *1.375}
elsif($levels == 3){$maintenanceCalories=$BMR *1.55}
elsif($levels == 4){$maintenanceCalories=$BMR *1.725}
elsif($levels == 5){$maintenanceCalories=$BMR *1.9}
else{$maintenanceCalories=$BMR *1.375};

print("\n Your Basal Metabolic Rate (BMR) is :",$maintenanceCalories);
print "\nYour estimated daily caloric intake to maintain your weight is $maintenanceCalories calories per day.\n";
print "\nTo lose weight, drop your calories by 15-20%.\n";
print "\nYour calories with a 15 percent drop would be ", $maintenanceCalories - $maintenanceCalories*0.15, "\n";
print "\nYour calories with a 20 percent drop would be ", $maintenanceCalories - $maintenanceCalories*0.2, "\n";
print("\n Would you like to calculate the calorie again? Print Y for yes and N for no");
chomp($choice=<STDIN>);
if($choice eq 'n'){ exit}
else{
	print("\n\n");}
}
