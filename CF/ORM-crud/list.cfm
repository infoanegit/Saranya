<cfoutput>
    <!DOCTYPE html>
    <html>
        <head>
            <title>List_page</title>
            <link rel="stylesheet" href="./assets/css/style.css">
            <script src="./assets/js/jquery.min.js"></script>
            <script src="./assets/js/ormcrud.js"></script>
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
        </head>
        <body>
            <div class="container  p-5 mt-5 w-75 " style="border: 20px solid  ##1f2a7dd4;background-color:black;">
                <div class="row align-items-start">
                    <div class="text-center fs-2 fw-bold p-2 my-1 align-items-start" style="color:white;"><u>Details Page</u></div>
                </div>
                <form method="post" name="form" id="form">
                    <table class="table table-bordered">
                        <thead>
                            <tr style="color:aqua;">
                                <th>Firstname</th>
                                <th>Lastname</th>
                                <th>Email</th>
                                <th>Gender</th>
                                <th>Age</th>
                                <th>Location</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <cfset Getvalues = EntityLoad('crud')>
                            <cfset length=arraylen(Getvalues)>
                            <cfloop index="i" from="1" to="#length#">
                                <tr style="color:rgb(251, 213, 213);">
                                    <td style="color:rgb(251, 213, 213);">#Getvalues[i].getFirstName()#</td>
                                    <td style="color:rgb(251, 213, 213);">#Getvalues[i].getLastname()#</td>
                                    <td style="color:rgb(251, 213, 213);">#Getvalues[i].getEmail()#</td>
                                    <td style="color:rgb(251, 213, 213);">#Getvalues[i].getGender()#</td>
                                    <td style="color:rgb(251, 213, 213);">#Getvalues[i].getAge()#</td>
                                    <td style="color:rgb(251, 213, 213);">#Getvalues[i].getLocation()#</td>
                                    <td style="color:rgb(251, 213, 213);">
                                        <button type="button" name="edit" value="edit" class="btn btn-outline-primary" id="edit">
                                            <a href="editform.cfm?id=#Getvalues[i].getid()#" style="text-decoration: none;">EDIT</a></button>
                                        <button type="button" name="delete" value="delete" class="btn btn-outline-danger w-50 delete" id="delete" 
                                        data-id="#Getvalues[i].getId()#">DELETE</button> 
                                    </td>
                                </tr>
                            </cfloop>
                        </tbody>
                    </table>
                    <div class="row float-end">
                        <div class="col-sm-4">
                            <input type="submit" name="Add" value="Add new" class="btn btn-outline-info" id="Add">
                        </div>
                    </div>
                </form>
                <cfif structKeyExists(form,"Add")>
                    <cflocation  url="index.cfm" addtoken="false">
                </cfif>
                <cfif structKeyExists(url,"id")>
                    <cfset deletevalues=entityLoadByPK("crud", id)>
                    <cfset entityDelete(deletevalues)>
                    <cflocation url="list.cfm" addtoken="false">
                </cfif>
            </div>
        </body>
    </html>
</cfoutput>
                                        
                  
                        
                        
                      
                     

