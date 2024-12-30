<?php
// Database configuration
$host = 'localhost';
$user = 'rc'; // Change to your database username
$password = 'J}X$9eMVQl.E'; // Change to your database password
$db_name = 'rcdatabase';

// Your email address for notifications
$admin_email = 'rccsglobal@Gmail.com';

// Connect to the database
$conn = new mysqli($host, $user, $password, $db_name);

// Check the connection
if ($conn->connect_error) {
    die('Database connection failed: ' . $conn->connect_error);
}

// Fetch POST data
$name = $_POST['username'];
$email = $_POST['email'];
$phone = $_POST['phone'];
$website = $_POST['subject'];
$message = $_POST['message'];

// Insert data into the database
$sql = "INSERT INTO contact_form (name, email, phone, website, message) 
        VALUES (?, ?, ?, ?, ?)";
$stmt = $conn->prepare($sql);
$stmt->bind_param('sssss', $name, $email, $phone, $website, $message);

if ($stmt->execute()) {
    // Prepare email content
    $subject = "New Contact Form Submission";
    $email_message = "You have received a new message from the contact form.\n\n";
    $email_message .= "Name: $name\n";
    $email_message .= "Email: $email\n";
    $email_message .= "Phone: $phone\n";
    $email_message .= "Website: $website\n";
    $email_message .= "Message:\n$message\n";

    // Additional headers
    $headers = "From: noreply@example.com\r\n";
    $headers .= "Reply-To: $email\r\n";
    $headers .= "Content-Type: text/plain; charset=UTF-8\r\n";

    // Send email
    if (mail($admin_email, $subject, $email_message, $headers)) {
        echo 'Your message has been sent successfully, and a notification email has been sent.';
    } else {
        echo 'Message saved to the database, but the email could not be sent.';
    }
} else {
    echo 'Failed to save your message: ' . $conn->error;
}

// Close connections
$stmt->close();
$conn->close();
?>
