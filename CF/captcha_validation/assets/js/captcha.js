$(document).ready(function(){
        $(".submit").on("click",function(){
        var Name=$("#Name").val();
        var Email=$("#email").val();
        var Email_regex=/^[a-zA-Z0-9]+(?:\.[a-zA-Z0-9]+)*@[a-zA-Z0-9]+(?:\.[a-zA-Z0-9]+)*$/;
        var Captcha=$("#captcha_value").val();

        if(Name==""){
            $("#name").show();
            $("#name").text("Enter name");
            return false;
        }
        else if (Email==""){
            $("#Email").show();
            $("#Email").text("Enter Email");
            return false;

        }
        else if(! Email_regex.test(Email)){
            $("#Email").show();
            $("#Email").text("Enter correct email formate");
            return false;
        }
        else if(Captcha==""){
            $("#captcha").show();
            $("#captcha").text("Enter Captcha");
            return false;
        }
        else{
            return true;
        }
    });
    $("#Name").keyup(function(){
        $("#name").hide();
    });
    $("#email").keyup(function(){
        $("#Email").hide();
    });
    $("#captcha_value").keyup(function(){
        $("#captcha").hide();
    });
});