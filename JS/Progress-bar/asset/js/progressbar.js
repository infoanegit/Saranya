$(document).ready(function() {
    let incrementvalue = 0;
    let decrementvalue=100;
    
    function progress(value) {
        if(value=="increment" && incrementvalue<100){
            incrementvalue += 10; 
            $('#progress-bar').width(incrementvalue+"%").text(incrementvalue+"%");
        }
        else if(value=="decrement" && decrementvalue<=100){
            decrementvalue-=10;
            $('#progress-bar').width(decrementvalue+"%").text(decrementvalue+"%");
        }
    }
    
    $('.btn').click(function() {
        let value=$(this).attr('data-id');
        progress(value);
    });
        
    

});