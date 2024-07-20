<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login Form | ke Profil</title>
  <link rel="stylesheet" href="css/style.css">
  <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
  <style>
    .sr-only {
      position: absolute;
      width: 1px;
      height: 1px;
      padding: 0;
      margin: -1px;
      overflow: hidden;
      clip: rect(0, 0, 0, 0);
      border: 0;
    }
  </style>
</head>
<body>
  <div class="wrapper">
    <form action="login.php" method="POST" aria-labelledby="loginFormTitle">
      <h1 id="loginFormTitle">Login</h1>
      <div class="input-box">
        <label for="username" class="sr-only">Username</label>
        <input type="text" id="username" name="txtusername" placeholder="Username" required>
        <i class='bx bxs-user' aria-hidden="true"></i>
      </div>
      <div class="input-box">
        <label for="password" class="sr-only">Password</label>
        <input type="password" id="password" name="txtpassword" placeholder="Password" required>
        <i class='bx bxs-lock-alt' aria-hidden="true"></i>
      </div>
      <div class="remember-forgot">
        <label><input type="checkbox"> Remember Me</label>
        <a href="javascript:void(0);">Forgot Password</a>
      </div>
      <button type="submit" name="btnlogin" class="btn">Login</button>
      <div class="register-link">
        <p>Don't have an account? <a href="javascript:void(0);">Register</a></p>
      </div>
    </form>
  </div>
  
</body>
</html>
