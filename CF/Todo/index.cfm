<cfoutput>
    <!DOCTYPE html>
    <html style="background-color:aliceblue;">
        <head>
            <title>Todo</title>
            <link rel="stylesheet" href="./asset/css/style.css">
            <script src="./asset/js/jquery.min.js"></script>
        </head>
        <body style="background-color: aliceblue;" >
            <div class="row align-items-start">
                <div class="text-center p-2 my-1  align-items-start" style="color:rgba(175, 47, 47, 0.15);font-size:100px;">todos</div>
            </div>
            <div class="container w-50 mt-2 p-3">
                <div class="row mb-3 mt-3">
                    <div class="col-md-2"></div> 
                    <!---<p id="toggle">t<p> --->
                    <input type="text" class="form-control w-75 input_text" id="input_text" name="input_text" style="font-style: italic;" placeholder="What needs to be done?">
                </div>
                <div class="row mb-3 mt-3 list_box" >
                    <!--- <div class="col-md-2 ">
                    </div> 
                    <div class="col-md-1">
                        <input class="form-check-input" style="width: 2em;height: 2em;border-radius: 1.25em;" type="checkbox" value="" id="checkbox">
                    </div>
                    <div class="col-md-7">
                        <div id="text">Text</div>
                    </div>
                    <div class="col-md-1 mt-2">
                        <button type="button" class="btn-close closebtn" aria-label="Close" id="closebtn"></button>
                    </div> --->
                </div>    
                <div class="row mb-3 mt-5 footer_keys">
                    <div class="col-md-1"></div>
                    <div class="col-md-3 mt-2 text-center">
                        <p id="count_active" style="font-size:14px;"></p>
                    </div>
                    <div class="col-md-1">
                        <button type="button" class="btn btn-outline-dark btn-sm text-danger" id="All">All</button>
                    </div>
                    <div class="col-md-1">
                        <button type="button" class="btn btn-outline-dark btn-sm text-danger" id="Active">Active</button>
                    </div>
                    <div class="col-md-3">
                        <button type="button" class="btn btn-outline-dark btn-sm text-danger" id="Completed">Completed</button>
                    </div>
                    <div class="col-md-3 float-end">
                        <a class="clear_completed" id="clear_completed" style="color: black;">Clear completed</button>
                    </div>
                </div>
            </div>
        </body>
    </html>
    <script>
        $(document).ready(function(){
            window.location.href="index.cfm" +("index.cfm".split('?')[1] ? '&':'##/all');
            getdata();
            clearcomplete();
            $('##input_text').keypress(function(event){
                var Task=$("##input_text").val();
                var Isactive= 1;
                var keycode = (event.keyCode ? event.keyCode : event.which);
                var date= new Date();
                if(keycode == 13 && Task!= ""){
                    clearcomplete();
                    $(".footer_keys").show();
                    $.ajax({
                        type:"POST",
                        url:'todo.cfc',
                        data:{
                            task:Task,active:Isactive,date:date,
                            method:'Insertdata'
                        },
                        success: function () {
                            getdata();
                            footerkey();
                        }
                    })
                    $("##input_text").val("");
                }
            })
          
            // $("##toggle").on('click',function() {
            //     toggle();
            // });
            
            // function toggle(){
            //     $('input[name="check"]').prop('checked', true);
            //     $("##toggle").on('click',function() {
            //         $('input[name="check"]').each(function() {
            //         this.checked = !this.checked;
            //         if(this.checked){}
            //         });
            //     });
                
            // }  

            //checkbox
            $(document).on('click','input[name="check"]',function(){
                var Isactive_id=$(this).attr('data-id');
                if(this.checked){
                    var Isactive=0;
                    $(this).parent('div').next().css('text-decoration','line-through');
                }
                else if(! this.checked){
                   var Isactive=1;
                   $(this).parent('div').next().css('text-decoration','none');
                }
                
                $.ajax({
                    type:'POST',
                    url:'todo.cfc',
                    data:{
                        task_id:Isactive_id,active:Isactive,
                        method:"UpdateData"
                    },
                    success:function(){
                        // clearcomplete();
                        countvalues();
                        // getdata();
                        var id= window.location.href;
                        var idvalue=id.split('##/')[1];
                        if(idvalue == 'completed'){
                            completed();
                            clearcomplete();
                        }
                        else if(idvalue == 'active'){
                            active();
                            clearcomplete();
                        }
                        else{
                            getdata();
                        }
                    }
                    
                })
            })
           
            //All button
            $('##All').on('click',function(){
                window.location.href="index.cfm" +("index.cfm".split('?')[1] ? '&':'##/all');
                clearcomplete();
                getdata();
                footerkey();
            })
                
            //Active button
            $("##Active").on('click',function(){
                window.location.href="index.cfm" +("index.cfm".split('?')[1] ? '&':'##/active');
                clearcomplete();
                active();
            })

            //complete button
            $("##Completed").on('click',function(){
                window.location.href="index.cfm" +("index.cfm".split('?')[1] ? '&':'##/completed');
                completed();
            })

            //clear ompleted button
            $("##clear_completed").on('click',function(){
                $.ajax({
                    type:'POST',
                    url:'todo.cfc',
                    data:{
                        method:'Deletedata'
                    },
                    success:function(result){
                        footerkey();
                        countvalues();
                        var id= window.location.href;
                        var idvalue=id.split('##/')[1];
                        if(idvalue == 'completed'){
                            completed();
                            clearcomplete();
                        }
                        else{
                            getdata();
                        }
                    }
                })
            })

            //closebutton                
            $(document).on('click','.closebtn',function(){
                var deleteval_id=$(this).attr('data-id');
                $.ajax({
                    type:'POST',
                    url:'todo.cfc',
                    data:{
                        id:deleteval_id,
                        method:'deleteId'
                    },
                    success:function(){
                        var id= window.location.href;
                        var idvalue=id.split('##/')[1];
                        if(idvalue == 'completed'){
                            completed();
                            clearcomplete();
                        }
                        else if(idvalue == 'active'){
                            active();
                            clearcomplete();
                        }
                        else{
                            getdata();
                        }
                    }
                })
            })

            function active(){
                $.ajax({
                    type:'GET',
                    url:'todo.cfc',
                    dataType:'json',
                    data:{
                        method:'ActiveData'
                    },
                    success:function(Activedata){
                        footerkey();
                        countvalues();
                        // console.log(Activedata);
                        $('.list_box').empty();
                        for(i=0;i< Activedata.DATA.length;i++){
                            var Active_task=Activedata.DATA[i];
                            $(".list_box").append('<div class="col-md-2 mt-3" ></div> <div class="col-md-1"><input class="form-check-input check mt-2" style="width:1em;height:1em;border-radius: 1.25em;" type="checkbox" name="check" id="checkbox" data-id='+Active_task[0]+'  style="margin:3px;" '+ (Active_task[2] == '0' ? 'checked' : '') +'></div><div class="col-md-7 mt-2"><div id="text" style="font-size:16px;font-style:italic;" data-id='+Active_task[0]+'>'+Active_task[1]+'</div><hr></div><div class="col-md-1 mt-2"><button type="button" class="btn-close btn-sm closebtn" style="height:0em;width:0em;" data-id='+Active_task[0]+' aria-label="Close"></button></div>')
                        }
                    }
                })
            }
            
            //completed task            
            function completed(){
                $.ajax({
                    type:'GET',
                    url:'todo.cfc',
                    dataType:'json',
                    data:{
                        method:'CompletedData'
                    },
                    success:function(Completeddata){
                        // console.log(Completeddata);
                        $('.list_box').empty();
                        for(i=0;i< Completeddata.DATA.length;i++){
                            var Completed_task=Completeddata.DATA[i];
                            $(".list_box").append('<div class="col-md-2 mt-3"></div> <div class="col-md-1"><input class="form-check-input check mt-2" style="width:1em;height:1em;border-radius: 1.25em;" type="checkbox" name="check" id="checkbox" data-id='+Completed_task[0]+'  style="margin:3px;" '+ (Completed_task[2] == '0' ? 'checked' : '') +'></div><div class="col-md-7 mt-2"><div id="text" style="font-size:16px;font-style:italic;text-decoration:line-through" data-id='+Completed_task[0]+'>'+Completed_task[1]+'</div><hr></div><div class="col-md-1 mt-2"><button type="button" class="btn-close closebtn" style="height:0em;width:0em;" aria-label="Close" data-id='+Completed_task[0]+'></button></div>')
                        }
                        footerkey();
                    }
                })
            }
                        
            //count isactive        
            function countvalues(){
                $.ajax({
                    type:"GET",
                    url:"todo.cfc",
                    dataType:"json",
                    data:{
                        method:"Getcount"
                    },
                    success:function(count){
                        var Count_active=count.DATA[0];
                        $("##count_active").text(Count_active +"  items left").css();
                    }
                })
            }
                    
            function getdata(){
                $.ajax({
                    type:'GET',
                    url:'todo.cfc',
                    dataType: "json",
                    data:{
                        method:'Getdata'
                    },
                    success:function(getvalues){
                        footerkey();
                        $('.list_box').empty();
                        countvalues();
                        clearcomplete();
                    
                        for(i=0 ;i< getvalues.DATA.length;i++){
                            var Details=getvalues.DATA[i];
                            // console.log(Details[2]);
                            $(".list_box").append('<div class="col-md-2 mt-3"></div> <div class="col-md-1"><input class="form-check-input check mt-2" style="width:1em;height:1em;border-radius: 1.25em;" type="checkbox" name="check" id="checkbox" data-id='+Details[0]+'  style="margin:3px;" '+ (Details[2] == '0' ? 'checked' : '') +'></div><div class="col-md-7 mt-2"><div id="text"'+(Details[2] == '0' ?'style="text-decoration:line-through"':'')+' style="font-size:16px;font-style:italic" data-id='+Details[0]+'>'+Details[1]+'</div><hr></div><div class="col-md-1 mt-2"><button type="button" class="btn-close closebtn" data-id='+Details[0]+' style="height:0em;width:0em;" aria-label="Close"></button></div>')

                            if('input[name="check"].checked'){
                                $(this).parent('div').next().css('text-decoration','line-through');
                            }
                        }
                    }
                })  
            }

            //doubleclick            
            $(document).on('dblclick','##text',function(){
                var id=$(this).attr('data-id');
                var value=$(this).html();
                $(this).html('<input type="text" class="form-control update"  value='+value+'>');
                $(this).keypress(function(event){
                    var inputdata=$('.update').val();
                    $(value).html(inputdata);
                    var keycode = (event.keyCode ? event.keyCode : event.which);
                    var date= new Date();
                    if(keycode == 13){
                        // alert(inputdata);
                        // console.log(1);
                        $.ajax({
                            type:"POST",
                            url:'todo.cfc',
                            data:{
                                id:id,task:inputdata,update_date:date,
                                method:'Updateiddata'
                            },
                            success: function () {
                                getdata();
                            }
                        })
                    }
                })
            })

            //clear complete button                
            function clearcomplete(){
                $.ajax({
                    type:"GET",
                    url:"todo.cfc",
                    dataType:"json",
                    data:{
                        method:"Getcountcompleted"
                    },
                    success:function(count){
                        // console.log(count.DATA[0]);
                        if(count.DATA[0] == 0){
                            $('.clear_completed').hide();
                        }
                        else{
                            $('.clear_completed').show();
                        }
                    }
                })
            }

            //footerkeys 
            function footerkey(){
                $.ajax({
                    type:"GET",
                    url:"todo.cfc",
                    dataType:"json",
                    data:{
                        method:"getval"
                    },
                    success:function(idresult){
                        if(idresult.DATA[0] == 0){
                            $(".footer_keys").css('display','none');
                        }
                        else{
                            $(".footer_keys").show();
                        }
                    }
                })
            }
        }); 
                        

    </script>
</cfoutput>
        
            
                            
            
                

            
            
                
                
                
                    
          
            

                            
                        

                            
                           
                    
                   


                    
                    
                           
                   
                   
                    
                    
                    
                
                

               
                
            
            
                             
                            
                       
                        
                           
                    
                   
                    
                    

                        
                            
                           
                        
