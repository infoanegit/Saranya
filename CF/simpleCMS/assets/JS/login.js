$(document).ready(function(){
    $("#form").on("submit",function(){
        let Username=$("#username").val();
        let Password=$("#password").val();

        if(Username==""){
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
    $(".delete").on("click",function(){
        var value=$(this).attr('data-id');
        alert("Do you want to delete data");
        let url = window.location.href;
        window.location.href=url +(url.split('?')[1] ? '&':'?id=') + value;
    });
        
         
        
        
        
        


    
         
        
       
            
            
      
         




    
        
    $("#username").keyup(function(){
        $("#u_name").hide();
    })
    $("#password").keyup(function(){
        $("#pwd").hide();
    });
});
