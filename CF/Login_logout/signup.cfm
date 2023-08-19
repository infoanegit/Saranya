<cfoutput>
    <!DOCTYPE html>
    <html>
        <head>
            <title>SignUp page</title>
            <link rel="stylesheet" href="./assets/cs/style.css">
            <script src="./assets/js/jquery.min.js"></script>
            <script src="./assets/js/login.js"></script>
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
        </head>
        <body>
            <div class="container  p-5 mt-5 w-50 " style="border: 20px solid  ##548194;background-color:black;">
                <div class="row align-items-start">
                    <div class="text-center fs-2 fw-bold   p-2 my-1   align-items-start" style=" color:yellow;">Sign Up</div>
                </div>
                <form method="post" name="form" id="form" >
                    <div class="row mb-3 mt-3">
                        <div class="col-md-3"></div>
                        <div class="col-md-6">
                            <label for="username" class="form-label text-success fs-5 fw-bold " style="font-family: Arial, Helvetica, sans-serif;">Username *</label>
                            <input type="text" class="form-control" id="username" name="username" placeholder="Enter Username"  class="w-75" class="username" >
                            <p id="u_name" style="color: red;"></p>
                        </div>
                    </div>
                    <div class="row mb-5 mt-5">
                        <div class="col-md-3"></div>
                        <div class="col-md-6">
                            <label for="password" class="form-label text-success fs-5 fw-bold" style="font-family: Arial, Helvetica, sans-serif;">Password *</label>
                            <input type="text"  class="form-control" id="password" name="password" placeholder="Password" class="w-75">
                            <p id="pwd" style="color: red;"></p>
                        </div>
                    </div>
                    <div class="row mb-3 mt-3">
                        <div class="col-md-4"></div>
                        <div class="col-sm-6">
                            <input type="submit" name="submit" value="Sign Up" class="btn btn-danger w-75" id="button">
                        </div>
                    </div>
                    <div class="row mb-3 mt-5">
                        <div class="col-md-4"></div>
                        <div class="col-sm-6">
                            <p style="color:yellow;">Back to login page <a href="index.cfm"> Login</a></p>
                        </div>
                    </div>
                </form>
                <cfif structkeyExists(form,"submit")> 
                    <cfset value= application.Formvalues.insertFormData(form.username,form.password)>
                </cfif>
            </div>
        </body>
    </html>
</cfoutput>
                    
                
                