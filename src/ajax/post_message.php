<?php
if (isset( $_POST['email']) === true){
$servername = "localhost";
$username = "test";
$password = "test";

$conn = mysqli_connect($servername, $username, $password);
      if(! $conn ) {
         die('Could not connect: ' . mysqli_error($conn));
      }
$retval = mysqli_select_db( $conn, 'restaurant' );
$query = "
INSERT INTO `reviews` (`email`, `review`)
 VALUES ('". $_POST['email'] ."', '". $_POST['message'] ."');
";

if ($conn->query($query) === TRUE) {
    echo "review sent";
  } else {
    echo "Error: " . $query . "<br>" . $conn->error;
  }
  $conn->close();
}



