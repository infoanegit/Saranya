<cfoutput>
    <!DOCTYPE html>
    <html>
        <title>Captcha_Validation</title>
        <link rel="stylesheet" href="./assets/css/style.css">
        <script src="./assets/js/jquery.min.js"></script>
        <script src="./assets/js/captcha.js"></script>
    </html>
    <body>
        <div class="container mt-5 p-5 w-50" style="border: 20px solid black; background-color:rgb(242, 220, 224)">
            <div class="row align-items-start">
                <div class="text-center fs-2 fw-bold my-1 align-items-start"><u>Form</u></div>
            </div>
            <form method="post" id="form" class="form">
                <div class="row mb-3 mt-3">
                    <div class="col-md-3"></div>
                    <div class="col-md-6 ">
                        <label for="name" class="form-label   fw-bold " style="font-family: Arial, Helvetica, sans-serif;">Name</label>
                        <input type="text" class="form-control  Name" id="Name" name="Name">
                        <p id="name" style="color: red;"></p>
                    </div>
                </div>
                <div class="row mb-3 mt-3">
                    <div class="col-md-3"></div>
                    <div class="col-md-6">
                        <label for="email" class="form-label   fw-bold " style="font-family: Arial, Helvetica, sans-serif;">Email</label>
                        <input type="text" class="form-control  email" id="email" name="email">
                        <p id="Email" style="color: red;"></p>
                    </div>
                </div>
                <div class="row mb-3 mt-3">
                    <div class="col-md-4"></div>
                    <div class="col-md-6">
                        <cfset captchavalue=application.captchaData.randomcaptcha(6)>
                        <cfimage action="captcha" height="50" width="220" difficulty="low" fontsize="18" fonts="Comic Sans MS,Times New Roman" text="#captchavalue#"></cfimage>
                        <input type="hidden" id="cap_val" name="cap_val" value="#captchavalue#">
                    </div>
                </div>
                <div class="row mb-3 mt-3">
                    <div class="col-md-4"></div>
                    <div class="col-md-6">
                        <input type="text" class="form-control w-75 captcha_value" id="captcha_value" name="captcha_value" placeholder="Enter Captcha">
                        <p id="captcha" style="color: red;"></p> 
                    </div>
                </div>
                <dic class="row float-end mb-3">
                    <div class="col-md-6">
                        <input type="submit" name="submit" value="Submit" class="btn btn-info submit" id="submit">
                    </div>
                </div>
                <cfif structKeyExists(form, "submit")>
                    <cfset enteredcaptcha="#captcha_value#">
                    <cfset captchaval="#cap_val#">
                    <cfif enteredcaptcha EQ captchaval>
                        <cfmail from="saran2505@gmail.com" to="#email#" subject="Subscribe message" server="localhost" type="html">
                            Hi #Name#!<br>
                             Thanks for subscribe  our newsletter.
                        </cfmail>  
                        <cflocation url="logout.cfm" addtoken="false">
                    <cfelse>
                        <p>Invalid Captcha</p>
                    </cfif>
                </cfif>   
            </form>
        </div>
    </body>
</cfoutput>       
            
            
                                    
                
                       
                           
                    
           
                
                
                
               
    
    