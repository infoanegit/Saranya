<cfoutput>
    <!DOCTYPE html>
    <html>
        <head>
            <title>Listpage</title>
            <link rel="stylesheet" href="./asset/cs/style.css">
        </head>
    </html>
    <body>
        <div class="container  p-5 mt-5 w-50 " style="border: 20px solid  ##548194;background-color:black;">
            <div class="row align-items-start">
                <div class="text-center fs-2 fw-bold   p-2 my-1 text-warning  align-items-start" >List Page</div>
            </div>
            <form method="post" name="form" id="form" >
                <cfset Getvalues=application.Imagedata.GetData()>
                <table class="table table-bordered">
                    <thead>
                        <tr style="color:white;">
                            <th>Page Name</th>
                            <th>Image</th>
                        </tr>
                    </thead>
                    <tbody>
                        <cfloop query="Getvalues">
                            <tr>
                                <td style="color:white;"><a href="details_pg.cfm?id=#Getvalues.id#">#Getvalues.Imagename#</td>
                                <td style="color:white;"><cfimage action="resize" source="#expandPath( './Images/#Getvalues.Img#')#" 
                                    destination="#expandPath( './Thumbnail_Images/#Getvalues.Img#')#" height="20" width="20"name="resized" overwrite = "true"> 
                                <cfimage action="writeToBrowser" source="#expandPath('./Thumbnail_Images/#Getvalues.Img#')#"></td>
                            </tr>
                        </cfloop>
                    </tbody>
                </table>
            </form>
        </div>
    </body>
</cfoutput>

                
                 
               