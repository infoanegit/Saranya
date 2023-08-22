<cfoutput>
    <!DOCTYPE html>
    <html>
        <head>
            <title>List Values</title>
            <link rel="stylesheet" href="./asset/CSS/style.css">
            <script src="./asset/JS/jquery.min.js"></script>
            <script src="./asset/JS/crud.js"></script>
        </head>
        <body>
            <div class="container  p-5 mt-5 w-75 " style="border: 20px solid  ##548194;background-color:black;">
                <div class="row align-items-start">
                    <div class="text-center fs-2 fw-bold   p-2 my-1   align-items-start" style="color:white;">Details Page</div>
                </div>
                <form method="post" name="form" id="form" >
                    <cfset Getvalues=application.formdata.GetpageData()>
                    <table class="table table-bordered">
                        <thead>
                            <tr style="color:white;">
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
                            <cfloop query="Getvalues">
                                <tr style="color:white;">
                                    <td style="color:white;">#Getvalues.Firsrtname#</td>
                                    <td style="color:white;">#Getvalues.Lastname#</td>
                                    <td style="color:white;">#Getvalues.Email#</td>
                                    <td style="color:white;">#Getvalues.Gender#</td>
                                    <td style="color:white;">#Getvalues.Age#</td>
                                    <td style="color:white;">#Getvalues.Location_name#</td>
                                    <td style="color:white;">
                                        <button type="button" name="edit" value="edit" class="btn btn-primary" id="edit"><a href="index.cfm?id=#Getvalues.id#" style="color:white;text-decoration: none;">EDIT</a></button>
                                        <button type="button" name="delete" value="delete" class="btn btn-primary delete" id="delete" data-id="#Getvalues.id#">DELETE</button> 
                                    </td>
                                </tr>
                            </cfloop>
                        </tbody>
                    </table>
                    <div class="row float-end">
                        <div class="col-sm-4">
                            <input type="submit" name="Add" value="Add new" class="btn btn-info" id="Add">
                        </div>
                    </div>
                </form>
                <cfif structKeyExists(form, "Add")>
                    <cflocation url="index.cfm" addtoken="false">
                </cfif>
                <cfif structKeyExists(url,"id")>
                    <cfset deletevalues=application.formdata.Deletedata(url.id)>
                    <cflocation url="list.cfm" addtoken="false">
                </cfif>
            </div>
        </body>
    </html>
</cfoutput>
                                    
        
