<cfoutput>
    <!DOCTYPE html>
    <html>
        <head>
            <title>LogIn Page</title>
            <link rel="stylesheet" href="./asset/CSS/style.css"></style>
            <script src="./asset/JS/jquery.min.js"></script>
            <script src="./asset/JS/crud.js"></script>
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
        </head>
        <body>
            <cfparam  name="Getidvalues.Firsrtname" default="">
            <cfparam  name="Getidvalues.Lastname" default="">
            <cfparam  name="Getidvalues.Email" default="">
            <cfparam  name="Getidvalues.Age" default="">
            <cfparam  name="Getidvalues.Location_name" default="">
            <cfparam name="Getidvalues.gender" default="">
            <cfif structKeyExists(url,"id")>
                <cfset Getidvalues=application.formdata.GetidData(url.id)>
                <cfif structKeyExists(form, "submit")>
                    <cfset Updatevalues=application.formdata.UpdateData(url.id,form.fname,form.lname,form.email,form.gender,form.age,form.location_name)> 
                    <cflocation url="list.cfm" addtoken="false">
                </cfif> 
            <cfelse>
                <cfif structKeyExists(form, "submit")>
                    <cfset Insertdata=application.formdata.InsertData(form.fname,form.lname,form.email,form.gender,form.age,form.location_name)>
                    <cflocation  url="list.cfm" addtoken="false">
                </cfif>
            </cfif>
            <div class="container  p-5 mt-5 w-50 " style="border: 20px solid  ##548194;">
                <div class="row align-items-start">
                    <div class="text-center fs-2 fw-bold border  p-2 my-1 text-secondary  align-items-start" style="background-color: ##edf2f2;">Form</div>
                </div>
                <form method="post" name="form" id="form" >
                    <div class="row mb-3 mt-3">
                        <div class="col-md-6 ">
                            <label for="fname" class="form-label text-danger  fw-bold " style="font-family: Arial, Helvetica, sans-serif;">First Name *</label>
                            <input type="text" class="form-control" id="fname" name="fname" placeholder="First name"  class="w-75" class="fname" value="#Getidvalues.Firsrtname#" >
                            <p id="firstn" style="color: red;"></p>
                        </div>
                        <div class="col-md-6">
                            <label for="lname" class="form-label text-danger  fw-bold" style="font-family: Arial, Helvetica, sans-serif;">Last Name * </label>
                            <input type="text"  class="form-control" id="lname" name="lname" placeholder="Last name" class="w-75" value="#Getidvalues.Lastname#">
                            <p id="lastn" style="color: red;"></p>
                        </div>
                    </div>
                    <div class="row mb-3 mt-3">
                        <div class="col-md">
                            <label for="email" class="form-label text-danger fw-bold" style="font-family: Arial, Helvetica, sans-serif;">Email*</label>
                            <input type="text" class="form-control" id="email" placeholder="Enter your email" name="email" value="#Getidvalues.Email#">
                            <p id="mail" style="color: red;"></p>
                        </div>
                    </div>
                    <div class="row mb-3 mt-3">
                        <div class="col-md-4">
                            <div class="box"style="margin-left: 12px;">
                                <label for="gender" class=" form-label fw-bold text-danger">Gender</label><br>
                                <div class="form-check form-check-inline">
                                    <input type="radio" class="form-check-input" id="male" name="gender" value="male" <cfif Getidvalues.Gender EQ "male">checked</cfif>>
                                    <label class="form-check-label" for="male">Male</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input type="radio" class="form-check-input" id="female" name="gender" value="female" <cfif Getidvalues.Gender EQ "female">checked</cfif>>
                                    <label class="form-check-label" for="female">Female</label>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <label for="age" class="form-label text-danger fw-bold" style="font-family: Arial, Helvetica, sans-serif;">Age</label>
                            <input type="number" class="form-control" id="age" placeholder="Enter Age" name="age" value="#Getidvalues.Age#">
                            <p id="Age" style="color: red;"></p> 
                        </div>
                        <div class="col-md-4">
                            <label for="location_name" class="form-label text-danger fw-bold" style="font-family: Arial, Helvetica, sans-serif;">Location</label>
                            <input type="text" class="form-control" id="location_name" placeholder="Enter Location" name="location_name" value="#Getidvalues.Location_name#">
                            <p id="Location" style="color:red;"></p>
                        </div>
                    </div>
                    <div class="row mb-3 mt-5">
                        <div class="col-md-4">
                            <input type="reset" name="clear" value="Clear" class="btn btn-primary" id="edit">
                        </div>
                        <div class="col-md-4">
                            <input type="submit" name="view_data" value="View Data" class="btn btn-info" id="view_data">
                        </div>
                        <div class="col-md-4">
                            <input type="submit" name="submit" value="Submit" class="btn btn-danger submit" id="button">
                        </div>
                    </div>    
                </form>
                <cfif structKeyExists(form,"view_data")>
                    <cflocation url="list.cfm" addtoken="false">
                </cfif>
            </div>
        </body>
    </html>
</cfoutput>
                
				
							