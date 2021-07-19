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
INSERT INTO `orders` (`id`) VALUES ('". $_POST['id'] ."');
";

if ($conn->query($query) === TRUE) {
    echo "Order Added";
  } else {
    echo "Error: " . $sql . "<br>" . $conn->error;
  }
  $conn->close();
}



