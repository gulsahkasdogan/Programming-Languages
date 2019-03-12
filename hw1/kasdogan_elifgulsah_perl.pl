#!/usr/bin/perl

@nums = (1, 2, 3, 4, 5, 6);             
@names = ("Elif", "Gulsah", "Kasdogan");

for($i = 0; $i < 6; $i = $i + 1){
    print "value of nums[$i]: $nums[$i]\n";
}

print $nums[80];
print "done";

my @jagged = ([1, 2, 3, 4, 5, 6], [10,20,30], [5,6]);
my @rectangular = ([1,2], [2,3]);

print "jagged: \n";
print "@$_\n" for @jagged;
print "rectangular: \n";
print "@$_\n" for @rectangular;

@array = (1..10);
@sliced = @array[1..5];
print "original: @array\n";
print "sliced: @sliced\n";
