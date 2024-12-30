<?php
// Database configuration
$host = 'localhost';
$user = 'rc'; // Change to your database username
$password = 'J}X$9eMVQl.E'; // Change to your database password
$db_name = 'rcdatabase';

// Connect to the database
$conn = new mysqli($host, $user, $password, $db_name);

// Check the connection
if ($conn->connect_error) {
    die('Database connection failed: ' . $conn->connect_error);
}

// Fetch data from the database
$sql = "SELECT id, name, email, phone, website, message, created_at FROM contact_form ORDER BY created_at DESC";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // Generate table rows
    while ($row = $result->fetch_assoc()) {
        echo "<tr>
              
                <td>{$row['name']}</td>
                <td>{$row['email']}</td>
                <td>{$row['phone']}</td>
                <td>{$row['website']}</td>
                <td>{$row['message']}</td>
                <td>{$row['created_at']}</td>
              </tr>";
    }
} else {
    echo "<tr><td colspan='7'>No data found</td></tr>";
}

// Close the connection
$conn->close();
?>
