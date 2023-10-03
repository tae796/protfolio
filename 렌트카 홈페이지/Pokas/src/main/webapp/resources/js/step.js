$(document).ready(function(){
    var icon_arr = [
        ["icon_01.png", "견적요청", "1588-6636"],
        ["icon_02.png", "상담", "전문 상담사와 1:1 맞춤상담 서비스"],
        ["icon_03.png", "계약", "구비서류 준비 및 상담사가 직접 방문 계약 체결"],
        ["icon_04.png", "차량인도", "썬팅 및 블랙박스 등 서비스 제공 작업 이후 안전하게 탁송 서비스진행"],
        ["icon_05.png", "사후관리", "계약이후 만기 시점까지 꾸준한 에프터 서비스 제공"],
        ["icon_06.png", "재계약/반납", "계약 종료 후 반납 또는 인수"],   
    ];
    
    var icon_cont = `
        <div class="icon_img">
            <div class="box">
                <div class="img"></div>
                <h2 class="a"></h2>
                <p class="type_01"></p>
                <p class="type_02"></p>
                <p class="type_03"></p>
                <p class="type_04"></p>
            </div>
            <div class="arrow"></div>
        </div>
    `

    for(i=0; i<icon_arr.length; i++){
        $("#nonstop .bg .cont .cont_line .icon").append(icon_cont);
    }

    $("#nonstop .bg .cont .cont_line .icon .icon_img").each(function(i){
        $(this).find(".box .img").css("background-image", "url(../../resources/img/user_img/"+ icon_arr[i][0] +" )");
        $(this).find(".box h2").text(icon_arr[i][1]);
        $(this).find(".box .type_01").text(icon_arr[i][2]);
        $(this).find(".box .type_02").text(icon_arr[i][3]);
       
    });
    
});