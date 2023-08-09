$(document).ready(function(){
    
    $("#form").on("submit",function(){
        let List=$("#list").val();
        let Array=List.split(",");
        
        let array_regex=/^(\d+( )*)(( )*,{1}( )*((\d+(.){1}\d+)|([\d]+))( )*)+$/;
      
        
        
        if(List==""){
             alert("Enter the values");
            return false;
        }
        else if((! array_regex.test(Array))){
             alert("Only numeric values are allowed");
            return false;
        }
        else{
            $("#listfn").show();
            $("#list").show();
            
            return true;
        }
    });
    $("#list").click(function(){
        $("#listfn").hide();
    })
})