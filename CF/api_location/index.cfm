<cfoutput>

    <!DOCTYPE html>
    <html>
        <head>
            <title>API LOCATION</title>
            <link rel="stylesheet" href="./assets/css/style.css">
            <script src="assets/js/jquery.min.js"></script>
            <script src="assets/js/api.js"></script>
        </head>
        <body>
            <div class="container mt-5 p-5 w-50" style="border: 20px solid   ##800000;background-color: black;">
                <div class="row align-items-start">
                    <div class="text-center fs-2 fw-bold   p-2 my-1 align-items-start" style="color:##edf2f2;font-family: Arial, Helvetica, sans-serif;"><u>Form</u></div>
                </div>
                <form method="post" name="form" id="form">
                    <div class="row mb-3 mt-3">
                        <div class="col-md-3"></div>
                        <div class="col-md-6">
                            <label for="ipaddress" class="form-label text-info  fw-bold " style="font-family: Arial, Helvetica, sans-serif;">Enter IP Address</label>
                            <input type="text" class="form-control" id="ipaddress" name="ipaddress" placeholder="IP Address"  class="w-75" class="ipaddress">
                            <p id="ip_ad"></p>
                        </div>
                    </div>
                    <br>
                    <div class="row">
                        <div class="col-md-5"></div>
                        <div class="col-md-4">
                        <input type="submit" name="submit" value="Submit" class="btn btn-outline-warning submit" id="submit">
                        </div>
                    </div>
                <br>
                </form>
                <cfif structKeyExists(form,"submit")>

                    <cfset Errormsg="">
                    <cfset Show_error=false>
                    <cfif Show_error EQ false>
                        <cfset Errormsg="">
                    </cfif>
                    <cftry>
                        <cfhttp result="location" method="GET"  charset="utf-8" url="http://api.ipstack.com/#form.ipaddress#?access_key=19dc9a8baeb6ba69b16754ff442f680f">
                        </cfhttp>
                        <cfset record=deserializeJSON('#location.Filecontent#')>
                        <br>    
                        <table  class="table table-bordered">
                            <thead>
                                <tr style="color:white">
                                    <th>Response Object</th>
                                    <th>Values</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr style="color:white">
                                    <td>City</td>
                                    <td>#record.City#</td>
                                </tr>
                                <tr style="color:white">
                                    <td>Continent Code</td>
                                    <td>#record.continent_code#</td>
                                </tr>
                                <tr style="color:white">
                                    <td>Continent Name</td>
                                    <td>#record.continent_name#</td>
                                </tr>
                                <tr style="color:white">
                                    <td>country Code</td>
                                    <td>#record.country_code#</td>
                                </tr>
                                <tr style="color:white">
                                    <td>country Name</td>
                                    <td>#record.country_name#</td>
                                </tr>
                                <tr style="color:white">
                                    <td>IP</td>
                                    <td>#record.ip#</td>
                                </tr>
                                <tr style="color:white">
                                    <td>Latitude</td>
                                    <td>#record.latitude#</td>
                                </tr>
                                <tr style="color:white">
                                    <td>Calling_Code</td>
                                    <td>#record.location.calling_code#</td>
                                </tr>
                                <tr style="color:white">
                                    <td>Capital</td>
                                    <td>#record.location.capital#</td>
                                </tr>
                                <tr style="color:white">
                                    <td>Country_flag</td>
                                    <td>#record.location.country_flag#</td>
                                </tr>
                                <tr style="color:white">
                                    <td>country_flag_emoji</td>
                                    <td>#record.location.country_flag_emoji#</td>
                                </tr>
                                <tr style="color:white">
                                    <td>country_flag_emoji_unicode</td>
                                    <td>#record.location.country_flag_emoji_unicode#</td>
                                </tr>
                                <tr style="color:white">
                                    <td>is_eu</td>
                                    <td>#record.location.is_eu#</td>
                                </tr>
                                <tr style="color:white">
                                    <td>longitude</td>
                                    <td>#record.longitude#</td>
                                </tr>
                                <tr style="color:white">
                                    <td>region_code</td>
                                    <td>#record.region_code#</td>
                                </tr>
                                <tr style="color:white">
                                    <td>region_name</td>
                                    <td>#record.region_name#</td>
                                </tr>
                                <tr style="color:white">
                                    <td>type</td>
                                    <td>#record.type#</td>
                                </tr>
                                <tr style="color:white">
                                    <td>zip</td>
                                    <td>#record.zip#</td>
                                </tr>
                                <cfcatch type="any"> 
                                        <cfset Show_error=true> 
                                        <cfset Errormsg="Error:#cfcatch.message#">
                                        <cfif Show_error> 
                                            <p style="font-size: small;color: red;" >#Errormsg#</p>
                                        </cfif> 
                                        <cfabort>
                                </cfcatch>
                            </tbody>
                        </table>    
                    </cftry>   
                </cfif>
            </div>
        </body>
    </html>
</cfoutput>
                        
                        
                        

    

                
              
                           
                        