$(document).ready(function(){
    var cake = 0;
    var total = 0;
    var candle=0;
    var inscription=0;
    var filling=0;
    $("input:radio").click(function(){
        total=0+parseInt(filling);
        cake=$(this).data('id');
        total = total + parseInt(cake);
        $("#total").text(total+"$");
    })

    $("#filling").click(function(){
        total=0+parseInt(cake);
        filling=$(this).val();
        total = total+ parseInt(filling);
        $("#total").text(total+"$");
        
})        
$("#candle").click(function(){
    candle=$(this).data('id');
    
    if($("#candle").prop('checked')==true){
        
        total=total+ parseInt(candle);
    }
    else if($("#candle").prop('checked')==false){
        total=total - parseInt(candle);
    }
    $("#total").text(total+"$");
})
        
$("#inscription").click(function(){
    inscription=$(this).data('id');
    if($("#inscription").prop('checked')==true){
        
        $("#textbox").prop('disabled',false );
        total=total+ parseInt(inscription);
    
    }
    else if($("#inscription").prop('checked')==false){
        $("#textbox").prop('disabled',true );
        total=total-parseInt(inscription);
    }
$("#total").text(total+"$");

})
        
})
        

        

        