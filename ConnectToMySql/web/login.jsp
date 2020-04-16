<%-- 
    Document   : login
    Created on : 14 abr 2020, 22:47:14
    Author     : PCHP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Connect to mySql</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/solid.css">
        <style>
            /*body {
               background: url(img/ima-fondo.jpg) no-repeat center center fixed;
               background-size: cover;                
           }*/

            body {
                margin: 0;
                padding: 0;
                font-family: sans-serif;
                background: linear-gradient(to right, #15AEF5, #011E22);
            }
            .main-section {
                margin: 0 auto;
                margin-top: 25%;
                padding: 0;
            }

            .modal-content {
                background-color: captiontext;
                opacity: .85;
                padding: 0 20px;
                box-shadow: 0px 0px 3px black;
            }

            .user-img {
                margin-top: -50px;
                margin-bottom: 35px;
            }

            .user-img img {
                width: 100px;
                heigt: 100px;
                box-shadow: 0px 0px 3px black;
                border-radius: 50%;                
            }

            .form-group input {
                height: 42px;
                font-size: 18px;
                border:0;
                padding-left: 54px;
                border-radius: 5px;
            }          

            .form-group::before {
                font-family: "Font Awesome\ 5 Free";
                position: absolute;
                left: 28px;
                font-size: 22px;
                padding-top: 4px;
            }

            .form-group#user-group::before {
                content: "\f007";
            }

            .form-group#pass-group::before {
                content: "\f023";
            }

            button {
                width: 60%;
                margin: 5px 0 25px;
            }

            .forgot {
                padding: 5px 0;
            }

            .forgot a {
                color: white;
            }
        </style>
    </head>
    <body>
        <div class="modal-dialog text-center">
            <div class="col-sm-8 main-section">
                <div class="modal-content">
                    <div class="col-12 user-img">
                        <img src="img/user.png">
                    </div>
                    <div class="col-12">
                        <div class="form-group" id="user-group">
                            <input type="text" name="IdUser" id="idUser" class="form-control" placeholder="Usuario">
                        </div>
                        <div class="form-group" id="pass-group">
                            <input type="password" name="idPass" id="idPass" class="form-control" placeholder="Contraseña">
                        </div>
                        <button onclick="login();" class="btn btn-dark"><i class="fas fa-sign-in-alt"></i>   Ingresar</button>
                        <%--<button onclick="loginGuest();" class="btn btn-dark"><i class="fas fa-sign-in-alt"></i>   Invitado</button>--%>
                        <div class="col-12 forgot">
                            <a href="#">Olvide mi contraseña</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
    <script>
        function login() {
            var user = document.getElementById("idUser").value;
            var pass = document.getElementById("idPass").value;
            var xmlHttp = new XMLHttpRequest();
            xmlHttp.onreadystatechange = function () {
                if (xmlHttp.readyState == 4 && xmlHttp.status == 200)
                 if (this.responseText == "404") {
                     alert("Credenciales Incorrectas");
                 } else {
                    location.href = this.responseText
                 }                 
            }
            xmlHttp.open("GET", "<%=request.getContextPath()%>/UserServlet?user=" + user + "&pass=" + pass, true);
            xmlHttp.send(null);
        }
    </script>
    <%--  <script>
      function log() {
          var user1 = document.getElementById("idUser").value;
          var pass1 = document.getElementById("idPass").value;
          let xhr = new XMLHttpRequest();
          xhr.open("GET", "<%=request.getContextPath()%>/UserServlet?user=" + user1 + "&pass=" + pass1, true);
          try {
              xhr.send();
              if (xhr.status != 200) {
                  alert(`Error ${xhr.status}: ${xhr.statusText}`);
              } else {
                  alert(xhr.response);
              }
          } catch (err) { // instead of onerror
              alert("Request failed");
          }
      }
  </script>
  <script>
      function loginGuest() {
         location.href = "<%=request.getContextPath()%>/UserGuestServlet?";
      }
  </script>
    --%>
</html>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<script src="https://use.fontawesome.com/releases/v5.0.7/js/all.js"></script>
