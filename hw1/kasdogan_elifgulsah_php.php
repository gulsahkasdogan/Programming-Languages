<html>
<head>
<h1> CS315 HW <h1>
</head>
<body>
<?php   
 $numbers = array( 1, 2, 3, 4, 5,6,7,8);
    foreach( $numbers as $i ) {
        echo "Value is $i <br />";
    }
    $letters[0] = "a";
    $letters[1] = "b";
    foreach( $letters as $i ) {
        echo "Value is $i <br />";
    }
    
    $ages = array("gulsah" => 20, "bilge" => 15, "ela" => 18);
    
    echo "Gulsah's age: ". $ages['gulsah'] . "<br />";
    
    $ages['gulsah'] = "twenty";
    
    echo "Gulsah's age: ". $ages['gulsah'] . "<br />";

    $nums = array(1,2,3,4,5,6,7,8,9);
    echo "original:";
    foreach( $nums as $i ) {
        echo " $i ";
    }
    $sliced = array_slice($nums, 1,4);
    echo "sliced:";
    foreach( $sliced as $i ) {
        echo " $i ";
    }    
?>
</body>
</html>
