$(document).ready(function(){
    $("#form").on("submit",function(){

        let array=$("#arrayval").val();
        let array_regex=/[^0-9]|^0+(?!$)/g;
        
        if(array==""){
            alert("Enter values");
            return false;
        }
        else if(array_regex.test(array)){
            alert("only numeric values are allowed");
            return false;
        }
        else{
            return true;
        }
    })
})