<cfoutput>
<!DOCTYPE html>
<html>
    <head>
        <title>listfunction</title>
        <link rel="stylesheet" href="./assets/css/style.css">
        <script src="./assets/js/jquery.min.js"></script>
        <script src="./assets/js/list.js"></script>
    </head>
    
   
    
    <body>
        <div class="container  p-5 mt-5 w-50 " style="border: 2px solid black">
            <div class="row align-items-start">
                <div class="text-center fs-2 fw-bold   p-2 my-1 text-secondary  align-items-start" style="color: black;">List Function</div>
            </div>
            <form  method="post" name="form" id="form" >
                <div class="row mb-3 mt-3">
                    <div class="col-md-3 ">
                    </div>
                    <div class="col-md-6">
                        <label for="list" class="form-label text-success fs-5 fw-bold " style="font-family: Arial, Helvetica, sans-serif;">Enter List</label>
                        <input type="text" class="list" id="list" name="list" class="w-75">
                        
                    </div>
                </div>
                <div class="float-end">
                    <div class="col-sm-8">
                        <input type="submit" name="submit" value="Submit" class="btn btn-success" id="button">
                    </div>
                </div>
            </form>
            <cfif structkeyExists(form,"submit")>
                <cfset array=form.list>
                
                <cfscript>
                 divisiblebyThree = listFilter(array, function(item){
                     return item % 3==0;
                });
             </cfscript>
             
                <p class="text-center text-danger" id="listfn">The numbers Divisible by three: #divisiblebyThree#</p>
             
                
             
             </cfif>
        </div>
    </body>
</html>
    
</cfoutput>