<cfoutput>
    <!DOCTYPE html>
    <html>
        <head>
            <title>OddorEven</title>
            <link rel="stylesheet" href="./assets/css/style.css">
            <script src="./assets/js/jquery.min.js"></script>
            <script src="./assets/js/OddorEven.js"></script>
        </head>

        <body>
            <div class="container  p-5 mt-5 w-50 " style="border: 2px solid black; background-color:black;">
                <div class="row align-items-start">
                    <div class="text-center fs-2 fw-bold   p-2 my-1 text-secondary  align-items-start" style="color: black;">Odd/Even</div>
                </div>
                <form  method="post" name="form" id="form" >
                    <div class="row mb-3 mt-3">
                        <div class="col-md-3 ">
                        </div>
                        <div class="col-md-6">
                            <label for="list" class="form-label text-success fs-5 fw-bold " style="font-family: Arial, Helvetica, sans-serif;">Enter any Number:</label>
                            <input type="text" class="arrayval" id="arrayval" name="arrayval" class="w-75">
                        </div>
                            
                    </div>
                    <div class="float-end">
                        <div class="col-sm-8">
                            <input type="submit" name="submit" value="Submit" class="btn btn-success" id="button">
                        </div>
                    </div>
                </form>
                <br>
                <br>
                <p class="text-center fs-4 fw-bold" id="arrayfn" style="color:white;">Odd numbers are in blue Even numbers are in green:</p>
                <cfif structkeyExists(form,"submit")>
                    <cfset value=form.arrayval>
                    <cfscript>
                        for (i = 1; i <= value; i++) {
                            if(i %2==0){
                                
                                writeOutput("<p class='text-center text-success fs-3'>#i#</p>");
                            
                            }
                            else{
                                writeOutput("<p class='text-center text-primary fs-3'>#i#</p>");
                            
                            }
                        }
                    </cfscript>
                </cfif>
            </div>
        </body>
    </html>
</cfoutput>
            
                    
                    
                    
                
             
                
             
                
             