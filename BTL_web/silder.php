
<style>
* {box-sizing: border-box;}
body {font-family: Verdana, sans-serif;}
.mySlides {display: none;}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active {
  background-color: #717171;
}
#slider_control{
  margin-top:210px;
}

/* Fading animation */
.fade {
  animation-name: fade;
  animation-duration: 1.5s;
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
}
</style>
<div id ="slider_control">
<?php
   $conn = mysqli_connect("localhost","root","","cuahangtienloi");
      if(!$conn)
         {
           die("ket noi khong thanh cong");
          }
       else {
           $sql = " SELECT * FROM slider ";
           $result = mysqli_query($conn,$sql);
        if(mysqli_num_rows($result)>0)
           {
            while( $row = mysqli_fetch_assoc($result))
            {
              $type = $row["type"];
              if($type == 0){
                 echo"           
                 <div class='slideshow-container'>
                 <div class='mySlides fade'>
                   <img src='admin/uploads/".$row["anh_slider"]."' style='width:100%'>
                 </div>
                  "; 
              }         

          }
        }

         }
                      
  ?>
  <!-- <div style="text-align:center">
                   <span class="dot"></span> 
                   <span class="dot"></span> 
                   <span class="dot"></span>  -->
   </div>
  </div>
<script>
let slideIndex = 0;
showSlides();

function showSlides() {
  let i;
  let slides = document.getElementsByClassName("mySlides");
  // let dots = document.getElementsByClassName("dot");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}    
  // for (i = 0; i < dots.length; i++) {
  //   dots[i].className = dots[i].className.replace(" active", "");
  // }
  slides[slideIndex-1].style.display = "block";  
  // dots[slideIndex-1].className += " active";
  setTimeout(showSlides, 2000); // Change image every 2 seconds
}
</script>

