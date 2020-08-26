<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>



<html>
    <style>

        .go-to-store{
              padding: 10px;
              border: 0;
              color: #fff;
              background: #d35400;
              margin-left: -5px;
              margin-top: 20px;
              border-radius: 10px 10px 10px 10px;
              border: 1px solid #333;
              font-size: 18px;
              height:50px;
              width: 180px;
              cursor: pointer
        }
        .remove-from-cart{
              padding: 10px;
              border: 0;
              color: #fff;
              background: #d35400;
              margin-left: -5px;
              margin-top: 20px;
              border-radius: 10px 10px 10px 10px;
              border: 1px solid #333;
              font-size: 18px;
              height:50px;
              width: 180px;
              cursor: pointer
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


        html {
          font-family: "Lato", sans-serif;
          font-size: 16px;
          color: #fff;
        }
        :root {
          --bg-color: #576574;
          --border-color: #ee5253;
          --width: 50%;
        }
        body {
          background-color: var(--bg-color);
          overflow-x: hidden;
        }
        .cursor {
          width: 25px;
          height: 25px;
          border: 1px solid white;
          border-radius: 50%;
          position: absolute;
          pointer-events: none;
        }
        .products {
          display: flex;
          flex-direction: column;
          justify-content: center;
          align-items: flex-start;
          text-align: center;
        }
        .products > div.product {
          display: flex;
          width: 50%;
          height:157px;
          margin: 40px 0 0 25px;
          padding: 25px 0 25px 25px;
          border: 2px solid #ee5253;
          border-radius: 5px;
          position: relative;

        }
        section.products > div.product article sub{
          overflow:hidden;
          text-overflow:ellipsis;
        }

        .products div > img {
          width: 100px;
          height: 100px;
          border-radius: 100%;
          margin-left: 10px;
        }
        .products > div > article {
          display: flex;
          justify-content: center;
          flex-direction: column;
          margin: 0 25px;
        }
        .products div > article label:first-of-type {
          font-size: 1.5rem;
        }
        .products div > article label:first-of-type,
        .products div > article sub:first-of-type,
        .price {
          text-align: left;
        }
        .price {
          margin-top: 7px;
          font-family: inherit;
          font-weight: 600;
          font-style: oblique;
        }
        input[type="checkbox"] {
          width: 0;
          height: 0;
        }
        input[type="checkbox"]:checked + .product,
        label::after {
          transform: scale(1.1, 1.1);
        }
        .buy {
          width: 50%;
          display: flex;
          position:absolute;
          top:11%;
          right:-40px;
          justify-content: center;
          align-items: flex-start;
        }
        .total-price {
          width: 70%;
          min-height: 200px;
          border: 1px solid var(--border-color);
          background-color: #292a33;
          margin: 25px 0 25px 0;
        }
        .total-price h4 {
          display: flex;
          width: 100%;
          height: 75px;
          border-bottom: 1px solid transparent;
          justify-content: center;
          align-items: center;
          background-color: #1c1d26;
        }
        .total-price ul {
          list-style-type: none;
        }
        .total-price ul li {
          display: flex;
          width: 100%;
          height: 20px;
          font-size: 1em;
          margin: 10px 0 5px 20px;
          background-color: transparent;
          justify-content: space-around;
          align-items: center;
        }
        .total-price ul li > span:last-child {
          margin-right:40px;
        }
        .total-price ul li:last-child > span:first-child {
          font-weight:700;
        }
        .total-price ul li:last-child > span + span > b {
        font-size:1.1em;
        }


        @media screen and (max-width:695px) {
          .buy {
            position:relative;
            top:0;
            left:0;
            width:100%;
            align-items:center;
            margin-left:5%;
          }
          .total-price {
            width:100%;
          }
          .products {
            width:90%;
          }
          .products > div.product {
            width:100%;
          }
        }

    </style>


    <body>
      <main>
        <section class="products">
          <h1 style="align-self:flex-start; justify-content:center; margin:30px 0 0 5%;">Your Cart
          </h1>


          <c:forEach var="product" items="${PRODUCTS}">

            <input type="checkbox" id="${product.id}" />
              <div class="product">
                <img src=${product.image_link} alt=''>
                <article>
                  <label class="title" for=${product.id}>${product.product_name}</label>
                  <sub></sub>
                  <span class="price">${product.price}&#x20b9;</span>
                </article>
                <button class="remove-from-cart" product-id="${product.id}">Remove from Cart</button>
              </div>

          </c:forEach>


          <section class="buy">
            <div class="total-price">
              <h4>Order Summary</h4>
              <ul>

              <c:set var="totalPrice" value="0" scope="page" />

              <c:forEach var="product" items="${PRODUCTS}">

                <c:set var="totalPrice" value="${totalPrice + product.price}" scope="page"/>

                <li><span>Order 1</span><span>${product.price}&#x20b9;</span></li>
              </c:forEach>


                <li><span><b>Total Price</b></span><span><b>${totalPrice} &#x20b9;</b></span></li>
              </ul>
              <button class="go-to-store">Back to Store</button>
              <button class="go-to-store"> Buy</button></a>
            </div>
          </section>
        </section>
      </main>

    </body>

    <script>
        $(".remove-from-cart").click(function(event){

             var productId = this.getAttribute("product-id");
             var button = this;

             $.ajax({
                    type: "POST",
                    url: "/user/remove-from-cart",
                    data: productId,
                    success: function(response){
                        if(!!response){
                           location.href = "/user/mycart";
                        }
                    },
                    contentType: 'application/json'
             });


        });

    </script>

    <script>
            $(".go-to-store").click(function(event){
                location.href = "/user/products";
            });

        </script>

</html>