$(document).ready(function(){
    $(".submit").on("click",function(){
        var Imagename=$("#img_name").val();
        var ImgDescription=$("#img_description").val();
        var Uploadimg=$("#image").val();

        if(Imagename==""){
            $("#imgname").show();
            $("#imgname").text("Enter Image name").css("color","red");
            return false;
        }
        else if(ImgDescription==""){
            $("#imgdescription").show();
            $("#imgdescription").text("Enter Image Description").css("color","red");
            return false;
        }
        else if(Uploadimg==""){
            $("#imagesize").show();
            $("#imagesize").text("upload Image").css("color","red"); 
            return false;
        }
        else if($("#image")[0].files[0].size>1000000){
            $("#imagesize").show();
            $("#imagesize").text("larger image size").css("color","red");
            return false;
        }
        else{
          return true; 
        }
    });
    $("#img_name").keyup(function(){
        $("#imgname").hide();
    });

    $("#img_description").keyup(function(){
        $("#imgdescription").hide();
    });
    $("#image").change(function(){
        $("#imagesize").hide();
    });
  
})
      
           
            
            
            
       

        
            
   

        