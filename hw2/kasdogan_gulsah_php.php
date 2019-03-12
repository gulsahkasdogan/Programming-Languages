<?php
echo "Loop variable type\n";

echo "Loop variable can be an integer \n";

for($i = 0; $i < 5; $i++){
  echo "int: $i \n";
}

echo "Loop variable can be an float \n";

for($i = 1.2; $i < 3.6; $i = $i + 0.2){
  echo "float: $i \n";
}

echo "Loop variable can be a character \n";

for($i = 'a'; $i != 'k'; $i++){
  //< or > does not work here 
  // and you can only increment $i by one
  echo "char: $i \n";
}

echo "Checking scope of the variable \n";
echo "Loop variable i: $i \n";


echo " Scope test \n";

$var = 8;

$array = array(1,4,5,6,99);

function iter($list)
{  
  foreach($list as $var){
      echo " $var";
  }
  
}

iter($array);

echo "\n $var \n"; //8 --> will retain its value because this var is not the same as we used in function 

foreach($array as $var){
      echo " $var";
}

echo "\n $var \n"; //99
echo "Is it legal to change loop variables inside the loop? \n";

for($i = 96; $i >=30; $i--){
  $i = $i - 25;
  echo "loop var: $i \n"; //yes it is legal 
  // Output: 71 45 19
}
foreach($array as $var){
  //var: 1 4 5 6 99
  $var++;
  echo " $var"; // 2 5 6 7 100
  
}

function numGen(){

  echo "\nHello\n";
  return 3;
}

for( $i = 0; $i<numGen(); $i++){
  echo $i; 
}

?>