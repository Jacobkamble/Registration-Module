<%-- 
    Document   : signup
    Created on : 25-Jan-2022, 2:41:24 pm
    Author     : jacob
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
            
        
    </head>
    <body style="background: url(img/download.jpg);background-size: cover;background-attachment: fixed">
        <div class="container">
            <div class="row">
                <div class="col m8 offset-m2">
                    <div class="card">
                        <div class="card-content">
                            <h3 style="margin-top: 10px;" class="center-align"> Register here...!!!</h3>
                            <h5 id="msg" class="center-align"></h5>
                            
                            <div class="form center-align">
                                <form action="Register" method="post" id="myform">
                                    
                                    <input type="text" name="user_name" placeholder="Enter user name"/>
                                    <input type="password" name="user_password" placeholder="Enter user password"/>
                                    <input type="email" name="user_email" placeholder="Enter user email"/>
                                    <button type="submit" class="btn">Submit</button>
                                    
                                    
                                    
                                </form>
                                
                            </div>
                            <div class="loader center-align" style="margin-top: 10px; display :none;">
                                
                                <div class="preloader-wrapper big active">
      <div class="spinner-layer spinner-blue">
        <div class="circle-clipper left">
          <div class="circle"></div>
        </div><div class="gap-patch">
          <div class="circle"></div>
        </div><div class="circle-clipper right">
          <div class="circle"></div>
        </div>
      </div>

      <div class="spinner-layer spinner-red">
        <div class="circle-clipper left">
          <div class="circle"></div>
        </div><div class="gap-patch">
          <div class="circle"></div>
        </div><div class="circle-clipper right">
          <div class="circle"></div>
        </div>
      </div>

      <div class="spinner-layer spinner-yellow">
        <div class="circle-clipper left">
          <div class="circle"></div>
        </div><div class="gap-patch">
          <div class="circle"></div>
        </div><div class="circle-clipper right">
          <div class="circle"></div>
        </div>
      </div>

      <div class="spinner-layer spinner-green">
        <div class="circle-clipper left">
          <div class="circle"></div>
        </div><div class="gap-patch">
          <div class="circle"></div>
        </div><div class="circle-clipper right">
          <div class="circle"></div>
        </div>
      </div>
    </div>
                                
                                <h5>Please wait...</h5>
                                
                            </div>
                            
                            
                            
                            
                        </div>
                        
                        
                        
                        
                        
                        
                    </div>
                    
                    
                    
                    
                    
                    
                </div>
                
                
                
                
            </div>
            
            
        </div>
        
        <script
  src="https://code.jquery.com/jquery-3.6.0.min.js"
  integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
  crossorigin="anonymous"></script>
  <script>
      $(document).ready(function(){
          
          console.log("page is ready....");
          
          $("#myform").on('submit',function(event){
              event.preventDefault();
              
        f = $(this).serialize();
        console.log(f);
              
              $(".loader").show();
              $(".form").hide();
              
              $.ajax({
                  url:"Register",
                  data:f,
                  type:'POST',
                  success:function(data,textStatus,jqXHR){
                 console.log(data);
                 console.log("success...");
                 
                  $(".loader").hide();
              $(".form").show();
              if(data.trim()==='done'){
                  $('#msg').html("Successfully Registered");
                  $("#msg").addClass('green-text');
              }
              else{
                  $('#msg').html("Something went wrong");
                  
                   $('#msg').addClass('red-text');
              }
    
    },
    error: function(jqXHR,textStatus,errorThrown){
       console.log(data);
       console.log("eror....");
       
         $(".loader").hide();
              $(".form").show();
               $('#msg').html("Something went wrong");
               $('#msg').addClass('red-text');
    }
                  
                  
                  
              });
          });
      });
  </script>>
    </body>
</html>
