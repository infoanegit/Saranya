$(document).ready(function(){
    
    $("#submit").click(function(){
        let string=$("#string").val();
        let rev=string.split("").reverse().join("");
        if(string==""){
            alert("Enter a String");
        }
        else{
            $("#given").show();
            $("#reverse").show();
            $("#given").text("Given String: "+string).css("background-color","gray");
            $("#reverse").text("Reversed String: "+rev).css("background-color","gray");
        }
    });
    $("#reset").on("click",function(){
        $("#string").val("");
        $("#given").hide();
        $("#reverse").hide();
    });
});
        
    

        


