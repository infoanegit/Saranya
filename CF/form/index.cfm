<cfoutput>
    <!DOCTYPE html>
    <html>
        <head>
            <title>Form</title>
            <script src="./assets/js/jquery.min.js"></script>
            <link rel="stylesheet" href="./assets/css/style.css">
            <script src="./assets/js/form.js"></script>
            
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
        </head>
        <body>
            <div class="container  p-5 mt-5 w-50 " style="border: 20px solid  ##548194;">
                <div class="row align-items-start">
                    <div class="text-center fs-2 fw-bold border  p-2 my-1 text-secondary  align-items-start" style="background-color: ##edf2f2;">Create Account</div>
                </div>
                <form method="post" name="form" id="form" >
                    <div class="row mb-3 mt-3">
                        <div class="col-md-6 ">
                            <label for="fname" class="form-label text-success fs-5 fw-bold " style="font-family: Arial, Helvetica, sans-serif;">First Name *</label>
                            <input type="text" class="form-control" id="fname" name="fname" placeholder="First name"  class="w-75" class="fname" >
                            <p id="firstn" style="color: red;"></p>
                        </div>
                        <div class="col-md-6">
                            <label for="lname" class="form-label text-success fs-5 fw-bold" style="font-family: Arial, Helvetica, sans-serif;">Last Name * </label>
                            <input type="text"  class="form-control" id="lname" name="lname" placeholder="Last name" class="w-75">
                            <p id="lastn" style="color: red;"></p>
                        </div>
                    </div>
                    <div class="row mb-3 mt-3">
                        <div class="col-md-6">
                            <label for="email" class="form-label text-success fs-5 fw-bold" style="font-family: Arial, Helvetica, sans-serif;">Email*</label>
                            <input type="text" class="form-control" id="email" placeholder="Enter your email" name="email">
                            <p id="mail" style="color: red;"></p>
                        </div>
                        <div class="col-md-6">
                            <label for="age" class="form-label text-success fs-5 fw-bold" style="font-family: Arial, Helvetica, sans-serif;">Age</label>
                            <input type="number" class="form-control" id="age" placeholder="Enter Age" name="age">
                            <p id="Age" style="color: red;"></p> 
                        </div>
                    </div>
                    <div class="row  float-end">
                        <div class="col-sm-8">
                            <input type="submit" name="submit" value="CREATE" class="btn btn-success" id="button">
                        </div>
                    </div>
                </form>
                <cfset  Formvalues= createobject('component', 'controller.form')>
                <cfif structkeyExists(form,"submit")>               
                   <cfset  Formvalues.insertFormData(form.fname,form.lname,form.email,form.age)>
                </cfif>
                   


            </div>
        </body>
    </html>
</cfoutput>


