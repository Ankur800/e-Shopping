 <html>

    <link rel="short icon" type="image/png" href="/static/images/favicon.ico"/>

    <head>

        <script
          src="https://code.jquery.com/jquery-3.5.1.min.js"
          integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
          crossorigin="anonymous"></script>

        <style>
            body {
              background-image:url("https://images.unsplash.com/photo-1592500305779-0e6de44984f7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80");
              background-attachment:fixed;
              background-repeat: no-repeat;
              background-size: cover;
              display: flex;
              align-items: center;
              justify-content: center;
              height: 90vh;
              width: 100%;
            }
            .loginCard {
              width: 400px;
              height: 640px;
              background: white;
              border-radius: 3px;
              padding: 56px 32px;
              display: flex;
              flex-direction: column;
              position: relative;
              color: #e74c3c;
              box-sizing: border-box;
              background-image: url("https://images.unsplash.com/photo-1541998916-822fe8274a99?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=676&q=80");
              background-position: center top;
              background-size: cover;
              filter: drop-shadow(0 2px 1px rgba(0,0,0,.15) )
            }
            .innerCard {
              background: white;
              padding: 24px 24px 30px 24px;
              display: block;
              margin-top: auto;
              border: 1px solid #ededed;
              border-radius: 3px;
            }
            .buttonWrapper {
              display: flex;
              align-items: center;
              width: 100%;
              padding: 0 20px;
              position: absolute;
              bottom: -36px;
              left: 0;
              box-sizing: border-box;
            }

            /* type */
            h1 {
              font-family: 'IBM Plex Serif', Seirf;
              font-weight: 500;
              font-size: 50;
              text-align: center;
              margin: 0;
            }
            p {
              text-align: center;
              font-family: system-ui, sans-serif;
              letter-spacing: 1px;
            }

            /* inputs */

            input {
              display: block;
              border: 0;
              height: 56px;
              width: 100%;
              background: #f9f7f3;
              border-radius: 6px 6px 0 0;
              padding: 0 1em;
              box-sizing: border-box;
            }
            input:last-of-type {
              border-radius: 0 0 6px 6px;
              background: #f3f1ea;
              margin-bottom: 30px;
            }
            ::placeholder {
              font-size: 14px;
              line-height: 1.2;
              color: #5E3C15;
            }

            /* links and buttons */

            button, .social {
              border: none;
              cursor: pointer;
              transition-duration: 150ms;
              transition-timing-function: cubic-bezier(.68,-.55,.265,1.55);
            }
            button:hover, .social:hover {
              transform: scale(1.2);
            }

            .extraLinks {
              float: right;
              font-family: system-ui, sans-serif;
            }
            a {
              color: inherit;
              font-size: 14px;
            }
            .extraLinks a:first-child {
              text-decoration: none;
              opacity: .7;
            }
            .extraLinks a:last-child {
              margin-left: 12px;
              font-weight: 600;
            }
            .close, .submitButton, .social {
              border-radius: 50%;
              display: flex;
              align-items: center;
              justify-content: center;
            }
            .submitButton {
              background: #FFE4BD;
              height: 72px;
              width: 72px;
              margin-left: auto;
            }
            .close {
              height: 24px;
              width: 24px;
              background: #FF8783;
              position: absolute;
              top: 16px;
              right: 16px;
            }
            .close svg {
              transform: translatey(-3px);
            }
            .social {
              width: 56px;
              height: 56px;
              border-radius: 50%;
            }
            .social svg {
              height: 1.5em;
              width: 1.5em;
              fill: white;
            }
            .twitter {
              background: #1DCAFF;
              margin-right: 16px;
            }
            .facebook {
              background: #3B5998;
            }
        </style>
    </head>

    <body>

        <div class="loginCard">



          <div class="innerCard">
            <h1>Log in</h1>
            <p>Welcome back, Deals are missing you !</p>
            <input id="signup-email" type="email" placeholder="Email Address">
            <input id="signup-password" type="password" placeholder="Password">

          </div>

          <p style = "color:white; display:none" id = "signup-error">Used for errors</p>

          <div class="buttonWrapper">


          <!-- Comment
          use it letter -> <span class="extraLinks"><a href="">Forgot Password</a><a href="">Signup</a></span>

          <a class="social twitter" href="">
            <svg width="40" height="30" viewBox="0 0 45 36" fill="none" xmlns="http://www.w3.org/2000/svg">
        <path d="M44.247 4.59932C42.639 5.31399 40.9211 5.79501 39.1069 6.00116C40.9486 4.88794 42.3779 3.14251 43.0376 1.05349C41.3059 2.08425 39.3955 2.82641 37.3615 3.22497C35.726 1.49328 33.4033 0.393799 30.8333 0.393799C25.061 0.393799 20.8143 5.78126 22.1199 11.3749C14.6846 11.0038 8.08774 7.44423 3.67607 2.02928C1.33966 6.04239 2.46663 11.3062 6.43852 13.9724C4.96796 13.9312 3.59361 13.5189 2.38417 12.8592C2.28797 17.0097 5.25657 20.8854 9.5583 21.7375C8.2939 22.0811 6.91954 22.1636 5.5177 21.8887C6.65842 25.4483 9.95687 28.0321 13.8738 28.1008C10.108 31.0419 5.38027 32.3613 0.625 31.8115C4.58314 34.3541 9.28343 35.8246 14.3411 35.8246C30.9433 35.8246 40.3301 21.7925 39.7666 9.21715C41.5395 7.96649 43.0513 6.39973 44.247 4.59932Z" fill="white"/>
        </svg>

          </a>

          <a class="social facebook" href="">
            <svg width="18" height="36" viewBox="0 0 21 44" fill="none" xmlns="http://www.w3.org/2000/svg">
        <path d="M4.88946 14.2942H0.317993V21.7555H4.88946V43.6537H13.6712V21.6559H19.7997L20.4474 14.2942H13.6712C13.6712 14.2942 13.6712 11.5414 13.6712 10.0964C13.6712 8.36501 14.0199 7.66746 15.7015 7.66746C17.0593 7.66746 20.4598 7.66746 20.4598 7.66746V0.0317383C20.4598 0.0317383 15.4524 0.0317383 14.3812 0.0317383C7.84161 0.0317383 4.90192 2.90915 4.90192 8.41484C4.88946 13.223 4.88946 14.2942 4.88946 14.2942Z" fill="white"/>
        </svg>
        //Comment
        -->

          </a>
          <button type="button" id="btn-signup" class="submitButton">
            <svg width="24" height="24" viewBox="0 0 41 41" fill="none" xmlns="http://www.w3.org/2000/svg">
        <path d="M20.4375 0.0546875L16.8464 3.64578L31.058 17.8828H0.0625V22.9766H31.058L16.8464 37.2136L20.4375 40.8047L40.8125 20.4297L20.4375 0.0546875Z" fill="#76440C"/>
        </svg>

          </button>
          </div>
        </div>

        <script>

            function validateSignupForm(){
                var email = $("#signup-email").val();
                var password = $("#signup-password").val();

                var error = "";

                //if name is empty

                if(!email){
                    error += "Email is empty.";
                }
                if(!password){
                    error += "Password is empty.";
                }
                if(password.length <= 6){
                    error += "Password length must be greater than 6 characters."
                }

                $("#signup-error").html(error);

                if(error.length > 0){
                    return false;
                }

                return true;
            }

            $("#btn-signup").click(function(){

                var isFormValid = validateSignupForm();

                if(isFormValid){
                    $("#signup-error").hide();

                    var email = $("#signup-email").val();
                    var password = $("#signup-password").val();

                    var user = {
                        "email" : email,
                        "password" : password
                    };

                    $.ajax({
                        type: "POST",
                        url: "/login/welcome",
                        data: JSON.stringify(user),
                        success: function(response){
                            if(!!response){
                                if(response.is_logined === true){
                                    location.href = "/welcome";
                                } else {
                                    $("#signup-password").val("");
                                    $("#signup-error").html(response.message);
                                    $("#signup-error").show();
                                }
                            }
                        },
                        contentType: 'application/json'
                    });
                }else{
                    $("#signup-error").show();

                }

            });

        </script>

    </body>
 </html>