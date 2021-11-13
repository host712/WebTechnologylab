<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "lab10";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
// Delete data in table
$sql4 = "DELETE FROM student";

if ($conn->query($sql4) === TRUE) {
  echo "Record deleted successfully";
} else {
  echo "Error deleting record: " . $conn->error;
}
echo "<br>";
$conn->close();
?>