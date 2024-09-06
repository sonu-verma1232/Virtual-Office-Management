

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>About Us Page</title>
        <style>
            body{
                margin: 20px;
                padding: 10px;
                background-color: #080808;
                color: #fff;
                font-family : 'Pappins',sans-serif;
                
            }
            .container h1{
                font-size: 60px;
                color: #ff004f;
            }
            
            .container p{
                font-size: 50px;
                font-weight: 100px;
                color: #ababab;
            }
            
            .tab-links{
                /*justify-content: space-between;*/
                background: #808085;
                cursor: pointer;
                position: relative;
                
            }
            
            a{
                margin: 220px;
                padding: 10px;
                font-size: 25px;
                text-decoration: none;
                color: white;
            }
            
            a:hover{
                
                color: #ff004f;
            }
            
            .row{
                display: flex;
                margin-top: 90px;
            }
            
            .left{
                
                flex-basis: 35%;
                margin-left: 10px;
            }
            
            .left h2{
                color: #ff004f;
                margin-top: 0;
                font-size: 40px;
            }
            
            .left p{
                font-size: 30px;
                font-weight: 100px;
            }
            
            .right{
                flex-basis:45%;
                margin-left: 120px;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <center><h1 style="color:grey;"><i><u>About Us</u></i></h1>
                <h1>We help managements of every size office -
                    form <br>entrepreneurs to iconic brands.</h1>
                <p>It lets you deliver amazing experiences .</p>
            </center>
            
            <div class="tab">
                <nav class="tab-links">
                    <a href="#" style="margin-left:50px;">Achievements</a>
                    <a href="#">Services</a>
                    <a href="#" style="margin-right:20px;">Reviews</a>
                </nav>
            </div>
            
            <div class="row">
                 <div class="left">
                <h2>It helps businesses own their management</h2>
                <p> Office management involves the planning, design, and implementation of work within an organization and its offices.It encompasses creating a focused work environment and guiding and coordinating the activities of office personnel to achieve business goals.
                    <br><br> In essence, office management ensures the smooth and efficient operation of an office, covering tasks such as mail handling, document management, and assigning roles and responsibilities</p>
            </div>
            
            <div class="right">
                <img src="images/office.jpg" width="700" height="700">
            </div>
            </div>
            
        </div>
    </body>
</html>
