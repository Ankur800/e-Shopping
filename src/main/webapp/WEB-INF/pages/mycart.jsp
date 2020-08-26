<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>



<html>
    <style>

        *,
        *::before,
        *::after {
          box-sizing: border-box;
          margin: 0;
          padding: 0;
        }
        html {
          font-family: "Lato", sans-serif;
          font-size: 16px;
          color: #eee;
        }
        :root {
          --bg-color: #1f2029;
          --border-color: #333;
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
        .cursor::after {
          content: "";
          width: 25px;
          height: 25px;
          position: absolute;
          border: 8px solid gray;
          border-radius: 50%;
          opacity: 0.5;
          top: -1px;
          left: -1px;
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
          width: var(--width);
          height:157px;
          margin: 40px 0 0 25px;
          padding: 25px 0 25px 25px;
          border: 2px solid var(--border-color);
          border-radius: 5px;
          position: relative;
          transition: all 0.1s linear;
        }
        section.products > div.product article sub{
          overflow:hidden;
          text-overflow:ellipsis;
        }
        section.products > div.product article > label.title::before {
          content: " ";
          position: absolute;
          top: 0;
          left: 0;
          width: 100%;
          height: 100%;
          cursor: pointer;
          display: block;
          z-index: 2;
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
        .delete,
        .total-price > button, .total-price > a > button {
          width: 100px;
          height: 50px;
          margin: 25px 0 25px 0;
          cursor: pointer;
          border: 2px solid var(--border-color);
          background-color: var(--bg-color);
          color: inherit;
          transition: all 0.5s linear;
        }
        .total-price > a > button {
          margin-left: 15px;
        }
        .total-price > .delete {
          border:none;
          background-color: #c71d28;
        }
        button:focus {
          outline: none;
        }
        @keyframes cursorAnim {
          0% {
            transform: scale(1);
          }
          50% {
            transform: scale(3);
          }
          100% {
            transform: scale(1);
            opacity: 0;
          }
        }

        .expand {
          animation: cursorAnim 0.5s forwards;
          border: 1px solid var(--border-color);
        }
        @keyframes shake {
          0% {
            transform: translate(1px, 1px);
          }
          10% {
            transform: translate(-1px, -2px);
          }
          20% {
            transform: translate(-3px, 0px);
          }
          30% {
            transform: translate(3px, 2px);
          }
          40% {
            transform: translate(1px, -1px);
          }
          50% {
            transform: translate(-1px, 2px);
          }
          60% {
            transform: translate(-3px, 1px);
          }
          70% {
            transform: translate(3px, 1px);
          }
          80% {
            transform: translate(-1px, -1px);
          }
          90% {
            transform: translate(1px, 2px);
          }
          100% {
            transform: translate(1px, -2px);
          }
        }
        @keyframes remove {
          from {
            transform: translateX(0);
          }
          50% {
            transform: translateX(-1000px);
          }
          to {
            opacity: 0;
          }
        }
        .not-select {
          animation: shake 0.5s;
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
              </div>

          </c:forEach>


          <section class="buy">
            <div class="total-price">
              <h4>Order Summary</h4>
              <ul>

              <c:forEach var="product" items="${PRODUCTS}">
                <li><span>Order 1</span><span>${product.price}&#x20b9;</span></li>
              </c:forEach>


                <li><span><b>Total Price</b></span><span><b>totalPriceHere &#x20b9;</b></span></li>
              </ul>
              <button class="delete" onclick="deleteProduct()">Delete</button>
              <button> Buy</button></a>
            </div>
          </section>
        </section>
      </main>

    </body>



</html>