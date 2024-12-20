<%--
  Created by IntelliJ IDEA.
  User: Sahansa
  Date: 1/11/2023
  Time: 09:00 AM

--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %><!DOCTYPE html>
<html lang="zxx">

<head>
  <meta charset="UTF-8">
  <meta name="description" content="Sahansa">
  <meta name="keywords" content="sahansa">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>ABC Cinema</title>

  <!-- Google Font -->
  <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@300;400;500;600;700&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Mulish:wght@300;400;500;600;700;800;900&display=swap"
        rel="stylesheet">

  <!-- Css Styles -->
  <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
  <link rel="stylesheet" href="css/plyr.css" type="text/css">
  <link rel="stylesheet" href="css/style.css" type="text/css">

</head>

<body>
<!-- Page Preloder -->
<div id="preloder">
  <div class="loader"></div>
</div>

<!-- Header Section Begin -->
<header class="header">
  <div class="container">
    <div class="row">
      <div class="col-lg-2">
        <div class="header__logo">
          <a href="./index.jsp">
            <img src="img/logo.png" alt="">
          </a>
        </div>
      </div>
      <div class="col-lg-8">
        <div class="header__nav">
          <nav class="header__menu mobile-menu">
            <ul>
              <li class="active"><a href="./index.jsp">Homepage</a></li>


              <li><a href="#">Contacts</a></li>
            </ul>
          </nav>
        </div>
      </div>
      <div class="col-lg-2">
        <div class="header__right">
          <a href="#" class="search-switch"><span class="icon_search"></span></a>
          <a href="./login.html"><span class="icon_profile"></span></a>
        </div>
      </div>
    </div>
    <div id="mobile-menu-wrap"></div>
  </div>
</header>
<!-- Header End -->



<!-- Anime Section Begin -->
<section class="anime-details spad">
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <div class="anime__video__player">

          <iframe width="1080" height="600" id="i-frame-video"
                  src="https://www.youtube.com/embed/fFGS4zZWGoA">
          </iframe>
          <!--  <video id="player" playsinline controls data-poster="./videos/poster.jpg">
              <source src="https://www.youtube.com/watch?v=VyHV0BRtdxo" type="video/mp4" />
               Captions are optional -->
              <track kind="captions" label="English captions" src="#" srclang="en" default />
            </video>-->
        </div>



        <!--    -->

        <!-- Anime Section Begin -->
        <section class="anime-details spad">
          <div class="container">
            <div class="anime__details__content">
              <div class="row">
                <div class="col-lg-9">
                  <div class="anime__details__text">
                    <div class="anime__details__title">
                      <h3 id="movie-name">Harry Potter And The Deathly Hallows: Part 1</h3>
                      <!-- <span>sub title if needed</span>-->
                    </div>
                    <div class="anime__details__rating">
                      <div class="rating">
                        <a href="#"><i class="fa fa-star"></i></a>
                        <a href="#"><i class="fa fa-star"></i></a>
                        <a href="#"><i class="fa fa-star"></i></a>
                        <a href="#"><i class="fa fa-star"></i></a>
                        <a href="#"><i class="fa fa-star-half-o"></i></a>
                      </div>

                    </div>
                    <p id="movie-description">After Voldemort takes over the Ministry of Magic, Harry, Ron and Hermione are forced into hiding.
                      They try to decipher the clues left to them by Dumbledore to find and destroy Voldemort's Horcruxes.</p>
                    <div class="anime__details__widget">
                      <div class="row">
                        <div class="col-lg-6 col-md-6">
                          <ul>

                            <li><span >Release Date:</span><span id="movie-release-date"> 19 Nov, 2010 </span></li>

                            <li><span >Genre:</span><span id="movie-genre"> Action, Adventure, Fantasy, Magic</span></li>
                          </ul>
                        </div>
                        <div class="col-lg-6 col-md-6">
                          <ul>

                            <li><span>Rating:</span><span id="movie-rating"> 8.5 / 161 times</span> </li>
                            <li><span>Duration:</span><span id="movie-duration">2h 26m</span> </li>

                          </ul>
                        </div>
                      </div>
                    </div>

                    <input type="hidden" name="tckt_cost" id="tckt_cst" value="0">

                    <div class="anime__details__btn">



                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>

      </div>
  </div>

        </section>
        <!-- Anime Section End -->


        <!-- Footer Section Begin -->
        <footer class="footer">
          <div class="page-up">
            <a href="#" id="scrollToTopButton"><span class="arrow_carrot-up"></span></a>
          </div>
          <div class="container">
            <div class="row">
              <div class="col-lg-3">
                <div class="footer__logo">
                  <a href="./index.jsp"><img src="img/logo.png" alt=""></a>
                </div>
              </div>
              <div class="col-lg-6">
                <div class="footer__nav">
                  <ul>
                    <li class="active"><a href="./index.jsp">Homepage</a></li>


                    <li><a href="#">Contacts</a></li>
                  </ul>
                </div>
              </div>
              <div class="col-lg-3">
                <p>
                  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved |  <i class="fa fa-heart" aria-hidden="true"></i> by SNS Developers
                </p>

              </div>
            </div>
          </div>
        </footer>
        <!-- Footer Section End -->

        <!-- Search model Begin -->
        <div class="search-model">
          <div class="h-100 d-flex align-items-center justify-content-center">
            <div class="search-close-switch"><i class="icon_close"></i></div>
            <form class="search-model-form">
              <input type="text" id="search-input" placeholder="Search here.....">
            </form>
          </div>
        </div>
      </div>
        <!-- Search model end -->

        <!-- Js Plugins -->
        <script src="js/jquery-3.3.1.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/player.js"></script>
        <script src="js/mixitup.min.js"></script>
        <script src="js/jquery.slicknav.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/main.js"></script>
        <script src="js/movie.js"></script>
</body>

</html>