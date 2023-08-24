<cfoutput>
    <!DOCTYPE html>
    <html>
        <title>UploadImage</title>
        <link rel="stylesheet" href="./asset/cs/style.css">
        <script src="./asset/js/jquery.min.js"></script>
        <script src="./asset/js/Image.js"></script>
    </html>
    <body>
        <div class="container  p-5 mt-5 w-50 " style="border: 20px solid  ##548194;background-color:black;">
            <div class="row align-items-start">
                <div class="text-center fs-2 fw-bold   p-2 my-1 text-warning  align-items-start" style=";">Form</div>
            </div>
            <form method="post" name="form" id="form" enctype="multipart/form-data">
                
                <div class="row mb-3 mt-3">
                    <div class="col-md-3"></div>
                    <div class="col-md-6 ">
                        <label for="img_name" class="form-label text-info  fw-bold " style="font-family: Arial, Helvetica, sans-serif;">Image Name</label>
                        <input type="text" class="form-control" id="img_name" name="img_name"   class="w-75" class="img_name" >
                        <p id="imgname" style="color: red;"></p>
                    </div>
                </div>
                <div class="row mb-3 mt-3">
                    <div class="col-md-3"></div>
                    <div class="col-md-6 ">
                        <label for="img_description" class="form-label text-info  fw-bold " style="font-family: Arial, Helvetica, sans-serif;">Image Description</label>
                        <input type="text" class="form-control" id="img_description" name="img_description"   class="w-75" class="img_description" >
                        <p id="imgdescription" style="color: red;"></p>
                    </div>
                </div>
                <div class="row mb-3 mt-3">
                    <div class="col-md-3"></div>
                    <div class="col-md-6">
                        <label for="profile" class="form-label text-info fw-bold" style="font-family: Arial, Helvetica, sans-serif;">Upload Image</label><br>
                        <input type="file" class="form-control" id="image" name="image">
                        <p id="imagesize" style="color:red;"></p>
                    </div>
                </div>
                <div class="row mb-3 mt-5">
                    <div class="col-md-3"></div>
                    <div class="col-md-3">
                        <input type="submit" name="list" value="List" class="btn btn-primary w-75" >
                    </div>
                    <div class="col-md-3">
                        <input type="submit" name="submit" value="Submit" class="btn btn-primary w-75 submit" id="submit">
                    </div>
                </div>
            </form>
            <cfif structKeyExists(form,"submit")>
                <cfset errormsg="">
                <cfset showerrormsg=false>
                <cfif showerrormsg EQ false>
                    <cfset errormsg="">
                </cfif>
              
                <cftry> 
                    <cffile action="upload" destination= "#expandPath( './Images')#" filefield="form.image" accept=".png,.jpg,.gif" strict="false" result="uploadimg" nameconflict="makeunique"> 
                    
                    <cfcatch type="any"> 
                        <cfset showerrormsg=true>
                        <cfset errormsg=" Error:#cfcatch.message#">
                        <cfif showerrormsg> 
                            <p style="font-size: small;color: red;" >#errormsg#</p>
                        </cfif> 
                        <cfabort>
                    </cfcatch>
                    
                </cftry> 
                <cfset imagename="#uploadimg.serverfile#">
                <cfset Insertvalue=application.Imagedata.InsertData(form.img_name,form.img_description,imagename)>
                <cfset Getvalues=application.Imagedata.GetData()> 
                <cflocation  url="list_pg.cfm" addtoken="false">
            </cfif>
            <cfif structKeyExists(form, "list")>
                <cflocation url="list_pg.cfm" addtoken="false">
            </cfif>
        </div>
    </body>
</cfoutput>
              

           
                       
                      