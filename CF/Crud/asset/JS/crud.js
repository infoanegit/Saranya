$(document).ready(function(){
    $(".submit").on("click",function(){
        let Firstname=$("#fname").val();
        let Lastname=$("#lname").val();
        let Email=$("#email").val();
        let Age=$("#age").val();
        let Location=$("#location").val();
        let c_email= /^[a-zA-Z0-9]+(?:\.[a-zA-Z0-9]+)*@[a-zA-Z0-9]+(?:\.[a-zA-Z0-9]+)*$/;

        if(Firstname==""){
            $("#firstn").show();
            $("#firstn").text("First name must be Filled").css("color","red");
            return false;
        }
        else if(Lastname==""){
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
       else if(Location==""){
        $("#Location").show();
        $("#Location").text("Location must be filled").css("color","red");
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
    $("location").keyup(function(){
        $("#Location").hide();
    });

    $(".delete").click(function(){
        
        var id_value=$(this).attr('data-id');
        alert("Do you want to delete data");
        let url = window.location.href;
        window.location.href=url +(url.split('?')[1] ? '&':'?id=') + id_value;
        
    });

});

    