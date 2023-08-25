<cfoutput>
    <!DOCTYPE html>
    <html>
        <head>
            <title>Birthdaymail</title>
            <link rel="stylesheet" href="./assets/css/style.css">
            <script src="./assets/js/jquery.min.js"></script>
            <script src="./assets/js/birthdaymail.js"></script>
        </head>
        <body>
            <div class="container p-5 mt-5 w-50" style="border: 20px solid ##4b0471;background-color: black;">
                <div class="row align-items-start">
                    <div class="text-center fs-2 fw-bold my-1" style="color:aliceblue;font-family: Arial, Helvetica, sans-serif;"><u>BirthdayMail</u></div>
                </div>
                <form method="post" name="form" id="form" enctype="multipart/form-data">
                    <div class="row mb-3 mt-3">
                        <div class="col-md-2"></div>
                        <div class="col-md-8">
                            <label for="name" class="form-label   fw-bold " style="font-family: Arial, Helvetica, sans-serif;color: aqua;">Birthday Baby Name :</label>
                            <input type="text" class="form-control  Name" id="Name" name="Name">
                            <p id="name" style="color: red;"></p>
                        </div>
                    </div>
                    <div class="row mb-3 mt-3">
                        <div class="col-md-2"></div>
                        <div class="col-md-8">
                            <label for="email" class="form-label   fw-bold " style="font-family: Arial, Helvetica, sans-serif; color: aqua;">Email id :</label>
                            <input type="text" class="form-control  email" id="email" name="email">
                            <p id="Email" style="color: red;"></p>
                        </div>
                    </div>
                    <div class="row mb-3 mt-3">
                        <div class="col-md-2"></div>
                        <div class="col-md-8 form-group yellow-border">
                            <label for="Birthday_wishes" class="form-label fw-bold" style="font-family: Arial, Helvetica, sans-serif; color: aqua;">Birthday wishes:</label>
                            <textarea class="form-control" id="Birthday_wishes" row="3"></textarea>
                        </div>
                    </div>
                    <div class="row mb-3 mt-3">
                        <div class="col-md-2"></div>
                        <div class="col-md-6">
                            <label for="Greeting_img" class="form-label fw-bold" style="font-family: Arial, Helvetica, sans-serif; color: aqua;" >Upload Greeting Image</label>
                            <input type="file" class="form-control" id="Greeting_img" name="Greeting_img">
                            <p id="image" style="color: red;"></p>
                        </div>
                    </div>
                    <div class="row float-end">
                        <div class="col-md">
                            <input type="submit" name="submit" value="Submit" id="submit" class="btn btn-outline-warning submit">
                        </div>
                    </div>
                </form>
                <cfif structKeyExists(form,"submit")>
                    <cffile  action="upload" destination="#expandPath('./images')#" filefield="form.Greeting_img" accept=".png,.jpg,.gif" strict="false" result="Greetingimg" nameconflict="makeunique">

                    <cfmail  from="saran2505@gmail.com"  subject="Birthdaymail"  to="#email#" server="localhost" type="html">
                        Happy Birthday #Name#.<br>
                        <cfimage action="writeToBrowser" source="#expandPath('./images/#Greetingimg.serverfile#')#">
                    </cfmail>
                </cfif>
            </div>
        </body>
    </html>

</cfoutput>

              