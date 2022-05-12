<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script>
function validation()
{
  var empid = document.forms["RegForm"]["empid"];
  var field=empid.value;
  var cemail = document.forms["RegForm"]["cemail"];
  var email=document.forms["RegForm"]["email"];
  var contact=document.forms["RegForm"]["contact"];
  var f=contact.value;
  
   if (field.length!=5)                                 
    {
        alert("Invalid Employee ID.");
        empid.focus();
        return false;
    }
        if (cemail.value.indexOf("@", 0) < 0)                
    {
        window.alert("Please enter a valid e-mail address.");
        cemail.focus();
        return false;
    }
  
    if (cemail.value.indexOf(".", 0) < 0)                
    {
        window.alert("Please enter a valid e-mail address.");
        cemail.focus();
        return false;
    }
        if (email.value.indexOf("@", 0) < 0)                
    {
        window.alert("Please enter a valid e-mail address.");
        email.focus();
        return false;
    }
  
    if (email.value.indexOf(".", 0) < 0)                
    {
        window.alert("Please enter a valid e-mail address.");
        email.focus();
        return false;
    }
    if (f.length!=10)                                 
    {
        alert("Invalid Contact Number.");
        contact.focus();
        return false;
    }
     re = /^\w+$/;
    if(RegForm.psw.value != "" && RegForm.psw.value == RegForm.psw1.value) {
      if(RegForm.psw.value.length < 6) {
        alert("Error: Password must contain at least six characters!");
        RegForm.psw.focus();
        return false;
      }
      re = /[0-9]/;
      if(!re.test(RegForm.psw.value)) {
        alert("Error: password must contain at least one number (0-9)!");
        RegForm.psw.focus();
        return false;
      }
      re = /[a-z]/;
      if(!re.test(RegForm.psw.value)) {
        alert("Error: password must contain at least one lowercase letter (a-z)!");
        RegForm.psw.focus();
        return false;
      }
      re = /[A-Z]/;
      if(!re.test(RegForm.psw.value)) {
        alert("Error: password must contain at least one uppercase letter (A-Z)!");
        RegForm.psw.focus();
        return false;
      }
    }
    else{
        alert("Re-enter the Same password!");
        RegForm.psw1.focus();
        return false;
    }
    
}
</script>
        <style>
            mark { 
    background-color: lightsteelblue;
    color: white;
}
        * {
    box-sizing: border-box;
}

input[type=text], select, textarea {
    width: 100%;
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 4px;
    resize: vertical;
}
input[type=number], select, textarea {
    width: 100%;
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 4px;
    resize: vertical;
}
input[type=date], select, textarea {
    width: 100%;
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 4px;
    resize: vertical;
}
input[type=email], select, textarea {
    width: 100%;
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 4px;
    resize: vertical;
}
input[type=password], select, textarea {
    width: 100%;
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 4px;
    resize: vertical;
}
label {
    padding: 12px 12px 12px 0;
    display: inline-block;
}

input[type=submit] {
    background-color: #4CAF50;
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    float: right;
}

input[type=submit]:hover {
    background-color: #45a049;
}

.container {
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 20px;
}

.col-25 {
    float: left;
    width: 25%;
    margin-top: 6px;
}

.col-75 {
    float: left;
    width: 75%;
    margin-top: 6px;
}

/* Clear floats after the columns */
.row:after {
    content: "";
    display: table;
    clear: both;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width:300px) {
    .col-25, .col-75, input[type=submit] {
        width: 100%;
        margin-top: 0;
    }
}
</style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration Form</title>
    </head>
    <body>
        <h1 align="center"><mark>EMPLOYEE REGISTRATION</mark></h1>
        <h2><u>GENERAL DETAILS</u></h2>
        <div class="container">
      <form name="RegForm" action="Reg1.jsp" onsubmit="return validation()" method="post">
      <div class="row">
      <div class="col-25">
          <label for="empid">EMPLOYEE ID:<sup>*</sup></label>
      </div>
      <div class="col-75">
          <input type="text" id="empid" name="empid" placeholder="EMPLOYEE ID.." required>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
          <label for="fname">FIRST NAME:<sup>*</sup></label>
      </div>
      <div class="col-75">
          <input type="text" id="fname" name="fname" placeholder="FIRST NAME.." required>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="lname">LAST NAME:<sup>*</sup></label>
      </div>
      <div class="col-75">
          <input type="text" id="lname" name="lname" placeholder="LAST NAME.." required>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="gender">GENDER:<sup>*</sup></label>
      </div>
      <div class="col-75">
         <input type="radio" name="gender" value="male" checked> MALE
  <input type="radio" name="gender" value="female"> FEMALE
  <input type="radio" name="gender" value="other"> OTHER<br>
      </div>
    </div>
      <div class="row">
      <div class="col-25">
          <label for="bplace">BIRTH PLACE:<sup>*</sup></label>
      </div>
      <div class="col-75">
          <input type="text" id="bplace" name="bplace" placeholder="BIRTH PLACE.." required>
      </div>
    </div>
      <div class="row">
      <div class="col-25">
        <label for="ms">MARITAL STATUS:<sup>*</sup></label>
      </div>
      <div class="col-75">
          <select id="ms" name="ms" required>
          <option value="single">SINGLE</option>
          <option value="married">MARRIED</option>
          <option value="divorcee">DIVORCEE</option>
          <option value="widow">WIDOW</option>
          <option value="other">OTHER</option>
        </select>
      </div>
    </div>
      <div class="row">
      <div class="col-25">
          <label for="fname">DATE OF BIRTH:<sup>*</sup></label>
      </div>
      <div class="col-75">
          <input type="date" id="dob" name="dob" required>
      </div>
    </div>
      <div class="row">
      <div class="col-25">
        <label for="bg">BLOOD GROUP:<sup>*</sup></label>
      </div>
      <div class="col-75">
          <select id="bg" name="bg" required>
    <option>A+</option>
    <option>A-</option>
    <option>A UNKNOWN</option>
    <option>B+</option>
    <option>B-</option>
    <option>B UNKNOWN</option>
    <option>AB+</option>
    <option>AB-</option>
    <option>AB UNKNOWN</option>
    <option>O+</option>
    <option>O-</option>
    <option>O UNKNOWN</option>
    <option>OTHER</option>
        </select>
      </div>
    </div>
      <div class="row">
      <div class="col-25">
        <label for="rel">RELEGION:<sup>*</sup></label>
      </div>
      <div class="col-75">
          <select id="rel" name="rel" required>
          <option value="islam">ISLAM</option>
          <option value="christianity">CHRISTIANITY</option>
          <option value="hinduism">HINDUISM</option>
          <option value="budhhism">BUDHHISM</option>
          <option value="sikhism">SIKHISM</option>
          <option value="jainism">JAINISM</option>
          <option value="other">OTHER</option>
        </select>
      </div>
    </div>
         <h2><u>OFFICE DETAILS</u></h2>
        <div class="container">
      <div class="row">
      <div class="col-25">
          <label for="id">DATE OF JOIN:<sup>*</sup></label>
      </div>
      <div class="col-75">
         <input type="date" id="doj" name="doj" required>
      </div>
    </div>
             <div class="row">
      <div class="col-25">
        <label for="dept">DEPARTMENT:<sup>*</sup></label>
      </div>
      <div class="col-75">
          <select id="dept" name="dept" required>
          <option value="PO10">PRODUCTION</option>
          <option value="PR11">PURCHASE</option>
          <option value="IT12">IT</option>
          <option value="RS13">RESEARCH</option>
          <option value="FN14">FINANCE</option>
          <option value="MR15">MARKETING</option>
        </select>
      </div>
    </div>
             <div class="row">
      <div class="col-25">
          <label for="cemail">COMPANY E-MAIL:<sup>*</sup></label>
      </div>
      <div class="col-75">
          <input type="text" id="cemail" name="cemail" placeholder="E-MAIL.." required>
      </div>
    </div>
                  <div class="row">
      <div class="col-25">
          <label for="pos">POSITION:<sup>*</sup></label>
      </div>
      <div class="col-75">
          <input type="text" id="pos" name="pos" placeholder="POSITION.." required>
      </div>
    </div>
                  <div class="row">
      <div class="col-25">
          <label for="cabin">CABIN NO.:<sup>*</sup></label>
      </div>
      <div class="col-75">
          <input type="text" id="cabin" name="cabin" placeholder="CABIN NO..." required>
      </div>
    </div>
        </div>
        <h2><u>CONTACT DETAILS</u></h2>
        <div class="container">
      <div class="row">
      <div class="col-25">
          <label for="contact">CONTACT NO.:<sup>*</sup></label>
      </div>
      <div class="col-75">
          <input type="text" id="contact" name="contact" placeholder="CONTACT DETAILS.." required>
      </div>
    </div>
       <div class="row">
      <div class="col-25">
          <label for="email">EMAIL ID:<sup>*</sup></label>
      </div>
      <div class="col-75">
          <input type="text" id="email" name="email" placeholder="E-MAIL.." required>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
          <label for="addr">RESIDENCE ADDRESS (WITH PIN CODE)<sup>*</sup></label>
      </div>
      <div class="col-75">
          <textarea id="addr" name="addr" style="height:200px" required></textarea>
      </div>
    </div>
    </div>
        <h2><u>LOGIN DETAILS</u></h2>
         
      <div class="row">
      <div class="col-25">
          <label for="lid">LOGIN ID:<sup>*</sup></label>
      </div>
      <div class="col-75">
          <p>Login ID is your Employee ID.</p>
      </div>
      </div>
      <div class="row">
      <div class="col-25">
          <label for="psw">PASSWORD:<sup>*</sup></label>
      </div>
      <div class="col-75">
          <input type="password" id="psw" name="psw" placeholder="YOUR PASSWORD.." required>
      </div>
    </div>
             <div class="row">
      <div class="col-25">
          <label for="psw1">RE-ENTER PASSWORD:<sup>*</sup></label>
      </div>
      <div class="col-75">
          <input type="password" id="psw1" name="psw1" placeholder="RE-ENTER PASSWORD.." required>
      </div>
    </div>
        <input type="submit" value="SUBMIT">
</form>
        </div>
    </body>
</html>
