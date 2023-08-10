$(document).ready(function(){
    $("#form").on("submit",function(){
        let First_name=$("#fname").val();
        let Last_name=$("#lname").val();
        let Email=$("#email").val();
        let Age=$("#age").val();
        let c_email= /^[a-zA-Z0-9]+(?:\.[a-zA-Z0-9]+)*@[a-zA-Z0-9]+(?:\.[a-zA-Z0-9]+)*$/;
        if(First_name==""){
            $("#firstn").show();
            $("#firstn").text("First name must be Filled").css("color","red");
            return false;
        }
        else if(Last_name==""){
            $("#lastn").show();
            $("#lastn").text("Last name must be filled").css("color","red");
            return false;

        }
        else if(Email==""){
            $("#mail").show();
            $("#mail").text("Email must be filled").css("color","red");
            return false;
        }
        else if(! c_email.test(Email)){
            $("#mail").show();
            $("#mail").text("Enter correct email Format").css("color","red");
            return false;
        }
        else if(Age==""){
            $("#Age").show();
            $("#Age").text("Age must be filled").css("color","red");
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
      $("#age").keyup(function(){
        $("#Age").hide();
      });
});
        