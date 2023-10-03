$(document).ready(function(){

    
    
    $("#submit .plus_box").hide();
    
    $("#submit .submit_box button.plus").click(function(){
        $("#submit .plus_box").slideToggle();
        
        
    });


    $( '#side-wrap .side .top a' ).click( function() {
        $( 'html, body' ).animate( { scrollTop : 0 }, 900 );
        return false;
    } );

    // $("#submit").click(function(){

    //     $("#submit .plus_box").slideup();
    // });
    
    $("#header .menu_part > ul > li").hover(function(){
		$(this).find("ul").stop().slideDown();
	}, function(){
		$(this).find("ul").stop().slideUp();
	});

    $('#slide_img').on('init', function(event, slick) {
        $('#slide_img').find('.slick-current').removeClass('slick-active').addClass('reset-animation');
        setTimeout( function() {
            $('#slide_img').find('.slick-current').removeClass('reset-animation').addClass('slick-active');
        }, 1);
    });


    $('#slide_img').slick({  
        draggable: true,
        pauseOnHover: false,
        arrows: false,
        dots: false,
        fade: true,
        lazyLoad: 'progressive',
        autoplay: true,
        autoplaySpeed: 3000,
        speed: 1500,
        infinite: true,
        cssEase: 'cubic-bezier(0.7, 0, 0.3, 1)',
        touchThreshold: 100
    });



    $('#promotion .middle_part .box_slide').slick({
        infinite : true,  
        autoplay : true,  
        pauseOnHover : false,  
        vertical : true,   
        verticalSwiping:true,
        focusOnSelect: true,
        lazyLoad: 'ondemand',
        
        slidesToShow : 4,
        slidesToScroll : 1,
        asNavFor: '#promotion .right_part',
        dots : false,
        centerMode : true, 
        centerPadding : "0px",  
        autoplaySpeed : 3000,
        responsive : [
           
            {
                breakpoint : 1024,
                settings : {
                    vertical : false, 
                    slidesToShow : 2,
                    slidesToScroll : 1,
                    centerMode : false,
                    autoplay : true,
                    dots : false,
                    
                }
            },
            {
                breakpoint : 596,
                settings : {
                    vertical : false, 
                    slidesToShow : 1,
                    slidesToScroll : 1,
                    centerMode : false,
                    autoplay : true,
                    dots : false,
                    
                }
            },
            
        ]
    });

    $('#promotion .left_part .each > ul').slick({
        infinite : true,  
        autoplay : true,  
        pauseOnHover : true,  
        vertical : true,   
        verticalSwiping:true,
        focusOnSelect: true,
        lazyLoad: 'ondemand',
        
        slidesToShow : 4,
        slidesToScroll : 1,
        
        dots : false,
        centerMode : true, 
        centerPadding : "0px",  
        autoplaySpeed : 3000,
        responsive : [
           
            {
                breakpoint : 1024,
                settings : {
                    vertical : true, 
                    slidesToShow : 3,
                    slidesToScroll : 1,
                    centerMode : false,
                    autoplay : true,
                    dots : false,
                    
                }
            },
            
        ]
    });

    $('#promotion .left_part .checkbox label span').click(function(){

        $('.popup_bg').addClass('active');
        $('.popup').addClass('active');
    });

    $('.popup_bg, .popup .page h2').click(function(){
        $('.popup_bg').removeClass('active');
        $('.popup').removeClass('active');
    });

    $('#promotion .right_part').slick({
        infinite : true,  
        autoplay : true,  
        pauseOnHover : false,    
        slidesToShow : 1,
        slidesToScroll : 1,
        lazyLoad: 'ondemand',
        
        asNavFor: '#promotion .middle_part .box_slide',
        arrows : true,
        dots : false, 
        autoplaySpeed : 3000,
        responsive : [
           
            {
                breakpoint : 1024,
                settings : {
                    vertical : false, 
                    slidesToShow : 1,
                    slidesToScroll : 1,
                    centerMode : false,
                    autoplay : true,
                    dots : false,
                    
                }
            },
            
        ]
    });


    

    $("#review .slide").slick({
        slidesToShow : 4, 
        slidesToScroll : 1,
        autoplay : true,
        speed : 500,
        autoplaySpeed : 3000, 
        dots : true,
        arrows : true,

        responsive : [
            {
                breakpoint : 1200,  
                settings : {
                    slidesToShow : 3,
                    slidesToScroll : 1,
                    arrows : false,
                }

            },
            {
                breakpoint : 870,
                settings : {
                    arrows : false,
                    slidesToShow : 1,
                    slidesToScroll : 1,
                    centerMode : true,
                    autoplay : true,
                    dots : false
                }
            },
            
        ]
    });


    $("footer .logo .logo_slide").slick({
        slidesToShow : 5,  
        slidesToScroll : 1,
        autoplay : true,
        speed : 500,
        autoplaySpeed : 3000, 
        dots : false,
        responsive : [
            {
                breakpoint : 1200,  
                settings : {
                    slidesToShow : 4,
                    slidesToScroll : 1
                }

            },
            {
                breakpoint : 768,
                settings : {
                    
                    slidesToShow : 3,
                    slidesToScroll : 1,
                    autoplay : true,
                    dots : false
                }
            },
        ]
    });

    var speed=300

    $("#header .menu").click(function(){
      if($("#header .gnb_mobile").hasClass("on")){
      $("#header .gnb_mobile").removeClass("on");
      $("#header .gnb_mobile").stop().fadeOut(speed);
      $("#header .bg").removeClass("on");
      }else{
      $("#header .gnb_mobile").addClass("on");
      $("#header .gnb_mobile").stop().fadeIn(speed).css("opacity",1);
      $("#header .bg").addClass("on");
      }
    });
    
    
    $("#header .gnb_mobile > ul > li").click(function(){
        $(this).find("ul").stop().finish().slideToggle(300);
        if($(this).hasClass("on")){
        $(this).removeClass("on");
        
        }else{
        $(this).addClass("on");
        
        }
        
    //   $(this).css("background-color", "#000");
    });

    $("#header .gnb_mobile .close, #header .bg").click(function(){
        $("#header .gnb_mobile").removeClass("on");
        $("#header .gnb_mobile").stop().fadeOut(speed);
        $("#header .bg").removeClass("on");
    });

    //		간편차량검색 버튼을 누르면
		$(".m-searchbtn").click(function() {
//			검색창 슬라이드 토글
			$(".searchbox ul").slideToggle(500);
//			십자가에 active 클래스(각도) 토글
			$(".cross01").toggleClass("active");
		});

		

        $('#total_review .photo .top').slick({
            slidesToShow: 1,
            infinite: true,
            slidesToScroll: 1,
            arrows: false,
            
            fade: true,   
            autoplay : true, 
            autoplaySpeed : 3000, 
            speed : 1000,
            asNavFor: '#total_review .photo .right_part',
            responsive : [
                {
                    breakpoint : 410,  
                    settings : {
                        pauseOnHover: true,
                        autoplaySpeed : 5000,
                    }
    
                },
                
                
            ]
          });
          $('#total_review .photo .right_part').slick({
            slidesToShow: 3,
            slidesToScroll: 1,
            infinite: true,
            asNavFor: '#total_review .photo .top',
            dots: false,
            arrows : true,
            autoplay : true,
            autoplaySpeed : 3000,  
            speed : 1000,
            centerMode: true,
            focusOnSelect: true,
            responsive : [
                {
                    breakpoint : 884,  
                    settings : {
                        slidesToShow : 2,
                        slidesToScroll : 1,
                        arrows : true,
                    }
    
                },
                {
                    breakpoint : 540,
                    settings : {
                        arrows : true,
                        slidesToShow : 1,
                        slidesToScroll : 1,
                        centerMode : true,
                        autoplay : true,
                        dots : false
                    }
                },
                
            ]

          });

    
    $('#promotion .sub_title .popular').on('click', function(){ 
        

        $('#promotion .left').css('display', 'block');
        $('#promotion .left_part .each > ul').slick("refresh");  
        $('#promotion .middle_part .box_slide').slick("refresh");  
        $('#promotion .right_part').slick("refresh");  
        $('#promotion .right').css('display', 'none');
        
        $(this).addClass("on");
        $('#promotion .sub_title .month').removeClass("on");
    }); 
    
    $('#promotion .sub_title .month').on('click', function(){ 
        
        $('#promotion .right').css('display', 'block');
        $('#promotion .left_part .each > ul').slick("refresh");  
        $('#promotion .middle_part .box_slide').slick("refresh");   
        $('#promotion .right_part').slick("refresh");   
        $('#promotion .left').css('display', 'none');
        $(this).addClass("on");
        $('#promotion .sub_title .popular').removeClass("on");
    }); 

		
})