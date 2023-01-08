<html>

<head>
    <title>Login</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
        integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    <link rel="stylesheet" href="css/login.css"/>
    <style>
        
    </style>
</head>

<body>
    <div class="container">
        <div class="row">
            <div class="col-6 offset-3">
                <div class="card my-5 p-4 cardbody-color">
                    <form action="./submit.jsp" method="post">
                        <div class="text-center">
                            <img src="./image/logo.jpg" class="rounded-circle mb-4 profile-image-pic" />
                        </div>
                        <div>
                            <input class="form-control mb-3" placeholder="Email123" name="email"/>
                            <input type="password" class="form-control mb-3" placeholder="Password" name="pass"/>
                        </div>
                        <div class="text-center">
                            <button type="submit" class="btn btn-primary btn-color w-100">Login</button>
                        </div>
                    </form>
                    <label class="text-center">Not Registered?<a href="#">&nbsp;Create an Account</a></label>
                </div>
            </div>
        </div>
    </div>
</body>

</html>