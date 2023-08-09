$(document).ready(function(){
    var first=null;
    var second=null;
    var first_element=null;
    var second_element=null;

    $(".container").on("click",(function(event){
        event.stopPropagation(); 
    
        if(first==null){
            first=$(this).css("border");
            first_element=$(this);
        }
        else if(second==null){
            second=$(this).css("border");
            second_element=$(this);
            
        }
        
        if(second != null )
        swap(first,second,first_element,second_element);
    }));
    
    function swap(value1,value2,first_e,second_e){
    
        $(first_e).css("border",value2);
        $(second_e).css("border",value1);
        first=null;
        second=null;
        first_element=null;
        second_element=null;
    }
     
   
    
});
            
            
       
             
            
    
              
                
                
     
            
       
        
        
        
        
       
        
          
        
        
        
    
       
   
    
       
          
       

           
        
        
       
        
        
       
          

   
