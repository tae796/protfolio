$(document).ready(function(){
  /*  var pop_arr = [
        ["car_04.png", "그랜저 가솔린 2.5", "510,300"],
        ["car_01.png", "기아 카니발 디젤 2.2", "565,000"],
        ["car_05.png", "제네시스 올 뉴 G80 가솔린", "912,000"],  
    ];

    var car_arr = [
        ["car_01.png", "기아 카니발 디젤 2.2 9인승", " 2021-07-01 ~ 2021-08-31", "렌트", "프레스티지", "디젤", "2,199cc", "11.4km/l", "30,000km/년", "무담보", "무", "48개월", "565,000원"],
        ["car_02.png", "기아 카니발 디젤 2.2 5인승", " 2021-04-01 ~ 2021-08-31", "렌트", "프레스티지", "디젤", "2,199cc", "12.4km/l", "30,000km/년", "무담보", "무", "48개월", "565,000원"],
        ["car_03.png", "기아 카니발 디젤 2.2 4인승", " 2021-03-01 ~ 2021-08-31", "렌트", "프레스티지", "디젤", "2,199cc", "13.4km/l", "30,000km/년", "무담보", "무", "48개월", "443,000원"],
        ["car_04.png", "기아 카니발 디젤 2.2 8인승", " 2021-07-04 ~ 2021-08-31", "렌트", "프레스티지", "디젤", "2,199cc", "14.4km/l", "30,000km/년", "무담보", "무", "36개월", "125,000원"],  
    ];
    
    var car_cont = `  
        <div class="box">
            <div class="left_part">
                <div class="img"></div>
            </div>
            <div class="right_part">
                <div class="top">
                    <h1>기아 카니발 디젤 2.2 9인승</h1>
                </div>
                <div class="middle">
                    <h2>기간 <div></div> <span>2021-07-01 ~ 2021-08-31</span></h2>
                    <table>
                        <tr>
                            <td>상품</td><td>렌트</td><td>등급</td><td>프레스티지</td><td>연료</td><td>디젤</td>
                        </tr>
                        <tr>
                            <td>배기량</td><td>2,199cc</td><td>연비</td><td>11.4km/l</td><td>약정거리</td><td>30,000km/년</td>
                        </tr>
                        <tr>
                            <td>담보조건</td><td>무담보</td>
                        </tr>
                        <tr>
                            <td>옵션</td><td>무</td>
                        </tr>
                    </table>
                </div>
                <div class="bottom">
                    <div class="money">
                        <h2>48개월</h2>
                        <span>565,000원</span>
                    </div>
                    <button><a href="">
                        <h2>고객맞춤</h2>
                        <h2>상담신청</h2>
                    </a></button>
                </div>
            </div>
        </div>
    `

    var pop_cont = `
        <div class="box">
            <div class="img"></div>
            <h2>그랜저 가솔린 2.5</h2>
            <p>510,300<span> 원</span></p>
        </div>
    `

    for(i=0; i<pop_arr.length; i++){
        $("#best .cont").append(pop_cont);
    }

    for(i=0; i<car_arr.length; i++){
        $("#car .cont").append(car_cont);
    }

    $("#best .cont .box").each(function(i){
        $(this).find(".img").css("background-image", "url(./img/user_img/"+ pop_arr[i][0] +")");
        $(this).find("h2").text(pop_arr[i][1]);
        $(this).find("p").text(pop_arr[i][2]);
    });

    $("#car .cont .box").each(function(i){
        $(this).find(".left_part .img").css("background-image", "url(./img/user_img/"+ car_arr[i][0] +" )");
        $(this).find(".right_part .top h1").text(car_arr[i][1]);
        $(this).find(".right_part .middle h2 > span").text(car_arr[i][2]);
        $(this).find(".right_part .middle tr:nth-child(1) td:nth-child(2)").text(car_arr[i][3]);
        $(this).find(".right_part .middle tr:nth-child(1) td:nth-child(4)").text(car_arr[i][4]);
        $(this).find(".right_part .middle tr:nth-child(1) td:nth-child(6)").text(car_arr[i][5]);
        $(this).find(".right_part .middle tr:nth-child(2) td:nth-child(2)").text(car_arr[i][6]);
        $(this).find(".right_part .middle tr:nth-child(2) td:nth-child(4)").text(car_arr[i][7]);
        $(this).find(".right_part .middle tr:nth-child(2) td:nth-child(6)").text(car_arr[i][8]);
        $(this).find(".right_part .middle tr:nth-child(3) td:nth-child(2)").text(car_arr[i][9]);
        $(this).find(".right_part .middle tr:nth-child(4) td:nth-child(2)").text(car_arr[i][10]);
        $(this).find(".right_part .bottom .money h2").text(car_arr[i][11]);
        $(this).find(".right_part .bottom .money span").text(car_arr[i][12]);
    });*/

});