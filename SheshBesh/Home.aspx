<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="SheshBesh.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!--head-->

    <link href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" rel="stylesheet" />
<link href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css" rel="stylesheet" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
   <style>
 

.product-device {
  position: absolute;
  right: 10%;
  bottom: -5%;
  width: 250px;
  height: 500px;
  background-color: #333;
  border-radius: 21px;
  -webkit-transform: rotate(30deg);
  transform: rotate(30deg);
}

.border-bottom { border-bottom: 1px solid #e5e5e5; }

.box-shadow { box-shadow: 0 .25rem .75rem rgba(0, 0, 0, .05); }

.flex-equal > * {
  -ms-flex: 1;
  -webkit-box-flex: 1;
  flex: 1;
}
@media (min-width: 768px) {
  .flex-md-equal > * {
    -ms-flex: 1;
    -webkit-box-flex: 1;
    flex: 1;
  }
}

.overflow-hidden { overflow: hidden; }

.card {
    box-shadow: 0px 4px 8px 0px #BDBDBD;
    width: 500px;
    height:500px;
}

.owl-carousel .owl-nav button.owl-next, .owl-carousel .owl-nav button.owl-prev {
    background: 0 0;
    color: #e91a09 !important;
    border: none;
    padding: 5px 20px !important;
    font: inherit;
    font-size: 50px !important;
}

.owl-carousel .owl-nav button.owl-next:hover, .owl-carousel .owl-nav button.owl-prev:hover {
    color: #e30808 !important;
    background-color: transparent !important;
}

.owl-dots {
    display: none; 
}

button:focus {
    -moz-box-shadow: none !important;
    -webkit-box-shadow: none !important;
    box-shadow: none !important;
    outline-width: 0;
}

.item {
    display: none;
}

.next {
    display: block !important;
    position: relative;
    transform: scale(0.8);
    transition-duration: 0.3s;
    opacity: 0.6;
}

.prev {
    display: block !important;
    position: relative;
    transform: scale(0.8);
    transition-duration: 0.3s;
    opacity: 0.6;
}

.item.show {
    display: block;
    transition-duration: 0.4s;
}

@media screen and (max-width: 999px) {
    .next, .prev {
        transform: scale(1);
        opacity: 1;
    }

    .item {
        display: block !important;
    }

}  
    </style>  
    <script>
        $(document).ready(function () {

            $('.owl-carousel').owlCarousel({
                mouseDrag: false,
                loop: true,
                margin: 2,
                nav: true,
                responsive: {
                    0: {
                        items: 1
                    },
                    600: {
                        items: 1
                    },
                    1000: {
                        items: 3
                    }
                }
            });

            $('.owl-prev').click(function () {
                $active = $('.owl-item .item.show');
                $('.owl-item .item.show').removeClass('show');
                $('.owl-item .item').removeClass('next');
                $('.owl-item .item').removeClass('prev');
                $active.addClass('next');
                if ($active.is('.first')) {
                    $('.owl-item .last').addClass('show');
                    $('.first').addClass('next');
                    $('.owl-item .last').parent().prev().children('.item').addClass('prev');
                }
                else {
                    $active.parent().prev().children('.item').addClass('show');
                    if ($active.parent().prev().children('.item').is('.first')) {
                        $('.owl-item .last').addClass('prev');
                    }
                    else {
                        $('.owl-item .show').parent().prev().children('.item').addClass('prev');
                    }
                }
            });

            $('.owl-next').click(function () {
                $active = $('.owl-item .item.show');
                $('.owl-item .item.show').removeClass('show');
                $('.owl-item .item').removeClass('next');
                $('.owl-item .item').removeClass('prev');
                $active.addClass('prev');
                if ($active.is('.last')) {
                    $('.owl-item .first').addClass('show');
                    $('.owl-item .first').parent().next().children('.item').addClass('prev');
                }
                else {
                    $active.parent().next().children('.item').addClass('show');
                    if ($active.parent().next().children('.item').is('.last')) {
                        $('.owl-item .first').addClass('next');
                    }
                    else {
                        $('.owl-item .show').parent().next().children('.item').addClass('next');
                    }
                }
            });

        });
        </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--body-->
    
        <div class="text-center">
      <div class="col-md-5 p-lg-5 mx-auto my-5">
        <h1 class="display-4 font-weight-normal" style="font-family:'Mystical Woods'">Hi! <br /> we SheshBesh:)</h1>
        <p class="lead font-weight-normal">A platform of playing SheshBesh agnist friends, and agnist people who will become your friend:)</p>
        <a class="btn btn-outline-secondary" href="Register.aspx">I want to play</a>
      </div>
            <img src="src/board.jpg" class="product-device box-shadow d-none d-md-block" />
            <br /> <i class="fa fa-arrow-down"></i><br />
            </div>
        <!--crosele-->
    <div class="container-fluid px-3 px-sm-5 my-5 text-center">
    <h4 class="mb-5 font-weight-bold" style="color:red">Here's a little taste from our play♥</h4>
    <div class="owl-carousel owl-theme">
        <div class="item first prev">
            <div class="card border-0 py-3 px-4">
                <div class="row justify-content-center">
                    <img src="src/img1.jpg" class="img-fluid profile-pic mb-4 mt-3">
                </div>
            </div>
        </div>
        <div class="item show">
            <div class="card border-0 py-3 px-4">
                <div class="row justify-content-center">
                    <img src="src/img2.jpg" class="img-fluid profile-pic mb-4 mt-3">
                </div>
            </div>
        </div>
        <div class="item next">
            <div class="card border-0 py-3 px-4">
                <div class="row justify-content-center">
                    <img src="src/img3.jpg" class="img-fluid profile-pic mb-4 mt-3">
                </div>
            </div>
        </div>
        <div class="item last">
            <div class="card border-0 py-3 px-4">
                <div class="row justify-content-center">
                    <img src="src/img4.jpg" class="img-fluid profile-pic mb-4 mt-3">
                </div>
            </div>
        </div>

      </div>
    </div>

        
        <div class="text-center">
        <p class="font-weight-normal" style="font-family:'Mystical Woods'">don't now how to play?</p>
        <a class="btn btn-outline-secondary" href="instructions.aspx">click here</a>
            <br /><br />
        </div>
   

</asp:Content>
