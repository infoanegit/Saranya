
    $(document).ready(function(){

        $("#form").on("submit",function () {
            let Firstname = $("#fname").val();
            let Lastname=$("#lname").val();
            let Email=$("#email").val();
            let Password=$("#pwd").val();
            let C_password=$("#c_pwd").val();
            var c_email= /^[a-zA-Z0-9]+(?:\.[a-zA-Z0-9]+)*@[a-zA-Z0-9]+(?:\.[a-zA-Z0-9]+)*$/;
            if(Firstname == ""){
                $("#firstn").show();
                $("#firstn").text("First name must be Filled").css("color","red");
                return false;
            }
            else if(Lastname==""){
                $("#lastn").show();
                $("#lastn").text("Last name must be Filled").css("color","red");
                return false;
            }
            else if(Email==""){
                $("#mail").show();
                $("#mail").text("Email must be Filled").css("color","red");
                return false;
            }
            else if(! c_email.test(Email)){
                $("#mail").show();
                $("#mail").text("Enter correct email Format").css("color","red");
                return false;
            }
            else if(Password==""){
                $("password").show();
                $("#password").text("Password must be Filled").css("color","red");
                return false;
            }
            else if(C_password==""){
                $("c_password").show();
                $("#c_password").text("Confirm password must be Filled").css("color","red");
                return false;
            }
            else if(Password!=C_password){
                $("c_password").show();
                $("#c_password").text("Password and Confirm password must be same").css("color","red");
                
                return false;
            }
            else{
                return true;
            }
            
        });

        
        $("#fname").keyup(function(){
            $("#firstn").hide();
          });
        $("#lname").keyup(function(){
            $("#lastn").hide();
          });
        $("#email").keyup(function(){
            $("#mail").hide();
          });
        $("pwd").keyup(function(){
            $("password").hide();
        })
        $("c_pwd").keyup(function(){
            $("c_password").hide();
        })
        
        
    });
    
    
   
       
        
   

        
           
         