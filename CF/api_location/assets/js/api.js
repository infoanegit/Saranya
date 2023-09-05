$(document).ready(function(){
    $(".submit").on("click",function(){
        var IPaddress=$("#ipaddress").val();
        
        if(IPaddress==""){
            $("#ip_ad").show();
            $("#ip_ad").text("Enter IP Address").css("color",'red');
            return false;
        }
        else {
            return true;
        }
    });
    $("#ipaddress").keyup(function(){
        ("#ip_ad").show();
    });
});