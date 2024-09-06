

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contact Page</title>
        <link href="css/contactStyle.css" rel="stylesheet" type="text/css" />
        <script src="https://kit.fontawesome.com/e1ac25af9a.js" crossorigin="anonymous"></script>
    </head>
    <body>
         <div id="contact">
                <div class="container">
                    <div class="row">
                        <div class="contact-left">
                            <h1 class="sub-title"><i>Contact Us</i></h1>
                            <p><i class="fa-solid fa-paper-plane"></i> example@gmail.com</p>
                            <p><i class="fa-solid fa-phone"></i> 1236547895</p>
                            <div class="social-icons">
                                <a href="#"><i class="fa-brands fa-linkedin"></i></a>
                                <a href="#"><i class="fa-brands fa-instagram"></i></a>
                                <a href="#"><i class="fa-brands fa-github"></i></a>
                            </div>
                            
                        </div>
                        <div class="contact-right">
                            <form name="google-sheet">
                                <input type="text" name="Name" placeholder="Your Name" required>
                                <input type="email" name="Email" id="" placeholder="Your Email" required>
                                <textarea name="Message" rows="6" placeholder="Your Message"></textarea>
                                <button type="submit" class="btn btn2">Submit</button>
                            </form>
                            <span id="msg"></span>
                        </div>
                    </div>
                </div>
            </div>
        
    </body>
</html>
