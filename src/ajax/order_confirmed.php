<?php
if (isset( $_POST['table_no']) === true){
$servername = "localhost";
$username = "test";
$password = "test";

$conn = mysqli_connect($servername, $username, $password);
      if(! $conn ) {
         die('Could not connect: ' . mysqli_error($conn));
      }
$retval = mysqli_select_db( $conn, 'restaurant' );
$query = "
UPDATE `orders`
SET `status` = 'confirmed'
WHERE `table_no` = '". $_POST['table_no']. "' AND `status` = 'un-confirmed';
";
if ($conn->query($query) === TRUE) {
    echo "Order Completed";
  } else {
    echo "Error: " . $query . "<br>" . $conn->error;
  }
  $conn->close();
}



