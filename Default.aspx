<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Student Managment Portal</title>
    <link href="D_page.css" rel="stylesheet" type="text/css" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Arimo:wght@400;600;700&family=Poppins:wght@400;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">


</head>
<body style="margin:0px;padding:0px;"> 
    <form id="form1" runat="server">
    <div class="header"> 
        <nav>
            <a href="Default.aspx"><img src="images/Garhbeta_College_logo.png" alt="Logo"></a>
            <div class="nav-links">
                <ul>
                    <li><a href="#">Home</a></li>
                    <li><a href="StudentLogin.aspx">Student Login</a></li>
                    <li><a href="AdminLogin.aspx">Admin Login</a></li>
                    <li><a href="Notice.aspx"><i class="fa-solid fa-bell"></i></a></li>
                    <li><a href="#Contact">Contact Us</a></li>
                    <li><a href="#About">About Us</a></li>
                    <li><a href="#dev">Our Team</a></li>
                </ul>
            </div>
        </nav>
        <div class="text-box">
            <h1>Welcome to the Garhbeta College</h1>
            <div data-aos="flip-up" data-aos-duration="1000">
                <h2>Dept of BCA</h2>
            </div>
            <p>Garhbeta College had been established long past, in the year 1948. Bachelor of Computer Application (BCA) course has been introduced in the year 2017 with a dream of flourishing the college in multidimensional field, is an undergraduate professional degree course affiliated to Vidyasagar University and run under the directive of the University.</p>
            <a href="https://www.garhbetacollege.ac.in" target="_blank" class="hero-btn">Visit Us To Know More</a>
        </div>
    </div>
    <div id="Contact">
        <h1>Contact Us</h1>
        <ul>
            <li><a href="tel:03227266780"><p class="phone"><i class="fa-solid fa-phone" id="ph-icon"></i><b>Call:</b> 03227 265 143</p></a></li>
            <li><a href="mailto:garhbetacollege48@gmail.com"><p class="phone"><i class="fa-solid fa-envelope" id="mail-icon"></i><b>Drop a mail:</b> garhbetacollege48@gmail.com</p></a></li>
            <li><p class="map"><i id="map-icon" class="fa-sharp fa-solid fa-location-dot"></i><b>Find Us</b></p></li>
        </ul>
        
        
        <div class="ifr">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d4587.958272266667!2d87.34645086025226!3d22.85096029332801!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39f7ee59749eeb29%3A0xd5d9d45280bac983!2sGarhbeta%20College!5e0!3m2!1sen!2sin!4v1687169967285!5m2!1sen!2sin" width="1100px" height="450px" style="border: 3px solid #000000b0; border-radius: 10px; box-shadow:5px 5px 8px rgb(7, 80, 24);" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
        </div>
        
        

    </div>
    <div class="about-us" id="About">
        <h1>About Us</h1>
        <p>With enormous support from Prof. (Dr.) Hariprasad Sarkar, hon'ble Principal of the College the department is able to develop its infrastructural and academic facilities for the interest of the students. Prof. (Dr.) Santimoy Patra, Associate professor in Commerce is in-charge of the Department who always tries his best to uplift the department with the best possible amenities. Ms. Nandini Karmakar, Mr. Dipaanjan Sarkhel & Mr. Dipankar Jana are the three dedicated faculties of the department whose utmost care reaches even the individual need of the student. The department also gains academic cooperation from other departments like Mathematics, Physics and English department of the College. Apart from faculties of own college, the department arranges faculties from Narazole Raj College, Raja NL Khan Women's College and Kharagpur College from time to time to fulfil the academic requirement of the students. For the Computer Application Course, as the technology changes rapidly every unit of time, the department and its faculties are careful to feed the students with updated knowledge to cope with the demand of time. The level of education imparted to the students makes them capable in reaching the height of their career in this highly demanding field.With the support from the College authority, a number of system supports with adequate number of computers and other logical equipments have been gradually upgraded to cater the hunger of the newly admitted young minds. The department wants the education imparted to the students, to be the base of his/her career. </p>

    </div>
    <div class="developers" id="dev" data-aos="fade-up" data-aos-duration="800" data-aos-easing="ease-in-out">
        <h1>Our Developers</h1>
        <ul>
            <li>
                <p><img src="images/Soham.jpg" alt=""></p>
                <p id="name">Soham Goswami</p>
                <p>BCA 6<sup>th</sup> sem Student at Garhbeta College.</p>
                <p>Area of interest: Web Development,<br>Python, Java, C, C++, VB .Net,<br>SQL, Microsoft SQL Server, Linux.</p>
                <p class="Social">
                    <ul class="Social">
                        <li class="Social" ><a href="https:www.linkedin.com/in/soham-goswami2023" target="_blank"><i class="fa-brands fa-linkedin" id="link" ></i></a></li>
                        <li class="Social" ><a href="https://www.facebook.com/sohamgoswami.official/" target="_blank"><i class="fa-brands fa-facebook" id="face"></i></a></li>
                        <li class="Social" ><a href="https://www.instagram.com/sohamgoswami.official/" target="_blank"><i class="fa-brands fa-instagram" id="insta"></i></a></li>
                        <li class="Social" ><a href="#" target="_blank"><i class="fa-brands fa-github" id="git"></i></a></li>
                    </ul>
                </p>
            </li>
            <li>
                <p><p><img src="images/Soubhagya.jpg" alt=""></p></p>
                <p id="name">Soubhagya Bhuinya</p>
                <p>BCA 6<sup>th</sup> sem Student at Garhbeta College.</p>
                <p>Area of interest: Photography,<br>Content Writing, Graphic Design,<br>C, C++, Java.</p>
                <p class="Social">
                    <ul class="Social">
                        <li class="Social" ><a href="#"><i class="fa-brands fa-linkedin" id="link" ></i></a></li>
                        <li class="Social" ><a href="https://www.facebook.com/soubhagya.bhunia.9" target="_blank"><i class="fa-brands fa-facebook" id="face"></i></a></li>
                        <li class="Social" ><a href="https://www.instagram.com/i_am_soubhagya/" target="_blank"><i class="fa-brands fa-instagram" id="insta"></i></a></li>
                        <li class="Social" ><a href="#" target="_blank"><i class="fa-brands fa-github" id="git"></i></a></li>
                    </ul>
                </p>
            </li>
            <li>
                <p><img src="images/Sukhdeb.jpg" alt=""></p>
                <p id="name">Sukhdeb Khan</p>
                <p>BCA 6<sup>th</sup> sem student at Garhbeta College.</p>
                <p>Area of interest: Video Editing,<br>2D Animations, Graphic Design,<br>Java, C, C++.</p>
                <p class="Social">
                    <ul class="Social">
                        <li class="Social" ><a href="#"><i class="fa-brands fa-linkedin" id="link" ></i></a></li>
                        <li class="Social" ><a href="https://www.facebook.com/sukdeb.khan.942" target="_blank"><i class="fa-brands fa-facebook" id="face"></i></a></li>
                        <li class="Social" ><a href="#"><i class="fa-brands fa-instagram" id="insta"></i></a></li>
                        <li class="Social" ><a href="#" target="_blank"><i class="fa-brands fa-github" id="git"></i></a></li>
                    </ul>
                </p>
            </li>
        </ul>
    </div>
  
    </form>
<footer class="footer" >
    <p >Copyright &copy; 2023 Garhbeta College | Designed & Developed by <a href="Default.aspx#dev">Dept of BCA</a></p>
  </footer>
  <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<script>
    AOS.init();
</script>
</body>
</html>
