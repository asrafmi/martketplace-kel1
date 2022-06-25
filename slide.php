<?php include 'header.php'; ?>
<body>
        <!-- Slideshow container
        <div class="slideshow-container"> -->

        <!-- Full-width images with number and caption text -->
        <!-- <div class="mySlides fade">
            <div class="numbertext">1 / 3</div>
            <img src="gambar/banner/gambar1.jpg" style="width:100%">
            <div class="text">Caption Text</div>
        </div>

        <div class="mySlides fade">
            <div class="numbertext">2 / 3</div>
            <img src="img2.jpg" style="width:100%">
            <div class="text">Caption Two</div>
        </div>

        <div class="mySlides fade">
            <div class="numbertext">3 / 3</div>
            <img src="img3.jpg" style="width:100%">
            <div class="text">Caption Three</div>
        </div> -->

        <!-- Next and previous buttons -->
        <!-- <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
        <a class="next" onclick="plusSlides(1)">&#10095;</a>
        </div>
        <br> -->

        <!-- The dots/circles -->
        <!-- <div style="text-align:center">
        <span class="dot" onclick="currentSlide(1)"></span>
        <span class="dot" onclick="currentSlide(2)"></span>
        <span class="dot" onclick="currentSlide(3)"></span>
        </div> -->

        <!-- <div class="slides">
			<div class="slide">
				<img src="gambar/banner/gambar1.jpg" alt="">
			</div>
			<div class="slide">
				<img src="gambar/banner/gambar2.jpg" alt="">
			</div>
			<div class="slide">
				<img src="gambar/banner/gambar3.jpg" alt="">
			</div>
			<div class="slide">
				<img src="gambar/banner/gambar4.jpg" alt="">
			</div>
			<div class="slide">
				<img src="gambar/banner/gambar5.jpg" alt="">
      </div>
      <div class="navigation">
        <a class = "prev" onclick = "plusSlides(-1)">&#10094;</a>
        <a class = "next" onclick = "plusSlides(-1)">&#10095;</a>
      </div> -->
      <div class="container">
        <div class="sliders">
            <div class="slider">
                <img src="gambar/banner/gambar1.jpg" alt="bunga 1">
            </div>
            <div class="slider">
                <img src="gambar/banner/gambar2.jpg" alt="bunga 2">
            </div>
            <div class="slider">
                <img src="gambar/banner/gambar3.jpg" alt="bunga 3">
            </div>
            <div class="slider">
                <img src="gambar/banner/gambar4.jpg" alt="bunga 4">
            </div>
        </div>
    </div>


<!-- <script>
    var slideIndex = 1;
    showSlides(slideIndex);

    function plusSlides(n) {
    showSlides(slideIndex += n);
    }

    function showSlides(n) {
    var i;
    var slides = document.getElementsByClassName("slide");
    if (n > slides.length)
    {
        slideIndex = 1;
    }
    if (n < 1)
    {
        slideIndex = slides.length
    }
    for (i = 0; i < slides.length; i++)
    {
        slides[i].style.display = "none";
    }
    slides[slideIndex-1].style.display = "block";
    }
</script> -->

<?php include 'footer.php'; ?>