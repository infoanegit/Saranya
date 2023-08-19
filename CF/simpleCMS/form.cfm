<cfoutput>
    <!DOCTYPE html>
    <html>
        <head>
            <title>Form</title>
            <link rel="stylesheet" href="./assets/CSS/style.css">
        </head>
        <body>
            <cfparam name="getid_values.Page" default="">
            <cfparam name="getid_values.Description" default="">
            <cfif structKeyExists(url, "id")>
                <cfset getid_values=application.pagedata.GetIddata(id=url.id)> 
                <cfif structkeyExists(form, "submit")>
                    <cfset update_values=application.pagedata.Updatedata(url.id,form.pg_name,form.description)>
                    <cflocation url="logout.cfm" addtoken="false">
                </cfif> 
                
            <cfelse>
                <cfif structkeyExists(form, "submit")>
                    <cfset insertpg_values=application.pagedata.InsertData(form.pg_name,form.description)>
                    <cflocation url="logout.cfm" addtoken="false">
                </cfif>    
                   
            </cfif>     
               
            <div class="container  p-5 mt-5 w-50 " style="border: 20px solid  ##548194;background-color:black;">
                <div class="row align-items-start">
                    <div class="text-center fs-2 fw-bold   p-2 my-1   align-items-start" style="color:white;"><u style="color:yellow;">Form</u></div>
                </div>
                <form method="post" name="form" id="form" >
                    <div class="row mb-3 mt-3">
                        <div class="col-md-3"></div>
                        <div class="col-md-6">
                            <label for="username" class="form-label text-success fs-5 fw-bold " style="font-family: Arial, Helvetica, sans-serif;">Pagename</label>
                            <input type="text" class="form-control" id="pg_name" name="pg_name" class="w-75" class="pg_name" value="#getid_values.Page#" >
                        </div>
                    </div>
                    <div class="row mb-5 mt-5">
                        <div class="col-md-3"></div>
                        <div class="col-md-6">
                            <label for="password" class="form-label text-success fs-5 fw-bold" style="font-family: Arial, Helvetica, sans-serif;">Description</label>
                            <input type="text" class="form-control" id="description" name="description"  class="w-75" class="Description" value="#getid_values.Description#">
                        </div>
                    </div>
                    <div class="row mb-3 mt-3">
                        <div class="col-md-4"></div>
                        <div class="col-sm-6">
                            <input type="submit" name="submit" value="Submit" class="btn btn-primary w-75" id="button">
                        </div>
                    </div>
                </form>
            </div>
        </body>
    </html>
</cfoutput>
            
           
            

                      
                

                        
                
                        
               