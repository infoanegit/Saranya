<cfoutput>
    <!DOCTYPE html>
    <html>
        <head>
            <title>List_page</title>
            <link rel="stylesheet" href="./asset/css/style.css">
            <script src="./asset/js/jquery.min.js"></script>
            <script src="./asset/js/ajax_crud.js"></script>
        </head>
        <body>
            <div class="container  p-5 mt-5 w-75 " style="border: 20px solid   ##013348;background-color:black;">
                <div class="row align-items-start">
                    <div class="text-center fs-2 fw-bold   p-2 my-1   align-items-start" style="color:white;"><u>Details Page</u></div>
                </div>
                <form method="post" name="form" id="form" >
                    <div class="form">
                        <table class="table table-bordered">
                            <thead>
                                <tr style="color:white;">
                                    <th>Firstname</th>
                                    <th>Lastname</th>
                                    <th>Email</th>
                                    <th>Gender</th>
                                    <th>Age</th>
                                    <th>Location</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody style="color:white">
                                
                            </tbody>
                        </table>
                        <div class="row float-end">
                            <div class="col-sm-4">
                                <input type="submit" name="Add" value="Add new" class="btn btn-outline-info" id="Add">
                            </div>
                        </div>
                    </form>
                </div>
                <script>
                    $(document).ready(function(){
                        $.ajax({
                            type:'GET',
                            url:'ajax_crud.cfc',
                            dataType: "json",
                            data:{
                                method:"Getdata"
                            },
                            success:function(result){
                                for ( i=0; i < result.DATA.length; i++) {
                                    var details=result.DATA[i];
                                    $('tbody').append('<tr><td>' + details[1] + '</td><td>'+details[2]+'</td><td>'+details[3]+'</td><td>'+details[4]+'</td><td>'+details[5]+'</td><td>'+details[6]+'</td><td ><button type="button" style="margin: 4px;" name="edit" value="edit" class="btn btn-outline-primary edit" id="edit" data-id='+details[0]+'>EDIT</button><button type="button" name="delete" style="margin: 3px;" class="btn btn-outline-danger delete" id="delete" data-id='+details[0]+'>DELETE</button></td></tr>')                       
                                }
                                $(".delete").on('click',function(){
                                    var id=$(this).attr('data-id');
                                    alert("Do you want to delete data");
                                    let url = window.location.href;
                                    window.location.href=url +(url.split('?')[1] ? '&':'?id=') + id;
                                    $.ajax({
                                        type:"POST",
                                        url:'ajax_crud.cfc',
                                        data:{
                                            id:id,
                                            method:"Deletedata"
                                        },
                                
                                        success: function () { 
                                            window.location.href='listpage.cfm'
                                        }
                                    })
                                    

                                })
                                $(".edit").on('click',function(){
                                    var id=$(this).attr('data-id');
                                    $.ajax({
                                        success:function (Getvalues) {
                                            window.location.href="index.cfm" +("index.cfm".split('?')[1] ? '&':'?id=') + id;
                                        }
                                    })
                                })    
                            }
                        })
                        $("##Add").on('click',function(){
                            $.ajax({
                                success:function(){
                                    window.location.href='index.cfm';
                                }
                            })
                        })
                    })
                </script>
            </div>
        </body>
    </html>
</cfoutput>
                       
                            
                            
                           
                                    
                                    
                                         
                                        
                            
                           
                        
                    
                    

                                
                                


                                
    