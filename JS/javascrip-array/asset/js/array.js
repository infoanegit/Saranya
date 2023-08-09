function validateform(){

let text = document.form.array.value;
let position=document.form.pos_array.value;
let replace=document.form.rep_array.value;
let myArray = text.split(",");
myArray.splice(position-1,1,replace);
let array_regex=/^(\d|\w+( )*)(( )*,{1}( )*((\d|\w+(.){1}\d|\w+)|([\d|\w]+))( )*)+$/;

if(text==""){
    alert("Enter the array");
    return false;
}
else if(! array_regex.test(text)){
    alert("Enter correct text format");
    return false;
}

else if((myArray.length)>5){
    alert("length should not be more than 5");
    return false;
}
else if(position==""){
    alert("Enter the position");
    return false;
}
else if (isNaN(position) || position < 1 || position > 5){
    alert("Enter a valid position");
    return false;
}
else if(replace==""){
    alert("Enter replace value");
    return false;
}
else if(/[^0-9]|^0+(?!$)/g.test(position)){
    alert("Only numeric value allowed in position");
    return false;
}
else{
    document.getElementById("modified").innerHTML=myArray.toString();
    document.getElementById("given").innerHTML=text;
    return false;
}
}
function reset(){
    document.getElementById("array").style.display="none";
    document.getElementById("pos_array").style.diplay="none";
    document.getElementById("rep_array").style.display="none";
    document.getElementById("given").style.display="none";
    document.getElementById("modified").style.display="none";
}



            