<?php 
session_start();
include "db_conn.php";

// Collect form data
$username = $_POST['username'];
$first_name = $_POST['first_name'];
$middle_name = $_POST['middle_name'];
$last_name = $_POST['last_name'];
$password = $_POST['password'];  // Assuming no hashing as requested
$gender = $_POST['gender'];
$date_of_birth = $_POST['date_of_birth'];
$house = $_POST['house'];
$street = $_POST['street'];
$thana = $_POST['thana'];
$postal_code = $_POST['postal_code'];
$city = $_POST['city'];
$district = $_POST['district'];
$mobile_number = $_POST['mobile_number'];
$email = $_POST['email'];
$passenger_status = isset($_POST['vip_passenger']) ? 'vip passenger' : 'normal passenger';

// Insert into 'passenger' table
$sql_passenger = "INSERT INTO passenger (Gender, Date_Of_Birth, passenger_status)
                  VALUES ('$gender', '$date_of_birth', '$passenger_status')";
if ($conn->query($sql_passenger) === TRUE) {
    $passenger_id = $conn->insert_id; // Get the ID for the next tables

    // Insert into 'passenger_name' table
    $sql_name = "INSERT INTO passenger_name (Passenger_ID, First_Name, Middle_Name, Last_Name)
                 VALUES ('$passenger_id', '$first_name', '$middle_name', '$last_name')";
    $conn->query($sql_name);

    // Insert into 'passenger_address' table
    $sql_address = "INSERT INTO passenger_address (Passenger_ID, House_No, Street, Thana, Postal_Code, City, District)
                    VALUES ('$passenger_id', '$house', '$street', '$thana', '$postal_code', '$city', '$district')";
    $conn->query($sql_address);

    // Insert into 'passenger_contact' table
    $sql_contact = "INSERT INTO passenger_contact (Passenger_ID, Mobile_Number, Email_Address)
                    VALUES ('$passenger_id', '$mobile_number', '$email')";
    $conn->query($sql_contact);

    // Insert into 'users' table
    $sql_user = "INSERT INTO users (username, user_password)
                 VALUES ('$username', '$password')";
    $conn->query($sql_user);

    echo "Registration successful!";
} else {
    echo "Error: " . $conn->error;
}

$conn->close();