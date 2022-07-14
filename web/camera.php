<html><head><title>animat </title>
<script>
delay = 20000;
number = 1;
function animate(){
document.image_rotate.src = "images/"+number+".png";
number++;
if (number > 2)   
number = 1;  
}
setInterval(animate, 2000);
</script></head>
<BODY>
<?php
echo("hello world");
?>
</BODY>
</html>
