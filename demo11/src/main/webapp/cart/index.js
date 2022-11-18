document.getElementById("showcart").style.display="none";
var giohang = new Array();

    function themvaogiohang(x) {
        var boxsp = x.parentElement.children;
         var hinh = boxsp[0].children[0].src;
        var gia = boxsp[1].children[0].innerText;
        var tensp = boxsp[2].innerText;
         var soluong = parseInt(boxsp[3].value);
        var sp = new Array( hinh,gia, tensp,soluong);

        var kt =0;
        for(let i=0;i<giohang.length;i++){
            if(giohang[i][2]==tensp){
                kt=1;
              soluong+=parseInt(giohang[i][3]);
              giohang[i][3]=soluong;
              break;
            }
        }
        if(kt==0){
            giohang.push(sp);
        }



        console.log(giohang);
        showcountsp();
        sessionStorage.setItem("giohang",JSON.stringify(giohang));

    }

    function showcountsp() {
        document.getElementById("countsp").innerHTML = giohang.length;


    }
    function showMyCart(){
    //     var ttgh ="";
    //
    //     var tong=0;
    //     for(let i =0;i<giohang.length;i++){
    //         var tt =parseInt(giohang[i][1])*parseInt(giohang[i][3]);
    //         tong+=tt;
    //         ttgh += '<tr>'+
    //        '<td>'+(i+1)+'</td>'+
    //         '<td><img src="'+giohang[i][0]+'" alt=""></td>'+
    //         '<td>'+giohang[i][2]+'</td>'+
    //         '<td>'+giohang[i][1]+'</td>'+
    //         '<td>'+giohang[i][3]+'</td>'+
    //         '<td>'+
    //             '<div>'+tt+'</div>'+
    //         '</td>'+
    //         '<td>'+
    //         '<button  onclick="xoasp(this)" style="border-radius: 5px;">Xóa</button>'+
    //     '</td>'+
    //     '</tr>';
    //
    //     }
    //     ttgh +='<tr>'+
    //     '<th colspan="6">Tổng đơn hàng</th>'+
    //     '<th>'+
    //         '<div>' + tong + '</div>'+
    //     '</th>'+
    //
    // '</tr>';
    //      document.getElementById("myCart").innerHTML=ttgh;
    //
    }
    function xoasp(x){
        var tr = x.parentElement.parentElement;
        var tensp= tr.children[2].innerText;
        tr.remove();
        for(let i=0;i<giohang.length;i++){
            if(giohang[i][2]==tensp){
                giohang.splice(i,1);
            }

        }
       showMyCart();
        showcountsp();


    }
    function xoatatca() {
        giohang=[];
        showMyCart();
        showcountsp();
    }
    function showcart(){

        var  x=document.getElementById("showcart");

        if(x.style.display=="block"){
            x.style.display="none";

        }else{
            x.style.display="block"

        }
        showMyCart();
    }
   function showgh_tt(){
       var gh =sessionStorage.getItem("giohang");
       var giohang =JSON.parse(gh);
       var ttgh ="";

       var tong=0;
       for(let i =0;i<giohang.length;i++){
           var tt =parseInt(giohang[i][1])*parseInt(giohang[i][3]);
           tong+=tt;
           ttgh += '<tr>'+
          '<td>'+(i+1)+'</td>'+
           '<td><img src="'+giohang[i][0]+'" style="" alt=""></td>'+
           '<td>'+giohang[i][2]+'</td>'+
           '<td>'+giohang[i][1]+'</td>'+
           '<td>'+giohang[i][3]+'</td>'+
           '<td>'+
               '<div>'+tt+'</div>'+
           '</td>'+
       '</tr>';

       }
       ttgh +='<tr>'+
       '<th colspan="6" style="background-color: #1c1c1c" ><div class="giam " style="background-color: #f0f0f0;width: 80%;margin-left:10% ;border-radius: 5px;"><h2 style="color: rgba(87, 85, 85, 0.8);">Tổng giỏ hàng</h2><ul><li>Tạm tính</li><li>'+tong+'</li></ul><ul><li>Tổng</li><li>'+tong+'</li></ul><button style="text-decoration: none;color: #cccc;font-weight:bold ;"><a href="donhang1.html" style="font-weight: bolder;text-decoration: none;color:#cccc">Thanh toán</a></button><div><h3 style="padding: 10px;">Mã ưu đãi</h3> <br><input type="text" placeholder=""> <br><button style="font-weight: bold;color: #cccc;">Áp dụng</button></div>'
   +'</div></th>'+



   '</tr>';
  ' <div style=" margin-left: 100px;">'+tong+' </div>'


   ;

        document.getElementById("myCart").innerHTML=ttgh;

   }
   function dongydathang(){
     var ttnh=  document.getElementById("thongtinnhanhang").children;
     var ht=ttnh[0].children[1].children[0].value;
     var dc=ttnh[1].children[1].children[0].value;
     var dt=ttnh[2].children[1].children[0].value;
     var email=ttnh[3].children[1].children[0].value;
     var dcnh =ttnh[4].children[1].children[0].value;
     var ngaygh =ttnh[5].children[1].children[0].value;
     var gichu =ttnh[6].children[1].children[0].value;
     var nguoinhan=new Array(ht,dc,dt,email.dcnh,ngaygh,gichu);
     sessionStorage.setItem("nguoinhan",JSON.stringify(nguoinhan));
     console.log(nguoinhan);
    window.location.assign("donhang.html")
   }
   function showttnn(){
       var nn=sessionStorage.getItem("nguoinhan");
       var tt=JSON.parse(nn);
       var ttin='<tr>'+
       '<td width="20%">Họ tên</td>'+
       '<td>'+tt[0]+'</td>'+
   '</tr>'+
   '<tr>'+
       '<td>Địa chỉ</td>'+
       '<td>'+tt[1]+'</td>'+
   '</tr>'+
   '<tr>'+
       '<td>Điện thoại</td>'+
       '<td>'+tt[2]+'</td>'+
   '</tr>'+
   '<tr>'+
       '<td>Email</td>'+
       '<td>'+tt[3]+'</td>'+
   '</tr>'+
   '<tr>'+
       '<td>Địa chit nhận hàng</td>'+
       '<td>'+tt[4]+'</td>'+
   '</tr>'+
   '<tr>'+
   '<td>Ngày giao hàng</td>'+
   '<td>'+tt[5]+'</td>'+
'</tr>'+
'<tr>'+
'<td>Gi chú</td>'+
'<td>'+tt[6]+'</td>'+
'</tr>'
   ;
   document.getElementById("thongtinnhanhang").innerHTML=ttin;

   }
   function thongbao(){
    alert("Đặt hàng thành công !");
   }
