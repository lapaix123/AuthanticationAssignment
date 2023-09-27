
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Login & Registration Form</title>

    <link rel="stylesheet" href="static/CSS/style.css">

</head>

<body>
<div id="messagePlaceholder"></div>
<div class="container">
    <input type="checkbox" id="check">
    <div class="form login">
        <header>Login</header>
        <form action="AuthanticationSarvlet" method="post">
            <div class="form-group">
                <input type="text" id="login-email" name="email" placeholder="Enter your email">
                <small class="error-text" id="login-email-error"></small>
            </div>
            <div class="form-group">
                <input type="password" name="password" id="login-password" placeholder="Enter your password">
                <i id="login-pass-toggle-btn" class="fa-solid fa-eye"></i>
                <small class="error-text" id="login-password-error"></small>
            </div>
            <label style="color: red">${message}</label><br>
            <a href="#">Forgot password?</a>
            <input type="submit" class="button" value="Login">
        </form>
        <div class="signup">
                <span class="signup">Don't have an account?
                    <label for="check">Signup</label>
                </span>
        </div>
    </div>
    <div class="form registration">
        <header>Signup</header>
        <form method="post" action="AuthanticationSarvlet">
            <div class="form-group">
                <input type="text" id="registration-email" placeholder="Enter your email">
                <small class="error-text" id="registration-email-error"></small>
            </div>
            <div class="form-group">
                <input type="password" id="registration-password" placeholder="Create a password">
                <i id="registration-pass-toggle-btn" class="fa-solid fa-eye"></i>
                <small class="error-text" id="registration-password-error"></small>
            </div>
            <div class="form-group">
                <input type="password" id="confirm-password" placeholder="Confirm your password">
                <small class="error-text" id="confirm-password-error"></small>
            </div>
            <input type="submit" class="button" value="Signup">
        </form>
        <div class="signup">
                <span class="signup">Already have an account?
                    <label for="check">Login</label>
                </span>
        </div>
    </div>
</div>

<script src="static/scripts/script.js"></script>
</body>

</html>