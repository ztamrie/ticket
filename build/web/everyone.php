<?php
	session_start();
	
	require("conection/connect.php");
	$tag="";
	if (isset($_GET['tag']))
	$tag=$_GET['tag'];
	
	
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>::. Health And Wholeness Ethiopia  .::</title>
<link rel="stylesheet" type="text/css" href="css/everyone_format.css" />
<link rel="stylesheet" type="text/css" href="css/menu.css"/>
<link rel="stylesheet" type="text/css" href="css/home.css"/>
<style>
#leftmanu{
color:#0099FF;}
body,td,th {
	font-family: Geneva, Arial, Helvetica, sans-serif;
	color: #0000FF;
}
body {
	background-color: #FFFFFF;
}
</style>

</head>

<body style="font-family:'Times New Roman', Times, serif">
 <div id="top">
      <div><h1> <marquee>
      Health And Wholeness Ethiopia Bahir Dar 
      </marquee></h1> &nbsp;&nbsp;&nbsp; 
      </div>
</div>
<br /><br />
<div id="admin">
	
        <div id="lmain">
                <a href="#" title="logo" ><img src="picture/logo.png" height="100" /> </a>
                <div id="leftmanu">
                	<div >
                        <div align="left"><a href="?tag=home" title="HOME (Shift+Ctrl+H)">HOME</a><br />
                        </div>
                	</div>
                    
                              
                    
                 <div>
                    	<a href="everyone.php?tag=guests_entry" title="Shift+1"> &nbsp;Guest Entry </a><br />
                  </div>
                    
                    <div>
                    	<a href="everyone.php?tag=employees_entry" class="customer" title="Shift+2">&nbsp;Employee Entry</a>
                    </div>
                    
                    
                     <div>
                    	<a href="everyone.php?tag=susers_entry" class="customer" title="Shift+6">&nbsp;Users Entry</a>
                    </div>
                    
                    <div>
                    	<a href="#" class="customer" title="Shift+9">&nbsp;About Us</a>
                    </div>
                    
                     <div>
                    	<a href="#" class="customer" title="Shift+Ctrl+C">&nbsp;Contact </a>
                    </div>
                    
                    
                     <div>
					 
                    	<a href="everyone.php?tag=news" class="customer" title="Shift+Ctrl+T">&nbsp;News</a>
                    </div>
                    
                </div><!-- end of leftmanu -->
        </div><!--end of lmaim -->
        
        <div>
        
        
        </div>
    <div id="rmain">
    	<div id="pic_manu">
    		<a href="#" title="Student"><img src="picture/student.png" hspace="10px" /></a>
            <a href="#" title="Teacher"><img src="picture/teacher.png" hspace="20px" /></a>
            <a href="#" title="User"><img src="picture/user.png" hspace="10px" /></a>
            <a href="#" title="About us"><img src="picture/about us.png" hspace="15px" /></a>
            <a href="#" title="Contact"><img src="picture/contact.png" hspace="10px" /></a>
         </div><!--end of pic_manu -->
        
        
        
        
         <div id="menu2">
                
                <div style="width:4px; height:37px; padding:0px; margin:0px; float:left;"></div>
                
                <li id="li_menu"><a href="">Guests</a>
                
                    
                    <ul>
                        <li id="li_submenu">
                        <a href="everyone.php?tag=guests_entry" class="sales">Guests Entry</a></li>
                        <li id="li_submenu"><a href="everyone.php?tag=view_guests" class="stocks">View Guests</a></li>
                    </ul>
                
                </li>
                <li id="li_menu"><a href="#">Employees</a>
                    
                    <ul>
                        <li id="li_submenu">
                        <a href="everyone.php?tag=employees_entry" class="order">Employees Entry</a></li>
                        <li id="li_submenu"><a href="everyone.php?tag=view_employees" class="stocks">View Employees</a></li>
                    </ul>
                
                </li>
                                
                <li id="li_menu" style="border-right:#CCC"><a href="">Users</a>
                
                    
                    <ul>
                        <li id="li_submenu"><a href="everyone.php?tag=susers_entry" class="customer">Users Entry</a></li>
                        <li id="li_submenu"><a href="everyone.php?tag=view_users" class="sales">View Users</a></li>
                        <li id="li_submenu"><a href="#" class="order">Groups Entry</a></li>
                        <li id="li_submenu"><a href="#" class="supplier">View Groups</a></li>
                    </ul>
                    
                </li>
                <li id="li_menu"><a href="">AboutUs</a>
                
                    <ul>
                        <li id="li_submenu"><a href="everyone.php?tag=Philosophy" class="customer">Philosophy</a></li>
                        <li id="li_submenu"><a href="everyone.php?tag=Programmes" class="sales">Programmes</a></li>
                        <li id="li_submenu"><a href="everyone.php?tag=Objectives" class="order">Objectives </a></li>
                    </ul>
                
                </li>
				
				<li id="li_menu"><a href="">Project</a>
                
                    <ul>
                        <li id="li_submenu"><a href="project.php?tag=project" class="customer">New project</a></li>
                    </ul>
                
                </li>
				
                <li id="li_menu"><a href="">Contact</a>
                
                	<ul>
                    	 <li id="li_submenu"><a href="#" class="customer"> +251 588 20 21 40</a></li>
                        <li id="li_submenu"><a href="#" class="order">alehubelmh@gmail.com</a></li>
                
                	</ul>
                </li>
				               
      </div><!--end of menu2--> 
            
            
            <div id="contents">
            
            	<div id="informations">
                	<div id="in_informations">
				<?php
   						if($tag=="home" or $tag=="")
							include("home.php");
                        elseif($tag=="guests_entry")
                            include("Guests_Entry.php");
                        elseif($tag=="employees_entry")
                            include("Employees_Entry.php");
                        elseif($tag=="susers_entry")
                            include("Users_Entry.php");	
                        elseif($tag=="view_guests")
                            include("View_Guests.php");
						elseif($tag=="view_employees")
							include("View_Employees.php");
						elseif($tag=="view_users")
							include("View_Users.php");
						elseif($tag=="Philosophy")
							include("Philosophy.php");
						elseif($tag=="Programmes")
							include("Programmes.php");
						elseif($tag=="Objectives")
							include("Objectives.php");
						elseif($tag=="news")
							include("news.php");
						elseif($tag=="newsDetail")
							include("newsDetail.php");	
						elseif($tag=="project")
							include("project.php");
							 
                        ?>
                    </div><!--end of in_informations -->
                </div><!--end of informations -->
    		</div><!--end of contens -->   
     </div><!--end of rmain -->
    	
    </div><!--end of admin -->

</body>
</html>