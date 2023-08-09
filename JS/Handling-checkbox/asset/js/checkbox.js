$(document).ready(function() {
     $('#Toggle').click(function() {
     $('input:checkbox').each(function() {
            this.checked = !this.checked;
        });
     });
    $("#Check_All").click(function(){
        
        $('input:checkbox').prop('checked', true);
        
    });
    $("#Uncheck_All").click(function(){
        
        $('input:checkbox').prop('checked', false);
        
    });
        
    
});
