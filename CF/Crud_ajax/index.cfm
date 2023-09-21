<cfoutput>
    <!DOCTYPE html>
    <html>
        <head>
            <title>CRUD_Ajax</title>
            <link rel="stylesheet" href="./asset/css/style.css">
            <script src="./asset/js/jquery.min.js"></script>
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
        </head>
            
        <body>
            <div class="container  p-5 mt-5 w-50 " style="border: 20px solid  ##013348;background-color:black;">
                <div class="row align-items-start">
                    <div class="text-center fs-2 fw-bold p-2 my-1  align-items-start" style="color:white"><u>Form</u></div>
                </div>
                <form method="post" name="form" id="form" >
                    <div class="row mb-3 mt-3">
                        <div class="col-md-6 ">
                            <label for="fname" class="form-label text-info  fw-bold " style="font-family: Arial, Helvetica, sans-serif;">First Name *</label>
                            <input type="text" class="form-control firstname" id="fname" name="fname" placeholder="First name"  class="w-75" class="fname">
                            <p id="firstn"></p>
                        </div>
                        <div class="col-md-6">
                            <label for="lname" class="form-label text-info  fw-bold" style="font-family: Arial, Helvetica, sans-serif;">Last Name * </label>
                            <input type="text"  class="form-control" id="lname" name="lname" placeholder="Last name" class="w-75" >
                            <p id="lastn"></p>
                        </div>
                    </div>
                    <div class="row mb-3 mt-3">
                        <div class="col-md">
                            <label for="email" class="form-label text-info fw-bold" style="font-family: Arial, Helvetica, sans-serif;">Email*</label>
                            <input type="text" class="form-control" id="email" placeholder="Enter your email" name="email" >
                            <p id="mail"></p>
                        </div>
                    </div>
                    <div class="row mb-3 mt-3">
                        <div class="col-md-4">
                            <div class="box"style="margin-left: 12px;">
                                <label for="gender" class=" form-label fw-bold text-info">Gender</label><br>
                                <div class="form-check form-check-inline">
                                    <input type="radio" class="form-check-input" id="male" name="gender" value="male">
                                    <label class="form-check-label gender" for="male" style="color:white">Male</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input type="radio" class="form-check-input" id="female" name="gender" value="female">
                                    <label class="form-check-label gender" for="female"  style="color:white">Female</label>
                                </div>
                                <p id="Gender"></p>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <label for="age" class="form-label text-info fw-bold" style="font-family: Arial, Helvetica, sans-serif;">Age</label>
                            <input type="number" class="form-control" id="age" placeholder="Enter Age" name="age" >
                            <p id="Age" style="color: red;"></p> 
                        </div>
                        <div class="col-md-4">
                            <label for="location_name" class="form-label text-info fw-bold" style="font-family: Arial, Helvetica, sans-serif;">Location</label>
                            <input type="text" class="form-control" id="location_name" placeholder="Enter Location" name="location_name">
                            <p id="Location"></p>
                        </div>
                    </div>
                    <div class="row mb-3 mt-5">
                        <div class="col-md-4">
                            <input type="reset" name="clear" value="Clear" class="btn btn-outline-warning" id="edit">
                        </div>
                        <div class="col-md-4">
                            <input type="submit" name="view_data" value="View Data" class="btn btn-outline-info" id="view_data">
                        </div>
                        <div class="col-md-4">
                            <input type="button" name="submit" value="Submit" class="btn btn-outline-danger submit" id="submit">
                        </div>
                    </div>    
                </form>
                <script>
                    $(document).ready(function(){
                        
                        var id= window.location.href;
                        var idvalue=id.split('?id=')[1];
                        if(idvalue != undefined){
                            $.ajax({
                                type:"GET",
                                url:'ajax_crud.cfc',
                                dataType: "json",
                                data:{
                                    urlid:idvalue,
                                    method:"GetidData"
                                },
                                success: function(result){
                                    for ( i=0; i < result.DATA.length; i++){
                                        var idval=result.DATA[i];
                                        $("##fname").val(idval[1]);
                                        $("##lname").val(idval[2]);
                                        $("##email").val(idval[3]);
                                        $("##age").val(idval[5]);
                                        $("##location_name").val(idval[6]);
                                        if(idval[4]=='female'){
                                            $('##female').attr('checked',true);
                                        }
                                        else if(idval[4]=='male'){
                                            $('##male').attr('checked',true);
                                        }
                                    }
                                }
                            })
                        }
                        else if(idvalue== undefined){
                            $(".submit").on('click',function() {
                                var Firstname=$("##fname").val();
                                var Lastname=$("##lname").val();
                                var Email=$("##email").val();
                                var Gender=$('input[name="gender"]:checked').val();
                                var Age=$("##age").val();
                                var Location_name=$("##location_name").val();
                                var email_regex=/^[a-zA-Z0-9]+(?:\.[a-zA-Z0-9]+)*@[a-zA-Z0-9]+(?:\.[a-zA-Z0-9]+)*$/;
                                if(Firstname==""){
                                    $("##firstn").show();
                                    $("##firstn").text("Enter Firstname").css("color","red");
                                    return false;
                                }
                                else if(Lastname==""){
                                    $("##lastn").show();
                                    $("##lastn").text("Enter Lastname").css("color","red");
                                    return false;
                                }
                                else if(Email==""){
                                    $("##mail").show();
                                    $("##mail").text("Enter email").css('color','red');
                                    return false;
                                }
                                else if(! email_regex.test(Email)){
                                    $("##mail").show();
                                    $("##mail").text("Enter correct email format").css('color','red');
                                    return false;
                                }
                                else if(Age==""){
                                    $("##Age").show();
                                    $("##Age").text("Enter Age").css('color','red');
                                    return false;
                                }
                                else if(Location_name==""){
                                    $("##Location").show();
                                    $("##Location").text("Enter location").css('color','red');
                                    return false;
                                }
                                else if($('input[name="gender"]:checked').length == 0){
                                    $("##Gender").show();
                                    $("##Gender").text("Choose Gender").css('color','red');
                                    return false;
                                }
                                else{
                                    $.ajax({
                                        type:"POST",
                                        url:'ajax_crud.cfc',
                                        data:{
                                            firstname:Firstname,lastname:Lastname,email:Email,gender:Gender,age:Age,location_name:Location_name,
                                            method:"Insertdata"
                                        },
                                        
                                        success: function () { 
                                            window.location.href='listpage.cfm'
                                        
                                        }
                                    })
                                }
                            })
                            $("##fname").keyup(function(){
                                $("##firstn").hide(); 
                            });
                            $("##lname").keyup(function(){
                                $("##lastn").hide();
                            });
                            $("##email").keyup(function(){
                                $("##mail").hide();
                            });
                            $("##age").keyup(function(){
                                $("##Age").hide();
                            });
                            $("##location_name").keyup(function(){
                                $("##Location").hide();
                            });
                            $('input[name="gender"]').click(function(){
                                $("##Gender").hide();
                            })
                        }
                        
                        else{
                            $(".submit").on('click',function(){
                                var Firstname=$("##fname").val();
                                var Lastname=$("##lname").val();
                                var Email=$("##email").val();
                                var Gender=$('input[name="gender"]:checked').val();
                                var Age=$("##age").val();
                                var Location_name=$("##location_name").val();
                                var email_regex=/^[a-zA-Z0-9]+(?:\.[a-zA-Z0-9]+)*@[a-zA-Z0-9]+(?:\.[a-zA-Z0-9]+)*$/;

                                if(Firstname==""){
                                    
                                    $("##firstn").show();
                                    $("##firstn").text("Enter Firstname").css("color","red");
                                    return false;
                                }
                                else if(Lastname==""){
                                    $("##lastn").show();
                                    $("##lastn").text("Enter Lastname").css("color","red");
                                    return false;
                                }
                                else if(Email==""){
                                    $("##mail").show();
                                    $("##mail").text("Enter email").css('color','red');
                                    return false;
                                }
                                else if(! email_regex.test(Email)){
                                    $("##mail").show();
                                    $("##mail").text("Enter correct email format").css('color','red');
                                    return false;
                                }
                                else if(Age==""){
                                    $("##Age").show();
                                    $("##Age").text("Enter Age").css('color','red');
                                    return false;
                                }
                                else if(Location_name==""){
                                    $("##Location").show();
                                    $("##Location").text("Enter location").css('color','red');
                                    return false;
                                }
                                else if($('input[name="gender"]:checked').length == 0){
                                    $("##Gender").show();
                                    $("##Gender").text("Choose Gender").css('color','red');
                                    return false;
                                }
                                else{
                                    $.ajax({
                                        type:"POST",
                                        url:'ajax_crud.cfc',
                                        data:{
                                            id:idvalue,firstname:Firstname,lastname:Lastname,email:Email,gender:Gender,age:Age,location_name:Location_name,
                                            method:"UpdateData"
                                        },
                                        success: function(){
                                            window.location.href='listpage.cfm' 
                                        }
                                    })
                                }
                            })
                            $("##fname").keyup(function(){
                                $("##firstn").hide(); 
                            });
                            $("##lname").keyup(function(){
                                $("##lastn").hide();
                            });
                            $("##email").keyup(function(){
                                $("##mail").hide();
                            });
                            $("##age").keyup(function(){
                                $("##Age").hide();
                            });
                            $("##location_name").keyup(function(){
                                $("##Location").hide();
                            });
                            $('input[name="gender"]').click(function(){
                                $("##Gender").hide();
                            })
                        }
                        $("##view_data").on('click',function(){
                            $.ajax({
                                success: function () { 
                                    window.location.href = 'listpage.cfm';
                                    
                                }
                            })
                        })
                        
                    })
                </script>
            </div>
        </body>
    </html>
</cfoutput>






                            
                            
   
