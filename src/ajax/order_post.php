<?php
if (isset( $_POST['id']) === true){
$servername = "localhost";
$username = "test";
$password = "test";

$conn = mysqli_connect($servername, $username, $password);
      if(! $conn ) {
         die('Could not connect: ' . mysqli_error($conn));
      }
$retval = mysqli_select_db( $conn, 'restaurant' );
$query = "
INSERT INTO `orders` (`id`, `table_no`, `status`)
 VALUES ('". $_POST['id'] ."', '". $_POST['table_no'] ."', '". $_POST['description'] ."');
";

if ($conn->query($query) === TRUE) {
    echo "Order Added";
  } else {
    echo "Error: " . $query . "<br>" . $conn->error;
  }
  $conn->close();
}



