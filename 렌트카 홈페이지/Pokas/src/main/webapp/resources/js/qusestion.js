$(document).ready(function(){
    // var faq_arr = [
    //     ["Q. 사업자 절세에 대해 알려주세요", "A. 사업자 절세에 대해 알려주세요", "수익이 연 4700만원이신 사업자의 경우 세율이 무려 24%에 달합니다. 결국 열심히 일해서 세금으로 다 나가게 되는겁니다. 세금을 줄이기 위해서는 세율구간을 한단계나 두단계 낮추는것만으로도 많이 세이브 할 수 있습니다. 무려 소득의 10~20%나 세금을 줄일 수 있습니다. 그래서 세율구간을 낮추고자 일부러 보험을 찾아 드시는분들까지도 계십니다. 자동차의 경우 어차피 필요하여 이용해야 하는 차량을 장기렌트/오토리스를 이용함으로써 비용처리를 최대한 많이 받아 세금지출을 줄일 수 있습니다."],
    //     ["Q. 장기렌트가 경제적이라는 것이 사실인가요", "A. 장기렌트가 경제적이라는 것이 사실인가요", "일반적인 차량을 일반인이 구매한다면 차량 한대에 대한 할인을 받으시거나 또는 할인이 없습니다. 하지만 장기렌트/오토리스의 경우 대형 캐피탈사에서 한번에 많은 구매를 통한 큰 할인이 있습니다. 또한 장기렌트는 영업용차량으로 등록기 되기 때문에 절감된 등록비용을 활용하여 상품이 만들어지므로 더욱 저렴한 상품이 만들어 집니다. 추가적으로 개인사업자 또는 법인사업자가 장기렌트를 이용하게 될 경우에는 비용처리, 부가세환급 등의 혜택을 받기 때문에 전체 금액으로 봤을 때 몇 백만 원의 이득이 생기게 됩니다. 특히나 지역건강보험을 내는 개인사업자의 경우 차량이 재산으로 잡히지 않아 보험료또한 떨어지는 효과가 있습니다.."],
    //     ["Q. 장기렌트, 홈쇼핑이 가장 저렴한가요?", "A. 장기렌트, 홈쇼핑이 가장 저렴한가요?", "홈쇼핑의 광고차량은 일반적으로 진행하는 조건보다 저렴 하지만 홈쇼핑 하는 메이커의 렌탈사만 놓고 봤을때의 이야기 입니다. 홈쇼핑의 상품이 저렴하다고 하더라도 차종별로 특별히 저렴하게 진행하는 렌탈사들도 많이 있습니다. 현재 국내의 렌탈사가 17곳에 달합니다. 스마일장기렌트카에서는 홈쇼핑의 저렴한 상품과 함께 17곳의 상품들을 모두 비교하여 더욱 더 비용을 낮출 수 있는 방법을 안내 드립니다. 또한 오토리스도 함께 비교하여 안내드릴 수 있으니 국내에서 취급하는 모든 자동차 상품중에 최고의 상품으로 이용하실 수 있습니다."],
    //     ["Q. 정비도 해주는 상품이 있나요?", "A. 정비도 해주는 상품이 있나요?", "일반적으로 장기렌트는 정비까지 모두 관리해 주는 상품으로 알고 계시는 분들이 많습니다. 하지만 정비는 옵션입니다. 신차이고 거리도 얼마 타지 않는 차량을 비용을 들여 관리 받으실 필요는 없습니다. 정비서비스는 운행거리가 많으신 분께서 선택하시면 더욱 편하게 경제적으로 이용이 가능한 제도 입니다. 운행거리가 많지 않으실 경우 정비를 제외하여 저렴하게 이용하시길 추천 드립니다. 또한 장기렌트뿐만이 아니라 리스상품에도 정비를 포함하여 진행 가능한곳도 있습니다. 운행거리가 많아 정비도 받으면서 이용하고 싶지만 일반 번호판을 이용하고 싶으신 분들께도 솔루션을 드릴 수 있습니다."],
    //     ["Q. 장기렌트/오토리스는 초기금 0원으로 가능한가요?", "A. 장기렌트/오토리스는 초기금 0원으로 가능한가요?", "렌탈사/리스사에 따라 고객님의 신용을 체크한 후 초기금 0원으로 진행 가능한 곳이 있으며 초기금이 꼭 필요한경우 보증보험으로 대체하여 초기금 부담을 낮추도록 도와주는 곳도 있습니다. 보증보험을 활용 할 경우 예를들어 4년계약이고 보증금 1000만원을 보증보험으로 대체하면 보증보험 수수료 106만원 정도로 진행 할 수도 있습니다. 다만 보증금은 계약 만료시 돌려받지만 보증보험 수수료는 보증금을 대체하는 보험의 수수료를 내는것이므로 환급되지는 않습니다."],
    //     ];
    

    // var faq_cont = `
    //     <li>
    //         <h3>Q. 사업자 절세에 대해 알려주세요</h3><div></div>
    //         <ul class="on">
    //             <li>
    //                 <h2>A. 사업자 절세에 대해 알려주세요</h3>
    //                 <p>사업자는 소득이 높아질수록 높은 세율을 적용받아 세금을 납부하게 됩니다. 
    //                 아래는 소득에따른 개인사업자의 세율표 입니다.</p>
    //                 <div class="logo"></div>
    //             </li>
    //         </ul>
    //     </li>
    // `
 
    // for(i=0; i<faq_arr.length; i++){
    //     $("#faq .cont > ul").append(faq_cont);
    // };

    // $("#faq .cont > ul > li").each(function(i){
    //     $(this).find("h3").text(faq_arr[i][0]);
    //     $(this).find("ul > li > h2").text(faq_arr[i][1]);
    //     $(this).find("ul > li > p").text(faq_arr[i][2]);
    //     $(this).find("ul > li > p").text(faq_arr[i][3]);
    // });

    $("#faq .cont > ul > li").click(function(){
        $(this).find("ul").stop().finish().slideToggle(300);
        if($(this).hasClass("on")){
        $(this).removeClass("on");
        
        }else{
        $(this).addClass("on");
        
        }
    return false;
    });
});