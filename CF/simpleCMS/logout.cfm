<cfoutput>
    <!DOCTYPE html>
    <html>
        <head>
            <title>Logout page</title>
            <link rel="stylesheet" href="./assets/CSS/style.css">
            <script src="./assets/JS/jquery.min.js"></script>
            <script src="./assets/JS/login.js"></script>
        </head>
        <body>
            <div class="container  p-5 mt-5 w-50 " style="border: 20px solid  ##548194;background-color:black;">
                <div class="row align-items-start">
                    <div class="text-center fs-2 fw-bold   p-2 my-1   align-items-start" style="color:white;">Details Page</div>
                </div>
                <form method="post" name="form" id="form" >
                    <cfset getpg_values=application.pagedata.GetpageData()>
                    <table class="table table-bordered">
                        <thead>
                            <tr style="color:white;">
                                <th>Pagename</th>
                                <th>Description</th>
                                <th id="action">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <cfloop query="getpg_values">   
                                <tr>
                                    <td style="color:white;">#getpg_values.Page#</td>
                                    <td style="color:white;">#getpg_values.Description#</td>
                                    <cfif #session.role# EQ "admin">
                                    <td>
                                        <button type="button" name="edit" value="edit" class="btn btn-primary" id="edit"><a href="form.cfm?id=#getpg_values.id#" style="color:white;text-decoration: none;">EDIT</a></button>
                                        <button type="button" name="delete" value="delete" class="btn btn-primary delete" id="delete" data-id="#getpg_values.id#">DELETE</button>  
                                    </td>
                                    <cfelseif #session.role# EQ "editor">
                                        <td>
                                            <button type="button" name="edit" value="edit" class="btn btn-primary" id="edit" ><a href="form.cfm?id=#getpg_values.id#" style="color:white;text-decoration: none;">EDIT</button>
                                            </td>
                                    <cfelse>
                                        <style>
                                            ##action{
                                                display:none;
                                            }
                                            ##Add{
                                                display:none;
                                            }
                                        </style>
                                    </cfif>
                                </tr>
                            </cfloop>
                        </tbody>
                    </table>
                    <div class="row">
                        <div class="col-sm-4">
                            <input type="submit" name="Add" value="Add new" class="btn btn-primary " id="Add">
                        </div>
                        <div class="col-sm-4"></div>
                        <div class="col-sm-4">
                            <input type="submit" name="logout" value="LogOut" class="btn btn-primary " id="logout">
                        </div>
                    </div>
                </form>
                <cfif structKeyExists(form, "Add")>
                    <cflocation url="form.cfm" addtoken="false">
                </cfif>
                <cfif structKeyExists(url,"id")> 
                    <cfset delete_val=application.pagedata.Deletecolumn(url.id)>  
                    <cflocation url="logout.cfm" addtoken="false"> 
                </cfif>
                <cfif structkeyExists(form,"logout")>
                    <cfset StructClear(Session)>  
                    <cflocation url="index.cfm" addtoken="false">  
                </cfif>
            </div>
        </body>
    </html>
</cfoutput>
                        
                                
                
                    
                
                        
                                    
                                    
                                    
                                    