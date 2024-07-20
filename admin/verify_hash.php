<?php
// Password yang akan diverifikasi
$password = 'johan';
// Hash password dari database
$hashed_password_from_db = '$2y$10$qRDO9nHxsh1H5VkacF0eO.CZ5p4N6tjVfCs4lJjvTVK';

// Verifikasi password
if (password_verify($password, $hashed_password_from_db)) {
    echo "Password verification succeeded.<br>";
} else {
    echo "Password verification failed.<br>";
}
?>
