<cfoutput>
    <!DOCTYPE html>
    <html>
        <head>
            <title>DetailsPage</title>
            <link rel="stylesheet" href="./asset/cs/style.css">
        </head>
        <body>
            <cfif structKeyExists(url,"id")>
                <cfset GetidImage=application.Imagedata.GetIddata(url.id)>
            </cfif>
            <div class="container  p-5 mt-5 w-50 " style="border: 20px solid  ##548194;background-color:black;">
                <div class="row align-items-start">
                    <div class="text-center fs-2 fw-bold   p-2 my-1 text-warning  align-items-start" >Details Page</div>
                </div>
                <form method="post" name="form" id="name">
                    <table  class="table table-bordered">
                        <thead>
                            <tr style="color: white;">
                                <th>Imagename</th>
                                <th>Image Description</th>
                                <th>Image</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td  style="color: white;">#GetidImage.Imagename#</td>
                                <td  style="color: white;">#GetidImage.ImageDescription#</td>
                                <td><cfimage action="writeToBrowser" source='#expandPath("./Images/#GetidImage.Img#")#'></td>
                            </tr>
                        </tbody>
                    </table>
                </form>
            </div>
        </body>
    </html>
</cfoutput>

                