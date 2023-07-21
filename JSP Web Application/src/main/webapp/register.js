
// //  first name
// function a(){
//     var x= document.getElementById("fname").value;
//     var regx=/^[a-zA-Z]{3,20}$/;                                       //regular exp
//     if(regx.test(x)){
//         alert("Valid");
//     }
//     else{
//         alert("Invalid");
//     }
// }

// // last name
// function b(){
//     var x= document.getElementById("lname").value;
//     var regx=/^[a-zA-Z]{3,20}$/;                                       //regular exp
//     if(regx.test(x)){
//         alert("Valid");
//     }
//     else{
//         alert("Invalid");
//     }
// }




// // moblie number
// function c(){
//     var x= document.getElementById("mob").value;
//     var regx=/^[6-9][0-9]{9}$/;            // ^=Start , []=[Range1-Range2], {}={min,max} , $=End       //regular exp
//     if(regx.test(x)){
//         alert("Valid");
//     }
//     else{
//         alert("Invalid");
//     }
// }

// // Password
// function d(){
//     var x= document.getElementById("pass").value;
//     var regx=/^[a-zA-Z0-9!@#$%^&*+]{6,15}$/;            // ^=Start , []=[Range1-Range2], {}={min,max} , $=End 
//                                                //regular exp
//     if(regx.test(x)){
//         alert("Valid");
//     }
//     else{
//         alert("Invalid");
//     }
// }


//  Sign Up
function signup(){
    var a= document.getElementById("fname").value;
    var b= document.getElementById("lname").value;
    var regx=/^[a-zA-Z0-9!@#$%^&*+]{3,50}$/;
    var c= document.getElementById("mob").value;
    var regy=/^[6-9][0-9]{9}$/; 
    var d= document.getElementById("gmail").value;
    var e= document.getElementById("pass").value;
    var f= document.getElementById("cpass").value;
    var regz=/^[a-zA-Z0-9!@#$%^&*+]{6,15}$/;
    
   
//First Name
    if(a==""){
        document.getElementById("sfname").innerHTML="*username required";
        return false;
    }
    else if(regx.test(a)){
        document.getElementById("sfname").innerHTML="";
    }
    else{
        document.getElementById("sfname").innerHTML="*invalid username";
        return false;
    }
    
// Last Name
    if(b==""){
        document.getElementById("slname").innerHTML="*name required";
        return false;
    }
    else if(regx.test(b)){
        document.getElementById("slname").innerHTML="";
    }
    else{
        document.getElementById("slname").innerHTML="*invalid name";
        return false;
    }


// Mobile Number
    if(c==""){
        document.getElementById("smob").innerHTML="*mobile number required";
        return false;
    }
    else if(regy.test(c)){
        document.getElementById("smob").innerHTML="";
    }
    else{
        document.getElementById("smob").innerHTML="*invalid mobile number";
        return false;
    }

// Gmail
    if(d==""){
        document.getElementById("sgmail").innerHTML="*gmail required";
        return false;
    }
    else if(regy.test(c)){
        document.getElementById("sgmail").innerHTML="";
    }
    else{
        document.getElementById("smob").innerHTML="*invalid gmail id";
        return false;
    }

// Create Password
    if(e==""){
        document.getElementById("spass").innerHTML="*password required";
        return false;
    }
    else if(regz.test(e)){
        document.getElementById("spass").innerHTML="";
    }
    else{
        document.getElementById("spass").innerHTML="*invalid password created";
        return false;
    }

    // Confirm Password
    if(f==""){
        document.getElementById("scpass").innerHTML="*confirm password";
        return false;
    }
    else if(f==e){
        document.getElementById("scpass").innerHTML="";
    }
    else{
        document.getElementById("scpass").innerHTML="*password mismatched";
        return false;
    }
}