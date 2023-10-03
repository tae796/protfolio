$(document).ready(function(){
    /*var td_arr = [
        ["brand_01.png", "소형", "디젤"],
        ["brand_02.png", "경차", "가솔린"],
        ["brand_03.png", "준중형", "LPG"],
        ["brand_04.png", "중형", "전기"],
        ["brand_05.png", "대형", "가솔린+전기"],
        ["brand_06.png", "소형SUV", "디젤+전기"],
        ["brand_07.png", "중형SUV", "기솔린+LPG"],
        ["brand_08.png", "대형SUV", "수소"],
        ["brand_09.png", "RV"],
        ["brand_10.png", "승합"],
        ["brand_11.png", "상용차"],
        ["brand_12.png", "스포츠카"],
        ["brand_13.png", "박스카"],
        ["brand_14.png"],
        ["brand_15.png"],
        ["brand_16.png"],
        ["brand_17.png"],
        ["brand_18.png"],
        ["brand_19.png"],
        ["brand_20.png"],
        ["brand_21.png"],
        ["brand_22.png"],
        ["brand_23.png"],
        ["brand_24.png"],
        ["brand_25.png"],
        ["brand_26.png"],
        ["brand_27.png"],
        ["brand_28.png"],
    ];

    var top_arr = [
        ["car_04.png", "그랜져 가솔린 2.5", "307,350", "준대형 가솔린 연비 11km/l"],
        ["car_05.png", "소나타 가솔린 2.5", "307,350", "준대형 가솔린 연비 11km/l"],
        ["car_01.png", "그랜져 가솔린 2.5", "307,350", "준대형 가솔린 연비 11km/l"],
        ["car_02.png", "벤츠 가솔린 2.5", "307,350", "준대형 가솔린 연비 11km/l"],
        ["car_03.png", "그랜져 가솔린 2.5", "307,350", "준대형 가솔린 연비 11km/l"],
        ["car_04.png", "그랜져 가솔린 2.5", "307,350", "준대형 가솔린 연비 11km/l"],
        ["car_01.png", "그랜져 가솔린 2.5", "307,350", "준대형 가솔린 연비 11km/l"],
        ["car_03.png", "그랜져 가솔린 2.5", "307,350", "준대형 가솔린 연비 11km/l"],

    ]

    var car_cont = `
    <div class='brand_wrap'>
    <input type="checkbox">
    <label for="check" style="width:100%;">
        <div class="logo_img"></div>
    </label>
    </div>
    `

    var td_cont = `
        <div class="each_part">
            <input type="checkbox" id="car_type">
            <label for="check">
                <span></span>
            </label>
        </div>       
 
    `
    var oil_cont = `
        <div class="each_part">
            <input type="checkbox" id="oil_type">
            <label for="check">
                <span></span>
            </label>
        </div>   
    `



    var top_cont = `
        <div class="right_part">
            <div class="img">
                <div class="img_part"></div>
            </div>
            <div class="text">
                <h3>그렌져 2.5 가솔린</h3>
                <p>307,350<span> 원</span></p>
                <h4>준대형 가솔린 연비 11km/l</h4>
            </div>
            <button>신청하기</button>
        </div>  
    `*/
/*
    for(i=0; i<td_arr.length; i++){
        $("#search .cont .part .table ul li.logo .logo_part").append(car_cont);
    };


    for(i=0; i<td_arr.length-6; i++){
        $("#search .cont .part .table ul li.car .logo_part").append(td_cont);
    };

    for(i=0; i<td_arr.length-10; i++){
        $("#search .cont .part .table ul li.oil .logo_part").append(oil_cont);
    };
    
    for(i=0; i<top_arr.length; i++){
        $("#all .cont .img_all").append(top_cont);
    };




    $("#search .cont .part .table ul li.logo .logo_part .logo_img").each(function(i){
        $(this).css("background-image", "url(../resources/img/img/"+ td_arr[i][0] +")");
    });

    $("#search .cont .part .table ul li.car .logo_part .each_part").each(function(i){
        $(this).find("label span").text(td_arr[i][1]);
    });

    $("#search .cont .part .table ul li.oil .logo_part .each_part").each(function(i){
        $(this).find("label span").text(td_arr[i][2]);
    });

   */ 

/*
    $("#all .cont .img_all .right_part").each(function(i){
        $(this).find(".img .img_part").css("background-image", "url(./img/user_img/"+ top_arr[i][0] +")");
        $(this).find(".text h3").text(top_arr[i][1]);
        $(this).find(".text p").text(top_arr[i][2]);
        $(this).find(".text h4").text(top_arr[i][3]);
    });*/


    $("#search .cont .part .table ul li.logo .button").click(function(){
        $("#search .cont .part .table ul li.logo .brand_wrap:nth-child(n+9)").stop().finish().slideToggle(300);
    
        return false;
    });


  
    $("#search .cont .part .table ul li.car .button").click(function(){
        $("#search .table ul li.car .logo_part .each_part:nth-child(n+11)").stop().finish().slideToggle(300);
        
        return false;
    });

    $("#search .cont .part .table ul li.car").show();
    $("#search .cont .part .table ul li.car .plus").click(function(){
        $("#search .table ul li.car .logo_part .each_part:nth-child(n+11)").stop().finish().slideToggle(300);
        
        return false;
    });

    $("#search .cont .part .table ul li.logo .plus").click(function(){
        $("#search .cont .part .table ul li.logo .brand_wrap:nth-child(n+9)").stop().finish().slideToggle(300);
 
        return false;
    });

   
 
    // if (matchMedia("screen and (min-width: 990px)").matches) {
    //     $("#search .cont .part .table ul li.logo .button").click(function(){
    //         $("#search .cont .part .table ul li.logo .logo_part .logo_img:nth-child(n+9)").stop().finish().slideToggle(300);
     
    //         return false;
    //     });
    
    // }
});