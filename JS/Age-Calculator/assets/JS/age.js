$(document).ready(function(){
    $("#age_calc").click(function(){

   
    var dob = new Date($('#age').val());
    let today=new Date();
    var age = today.getFullYear() - dob.getFullYear();
    var c_month = today.getMonth();
    var b_month=dob.getMonth();
    var month=  today.getMonth() - dob.getMonth();
    var date =today.getDate() -dob.getDate();
    var week=dob.toLocaleDateString('en-IN', { weekday: 'long' });
    var s_month=dob.toLocaleDateString('en-IN', { month: 'long' });
    if (c_month < b_month ||( month == 0 && today.getDate()<dob.getDate())) {
       age--;
       month=(12-dob.getMonth())+today.getMonth();
    }
    
    if(date<0){
        month--;
        var lastmonth = new Date(today.getFullYear(), c_month, 0).getDate();
        var date=lastmonth-today.getDate()+dob.getDate();
    }
        
    $('#current_age').html("You are  "+age+"years,"+month+"months,"+date+"days old.").css("color","green");
    $("#dob").text("You were Born on "+week+" "+s_month+" "+dob.getDate()+" "+dob.getFullYear()+".").css("color","green");
    
    
});
});
    
    
    
    
    
    
