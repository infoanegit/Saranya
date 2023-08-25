<cfoutput>
    <!DOCTYPE html>
    <html>
        <head>
            <title>Logoutpage</title>
            <link rel="stylesheet" href="./assets/css/style.css">
        </head>
        <body>
            <form method="post" name="form" id="form">
                <div class="container mt-5 p-5 w-50" style="border: 5px solid red; background-color:black;">
                    <div class="row align-items-start mb-3 mt-3">
                        <p class="text-warning text-center fs-4" style="font-family: Arial, Helvetica, sans-serif;">Email Address successfully subscribe our newsletter</p>
                    </div>
                    <div class="row float-end">
                        <div class="col-sm-10"></div>
                        <div class="col-sm-2">
                            <input type="submit" name="logout" value="Logout" class="btn btn-danger" id="logout">
                        </div>
                    </div>
                </div>
            </form>
            <cfif structkeyExists(form,"logout")> 
                <cfset structClear(session)>
                <cflocation url="index.cfm" addtoken="false">
            </cfif>
        </body>
    </html>
</cfoutput>
           