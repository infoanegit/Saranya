<cfoutput>
    <!DOCTYPE html>
    <html>
        <head>
            <title>Welcome</title>
            <link rel="stylesheet" href="./assets/cs/style.css">
        </head>
        <body>
            <form method="post" name="form" id="form" >
                <div class="container  p-5 mt-5 w-50 " style="border: 20px solid  ##548194;background-color:black;">
                    <div class="row align-items-start">
                        <div class="text-center fs-2 fw-bold   p-2 my-1   align-items-start" style=" color:white;">Welcome</div>
                        <div class="text-center fs-3 fw-bold p-2 my-1 text-primary">#session.username#</p>
                    </div>
                    <div class="row float-end">
                        <div class="col-sm-10"></div>
                        <div class="col-sm-2">
                            <input type="submit" name="submit" value="Logout" class="btn btn-success" id="button">
                        </div>
                    </div>
                </div>
            </form>
            <cfif structkeyExists(form,"submit")> 
                <cfset StructClear(Session)>
                <cflocation url="index.cfm" addtoken="false">
            </cfif>
        </body>
    </html>
</cfoutput>
                        
                
                        
                
    
                