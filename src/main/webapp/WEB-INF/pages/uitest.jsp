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
            <div class="basket-icon"><img height=50 width=50 src="https://image.flaticon.com/icons/svg/263/263142.svg"></div>
          </header>
          <ul class="products">
            <li>
              <img height=300 width=300 src="https://5.imimg.com/data5/JD/ID/MY-18014948/dry-fit-fabric-500x500.jpg">
              <h2>Green T-Shirt</h2>
              <button id="add-to-cart-button">Add to Basket</button>
            </li>
            <li>
              <img height=300 width=300 src="https://5.imimg.com/data5/FW/GT/MY-23375112/men-s-yellow-color-t-shirt-500x500.jpg">
              <h2>Yellow T-Shirt</h2>
              <button id="add-to-cart-button">Add to Basket</button>
            </li>
            <li>
              <img height=300 width=300 src="https://5.imimg.com/data5/OA/TO/MY-9651283/pink-t-shirt-500x500.jpg">
              <h2>Pink T-Shirt</h2>
              <button id="add-to-cart-button">Add to Basket</button>
            </li>
            <li>
              <img height=300 width=280 src="https://images-na.ssl-images-amazon.com/images/I/71zlRXizASL._UX679_.jpg">
              <h2>Green Shirt</h2>
              <button id="add-to-cart-button">Add to Basket</button>
            </li>
            <li>
              <img height=300 width=210 src="https://rukminim1.flixcart.com/image/880/1056/jnun1jk0/shirt/u/h/e/xl-me-t2-darkyellow-gulchharrey-original-imaf5fuhhz3syzj7.jpeg?q=50">
              <h2>Yellow Shirt</h2>
              <button id="add-to-cart-button">Add to Basket</button>
            </li>
            <li>
              <img height=300 width=350 src="https://www.lordsindia.com/image/cache/1/SHIRT/COU-56-500x500.jpg">
              <h2>Pink Shirt</h2>
              <button id="add-to-cart-button">Add to Basket</button>
            </li>
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

    </body>
</html>