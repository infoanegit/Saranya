$(document).ready(function(){
    
    $("#form").on("submit",function(){

        let array=$("#list").val();
        let array_regex=/[^0-9]|^0+(?!$)/g;
      
        
        
        if(array==""){
             alert("Enter the values");
            return false;
        }
        else if((!array_regex.test(Array))){
             alert("Only numeric values are allowed");
            return false;
        }
        else
            return true;
    })
    })