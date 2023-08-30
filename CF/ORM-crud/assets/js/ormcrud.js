$(document).ready(function(){
    $(".submit").on("click",function(){
        var Firstname=$("#firstname").val();
        var Lastname=$("#lastname").val();
        var Email=$("#email").val();
        var email_regex=/^[a-zA-Z0-9]+(?:\.[a-zA-Z0-9]+)*@[a-zA-Z0-9]+(?:\.[a-zA-Z0-9]+)*$/;
        var Age=$("#age").val();
        var Location=$("#location_name").val();
        
        if(Firstname==""){
            $("#f_name").show();
            $("#f_name").text("Enter Firstname").css("color","red");
            return false;
        }
        else if(Lastname==""){
            $("#l_name").show();
            $("#l_name").text("Enter lastname").css('color','red');
            return false;
        }
        else if(Email==""){
            $("#mail").show();
            $("#mail").text("Enter email").css('color','red');
            return false;
        }
        else if(! email_regex.test(Email)){
            $("#mail").show();
            $("#mail").text("Enter correct email format").css('color','red');
            return false;
        }
        else if(Age==""){
            $("#Age").show();
            $("#Age").text("Enter Age").css('color','red');
            return false;
        }
        else if(Location==""){
            $("#Location").show();
            $("#Location").text("Enter location").css('color','red');
            return false;
        }
        else if($('input[name="gender"]:checked').length == 0){
            $("#Gender").show();
            $("#Gender").text("Choose Gender").css('color','red');
            return false;
        }
        else{
            return true;
        }
    })
        

    $("#firstname").keyup(function(){
        $("#f_name").hide(); 
    });
    $("#lastname").keyup(function(){
        $("#l_name").hide();
    });
    $("#email").keyup(function(){
        $("#mail").hide();
    });
    $("#age").keyup(function(){
        $("#Age").hide();
    });
    $("#location_name").keyup(function(){
        $("#Location").hide();
    });
    $('input[name="gender"]').click(function(){
        $("#Gender").hide();
    })
    $(".delete").click(function(){
        
        var id_value=$(this).attr('data-id');
        alert("Do you want to delete data");
        let url = window.location.href;
        window.location.href=url +(url.split('?')[1] ? '&':'?id=') + id_value;
        
    });
})
    
    

      
       
