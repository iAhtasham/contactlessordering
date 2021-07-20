<?php

$servername = "localhost";
$username = "test";
$password = "test";

$mysqli = new mysqli($servername,$username,$password,'restaurant');
$myArray = array();

$sql = "
SELECT * FROM reviews;
";

if ($result = $mysqli->query($sql)) {
    while($row = $result->fetch_array(MYSQLI_ASSOC)) {
            $myArray[] = $row;
    }
    echo json_encode($myArray);
}
$result->close();
$mysqli->close();
?>


