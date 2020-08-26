<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
<html>
   <style>

      /*// POP-UP BASE STYLES //*/
      body{margin: 0; position: relative;}
      body.pop-up{background: #222;}
      *{
      font-family: Calibri, sans-serif;
      font-weight: normal;
      color: #333;
      }
      h1{
      font-size: 48px;
      margin: 10px 0;
      }
      p{
      margin-bottom: 40px;
      }
      #pop-up{
      position: relative;
      top: 200px;
      width: 500px;
      margin: 0 auto;
      text-align: center;
      }
      #pop-up .container{
      background: #f0e4d4;
      padding: 30px;
      position: absolute;
      top: 50px;
      width: 100%;
      box-sizing: border-box;
      }
      #pop-up input{
      padding: 10px;
      border: 0;
      border-radius: 10px 0 0 10px;
      border: 1px solid #333;
      font-size: 18px;
      }
      button{
      padding: 10px;
      border: 0;
      color: #fff;
      background: #333;
      margin-left: -5px;
      margin-left: -5px;
      border-radius: 0 10px 10px 0;
      border: 1px solid #333;
      font-size: 18px;
      }
      .cross{
      position: absolute;
      top: 10px;
      left: 10px;
      background: #555;
      color: #ddd;
      font-weight: bold;
      width: 22px;
      height: 22px;
      text-align: center;
      border-radius: 11px;
      }
      /*// POP-UP ANIMATION STYLES //*/
      /*// BASKET BASE STYLES //*/
      header{
      padding: 10px 20px;
      border-bottom: 1px solid #eee;
      background: #fff;
      }
      header:after{
      display: block;
      content: "";
      clear: both;
      }
      .basket ul{
      padding: 0;
      margin-top: 40px;
      }
      .basket li{
      display: inline-block;
      list-style-type: none;
      width: 30%;
      margin: 30px 1.5%;
      text-align: center;
      }
      .basket button{
      border-radius: 10px;
      cursor: pointer;
      }
      .basket header div{
      float: right;
      position: relative;
      z-index: 1;
      }
      .basket header h1{
      float: left;
      }
      /*// BASKET ANIMATION STYLES //*/
      .zoom {
      position: absolute;
      top: 40px;
      right: 50%;
      width: 40px;
      opacity: 0;
      animation: zoom 1s ease forwards;
      }
      @keyframes zoom {
      0% { opacity: 0;  }
      50% { opacity: 1 }
      100% { opacity: 0; right: 40px; }
      }
   </style>


   <body class="basket">
      <header>
         <h1>Welcome to e-Mart</h1>
         <button class="basket-icon" style="margin-left: 1000px; background: #fff;"><img height=50 width=50 src="https://image.flaticon.com/icons/svg/263/263142.svg"></button>

      </header>
      <ul class="products">
         <c:forEach var="product" items="${PRODUCTS}">
            <li>
               <img height=300 width=300 src=${product.image_link}>
               <h2>${product.product_name}</h2>
               <button class="add-to-cart" product-id="${product.id}">Add to Cart</button>
            </li>
         </c:forEach>
      </ul>
      <script>
         const button = document.getElementsByTagName('button');
         for (let i = 0; i < button.length; i++) {
             button[i].addEventListener('click', function(e) {
                 const img = this.previousElementSibling.previousElementSibling.cloneNode(true)
                 img.classList.add('zoom')
                 document.querySelector('body').appendChild(img);

                 setTimeout(function() {
                 document.querySelector('.zoom').remove()
             }, 1000)
         })
                   }
      </script>
      <script>
         $(".add-to-cart").click(function(event){


             var productId = this.getAttribute("product-id");
             var button = this;
             var isInCart = $(button).hasClass("in-the-cart");

             if(isInCart){
                 $.ajax({
                        type: "POST",
                        url: "/user/remove-from-cart",
                        data: productId,
                        success: function(response){
                            if(!!response){
                               $(button).removeClass("in-the-cart");
                               button.innerText = "Add to Cart";
                            }
                        },
                        contentType: 'application/json'
                     });
             } else {
                  $.ajax({
                        type: "POST",
                        url: "/user/add-to-cart",
                        data: productId,
                        success: function(response){
                            if(!!response){
                               $(button).addClass("in-the-cart");
                               button.innerText = "Added to Cart";
                            }
                        },
                        contentType: 'application/json'
                  });
             }

         });

      </script>

      <script>
            $(".basket-icon").click(function(event){
                window.location.href = "/user/mycart";
            });
      </script>

   </body>
</html>