function validateform()
{
    let fname=document.form.fname.value;
    let lname=document.form.lname.value;
    let email=document.form.email.value;
    let pswd=document.form.pswd.value;
    let cpsw=document.form.c_pswd.value;
    var c_email= /^[a-zA-Z0-9]+(?:\.[a-zA-Z0-9]+)*@[a-zA-Z0-9]+(?:\.[a-zA-Z0-9]+)*$/; 
    if(fname==""){
        document.getElementById("firstn").style.display = "block";
        document.getElementById("firstn").innerHTML = "First name must be filled";
        return false;
    }
    else if (lname==""){
        document.getElementById("lastn").style.display = "block";
        document.getElementById("lastn").innerHTML = "Last name must be filled";
        return false;
    }
    else if(email==""){
        document.getElementById("mail").style.display = "block";
        document.getElementById("mail").innerHTML = "Email must be filled";
        return false;
    } else if(! c_email.test(email)){
        document.getElementById("mail").style.display = "block";
        document.getElementById("mail").innerHTML="Email must be in correct pattern";
        return false;
    }
    else if(pswd==""){
        document.getElementById("password").style.display = "block";
        document.getElementById("password").innerHTML = "Password must be filled";
        return false;
    }
    else if(cpsw==""){
        document.getElementById("c_password").style.display = "block";
        document.getElementById("c_password").innerHTML = "confirm password must be filled";
        return false;
    }
    else if (pswd!=cpsw){
        document.getElementById("c_password").style.display = "block";
        document.getElementById("c_password").innerHTML = "Password and Confirm password must be same";
        return false;
    }
    else{
       return true;
    }
}
function keyfunction(){
    document.getElementById("firstn").style.display = "none";
    document.getElementById("lastn").style.display = "none";
    document.getElementById("mail").style.display = "none";
    document.getElementById("password").style.display = "none";
    document.getElementById("c_password").style.display = "none";
}


       

        


