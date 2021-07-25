<?php
$servername = "localhost";
$username = "test";
$password = "test";

$conn = mysqli_connect($servername, $username, $password);
      if(! $conn ) {
         die('Could not connect: ' . mysqli_error($conn));
      }
      // echo 'Connected successfully<br />';
      $retval = mysqli_select_db( $conn, 'restaurant' );
      if(! $retval ) {
         die('Could not select database: ' . mysqli_error($conn));
      }