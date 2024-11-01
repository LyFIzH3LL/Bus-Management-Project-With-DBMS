<?php  
session_start();
include "db_conn.php";

if (isset($_POST['username']) && isset($_POST['password'])) {

    function test_input($data) {
        $data = trim($data);
        $data = stripslashes($data);
        $data = htmlspecialchars($data);
        return $data;
    }

    // Get input data
    $username = test_input($_POST['username']);
    $password = test_input($_POST['password']);
    
    // Check for empty fields
    if (empty($username)) {
        header("Location: form.php?error=User Name is Required");
        exit();
    } else if (empty($password)) {
        header("Location: form.php?error=Password is Required");
        exit();
    } else {

        $sql = "SELECT * FROM users WHERE username = '$username' AND user_password = '$password'";
        $result = mysqli_query($conn, $sql);

        if (mysqli_num_rows($result) === 1) {
            // The username must be unique
            $row = mysqli_fetch_assoc($result);
        
            // Check if the entered password matches the stored password
            if ($row['user_password'] === $password) {
                // Set session variables
                $_SESSION['name'] = $row['username']; // Assuming 'username' is used for display
                $_SESSION['id'] = $row['id'];
                $_SESSION['role'] = $row['role'];
                $_SESSION['username'] = $row['username'];

                // Redirect based on role
                if ($row['role'] == 'admin') {
                    header("Location: ../admin/admin.php"); // Redirect to admin panel
                } elseif ($row['role'] == 'user') {
                    header("Location: ../user/user.php"); // Redirect to user panel
                } else {
                    // Handle unexpected roles
                    header("Location: form.php?error=Invalid role");
                }
                exit();
            } else {
                // Invalid password
                header("Location: form.php?error=Invalid Password");
                exit();
            }
        } else {
            // Username not found
            header("Location: form.php?error=Incorrect User name or password");
        }
    }
} else {
    header("Location: form.php");
    exit();
}
