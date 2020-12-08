<%@page import="java.sql.ResultSet"%>
<%@page import="main.PgConnection"%>
<%@page import="java.io.IOException"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.util.Properties"%>
<%@page import="java.io.File"%>
<%
    String err="",agence="Agence";
    try {
         PgConnection con = new PgConnection();
         ResultSet r = con.getStatement().executeQuery("SELECT value FROM t_basic_par where name='BRANCH_NAME';");
         if (r.next()){
             agence=r.getString("value");
         }
    } catch (Exception e) {
        err= "<h3>"+e.getMessage()+"</h3>";
    }

%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8"/>
        <title>Accueil</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="css/bg.css" rel="stylesheet" type="text/css"/>
        <link href="css/dashboard.css" rel="stylesheet" type="text/css"/>
        <link rel="icon" type="image/png" href="./img/favicon-32x32.png">
    </head>
    <body>
        <%= err%>

        <div class='ripple-background'>
            <div class='circle xxlarge shade1'></div>
            <div class='circle xlarge shade2'></div>
            <div class='circle large shade3'></div>
            <div class='circle mediun shade4'></div>
            <div class='circle small shade5'></div>
        </div>
        <div class="container">
            <h1 class="  "><%= agence %></h1>
            
            <div class="services">
                    <div class="service">
                        <a href="/QStates" class="service-link">
                            <div class="frame">
                                <div class="service-icon">
                                    <span class="">
                                        <img src="img/rapport.png" class="" height="128" width="128" alt="" />
                                    </span>
                                </div>
                                <h4>QStates</h4>
                                <p>Rapport des Tickets.</p>
                            </div>
                        </a>
                    </div>
                    <div class="service">
                        <a href="/mng" class="service-link">
                            <div class="frame">
                                <div class="service-icon">
                                    <span class="">
                                        <img src="img/mng.png"  class="" height="128" width="128" alt="" />
                                    </span>
                                </div>
                                <h4>Management</h4>
                                <p>Management d'application.</p>
                            </div>
                        </a>
                    </div>
                    <div class="service">
                        <a href="https://www.marocnst.ma/client-login" class="service-link">
                            <div class="frame">
                                <div class="service-icon">
                                    <span class="">
                                        <img src="img/recla.png" class="" height="128" width="128" alt="" />
                                    </span>
                                </div>
                                <h4>Réclamation</h4>
                                <p>Ecrire une lettre de réclamation.</p>
                            </div>
                        </a>
                    </div>
                    <div class="service">
                        <a href="/CallPad" class="service-link">
                            <div class="frame">
                                <div class="service-icon">
                                    <span class="">
                                        <img src="img/megaphone.png" class=""  height="128" width="128" alt="" />
                                    </span>
                                </div>
                                <h4>CallPad</h4>
                                <p>Appel des Tickets.</p>
                            </div>
                        </a>
                    </div>
                    <div class="service">
                        <a href="/server" class="service-link">
                            <div class="frame">
                                <div class="service-icon">
                                    <span class="">
                                        <img src="img/server.png" class="" height="128" width="128" alt="" />
                                    </span>
                                </div>
                                <h4>Outils</h4>
                                <p>Des outils pour le serveur.</p>
                            </div>
                        </a>
                    </div>
                    <div class="service">
                        <a href="#" class="service-link" id="myBtn">
                            <div class="frame">
                                <div class="service-icon">
                                    <span class="">
                                        <img src="img/aide.png" class="" height="128" width="128" alt="" />
                                    </span>
                                </div>
                                <h4>Aide</h4>
                                <p>Aide.</p>
                            </div>
                        </a>
                    </div>
            </div>
            <h4 class=" py-2 ">Pour plus contacter: <a href="https://www.marocnst.ma/"> marocnst.ma</a></h4>
            <div id="myModal" class="modal">
                <div class="modal-content">
                    <h2>Aide:<span class="close">&times;</span></h2>

                    <p>Ce portail est pour vous aider à naviguer dans toutes les applications de ce serveur, si vous avez une question, veuillez nous contacter à marocnst.ma.</p>
                </div>

            </div>

            <script>
                var modal = document.getElementById("myModal");
                var btn = document.getElementById("myBtn");
                var span = document.getElementsByClassName("close")[0];
                btn.onclick = function () {
                    modal.style.display = "block";
                };
                span.onclick = function () {
                    modal.style.display = "none";
                };
                window.onclick = function (event) {
                    if (event.target == modal) {
                        modal.style.display = "none";
                    }
                };
            </script>
        </div>
    </body>
</html>
