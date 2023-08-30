<cfoutput>
    <!DOCTYPE html>
    <html>
        <head>
            <title>ORM CRUD</title>
            <link rel="stylesheet" href="./assets/css/style.css">
            <script src="./assets/js/jquery.min.js"></script>
            <script src="./assets/js/ormcrud.js"></script>
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
        </head>
        <body>
            <div class="container mt-5 p-5 w-50" style="border: 20px solid  ##03364d;background-color: black;">
                <div class="row align-items-start">
                    <div class="text-center fs-2 fw-bold   p-2 my-1 align-items-start" style="color:##edf2f2;font-family: Arial, Helvetica, sans-serif;"><u>Form</u></div>
                </div>
                <form method="post" name="form" id="form">
                    <div class="row mb-3 mt-3">
                        <div class="col-md-6 ">
                            <label for="firstname" class="form-label text-info  fw-bold " style="font-family: Arial, Helvetica, sans-serif;">First Name *</label>
                            <input type="text" class="form-control" id="firstname" name="firstname" placeholder="First name"  class="w-75" class="firstname">
                            <p id="f_name" style="color: red;"></p>
                        </div>
                        <div class="col-md-6">
                            <label for="lastname" class="form-label text-info  fw-bold" style="font-family: Arial, Helvetica, sans-serif;">Last Name *</label>
                            <input type="text"  class="form-control" id="lastname" name="lastname" placeholder="Last name" class="w-75" >
                            <p id="l_name" style="color: red;"></p>
                        </div>
                    </div>
                    <div class="row mb-3 mt-3">
                        <div class="col-md">
                            <label for="email" class="form-label text-info fw-bold" style="font-family: Arial, Helvetica, sans-serif;">Email*</label>
                            <input type="text" class="form-control" id="email" placeholder="Enter your email" name="email">
                            <p id="mail" style="color: red;"></p>
                        </div>
                    </div>
                    <div class="row mb-3 mt-3">
                        <div class="col-md-4">
                            <div class="box"style="margin-left: 12px;">
                                <label for="gender" class=" form-label fw-bold text-info">Gender</label><br>
                                <div class="form-check form-check-inline">
                                    <input type="radio" class="form-check-input gender" id="male" name="gender" value="male">
                                    <label class="form-check-label" for="male" style="color: white;">Male</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input type="radio" class="form-check-input gender" id="female" name="gender" value="female">
                                    <label class="form-check-label" for="female" style="color:white;">Female</label>
                                </div>
                                <p id="Gender"></p>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <label for="age" class="form-label text-info fw-bold" style="font-family: Arial, Helvetica, sans-serif;">Age</label>
                            <input type="number" class="form-control" id="age" placeholder="Enter Age" name="age">
                            <p id="Age" style="color: red;"></p> 
                        </div>
                        <div class="col-md-4">
                            <label for="location_name" class="form-label text-info fw-bold" style="font-family: Arial, Helvetica, sans-serif;">Location</label>
                            <input type="text" class="form-control" id="location_name" placeholder="Enter Location" name="location_name" >
                            <p id="Location" style="color:red;"></p>
                        </div>
                    </div>
                    <div class="row mb-3 mt-5">
                        <div class="col-md-4">
                            <input type="reset" name="clear" value="Clear" class="btn btn-outline-primary" id="edit">
                        </div>
                        <div class="col-md-4">
                            <input type="submit" name="view_data" value="View Data" class="btn btn-outline-info view" id="view">
                        </div>
                        <div class="col-md-4">
                            <input type="submit" name="submit" value="Submit" class="btn btn-outline-danger submit" id="submit">
                        </div>
                    </div>
                </form>
                <cfif structKeyExists(form,"view_data")>
                    <cflocation  url="list.cfm" addtoken="false">
                </cfif>
                
                <cfif structKeyExists(form,"submit")> 
                    <cfset dataInsert= entityNew("crud")>
                    <cfset dataInsert.setFirstname("#firstname#")>
                    <cfset dataInsert.setLastname("#lastname#")>
                    <cfset dataInsert.setEmail("#email#")>
                    <cfset dataInsert.setGender("#gender#")>
                    <cfset dataInsert.setAge("#age#")>
                    <cfset dataInsert.setLocation("#location_name#")>
                    <cfset EntitySave(dataInsert)>
                    <cflocation  url="list.cfm" addtoken="false">
                </cfif>   

            </div>
        </body>
    </html>
</cfoutput>

                    

            
                
             
            
               
                