$(document).ready(function(){
    $(".submit").on("click",function(){
        var birthday_Name=$("#Name").val();
        var Email_id=$("#email").val();
        var Img=$("#Greeting_img").val();
        var regex_mail=/^[a-zA-Z0-9]+(?:\.[a-zA-Z0-9]+)*@[a-zA-Z0-9]+(?:\.[a-zA-Z0-9]+)*$/;

        if(birthday_Name==""){
            $("#name").show();
            $("#name").text("Enter Name");
            return false;
        }
        else if(Email_id==""){
            $("#Email").show();
            $("#Email").text("Enter Email");
            return false;
        }
        else if(! regex_mail.test(Email_id)){
            $("#Email").show();
            $("#Email").text("Enter correct mail format");
            return false;
        }
        else if(Img==""){
            $("#image").show();
            $("#image").text("Upload Image");
            return false;

        }
        else{
            return true;
        }
    });
    $("#Name").keyup(function(){
        $("#name").hide();
    })
    $("#email").keyup(function(){
        $("#Email").hide();
    });
    $("#Greeting_img").keyup(function(){
        $("#image").hide();
    });
});