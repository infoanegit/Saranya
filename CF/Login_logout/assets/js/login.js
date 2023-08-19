$(document).ready(function(){

    $("#form").on("submit",function(){
        let User_name=$("#username").val();
        let Password=$("#password").val();

        if(User_name==""){
            $("#u_name").show();
            $("#u_name").text("Username must be Filled").css("color","red");
            return false;
        }
        else if(Password==""){
            $("#pwd").show();
            $("#pwd").text("Password must be Filled").css("color","red");
            return false;

        }
        else{
            return true;
        }
    });
    
    $("#username").keyup(function(){
        $("#u_name").hide();
    })
    $("#password").keyup(function(){
        $("#pwd").hide();
    });
});