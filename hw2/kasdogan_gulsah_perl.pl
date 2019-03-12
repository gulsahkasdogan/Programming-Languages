#
# HW2
#
print "Possible loop variables\n";
#integer loop variable
for($i= 0; $i < 5; $i++){
    print "integer = $i\n";
}

#float as loop variable
for($i = 1.0 ; $i < 5.0; $i = $i + 0.8)
{
    printf "float =%.2f\n", $i;
}
#chars as loop variable
for(my $char = 'a'; $char le 'k'; $char++){
    print "char = $char\n";
}

print "\nScope Test\n";
my $var1 = -1; #lexical scoping 
$var2 = -2;


for($var1= 0; $var1 < 3; $var1++){
    print "integer = $var1\n";
}
print "scope1 = $var1\n"; #uses dynamic scoping,visible

for(my $char2 = 'a'; $char2 le 'c'; $char2++){
    print "char = $char2\n";
}
print "scope3 = $char2\n"; #lexical scoping, invisible

for($var2 = 0; $var2 < 3; $var2++){
    print "integer = $var2\n";
}
print "scope1 = $var2\n"; #uses dynamic scoping,visible


sub scopeCheck(){
    for($var2 = 10; $var2 < 12; $var2++){
        print "var = $var2\n";
    }
}

scopeCheck();
print "var2 is now $var2\n"; #output: 12 not -2
#perl does not do shadowing for globals. 
