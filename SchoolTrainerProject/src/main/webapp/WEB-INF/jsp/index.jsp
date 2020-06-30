<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
              integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
                integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
                integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
                integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
        crossorigin="anonymous"></script>
        <title>Private School</title>
    </head>

    <body>

        <!-- Sticky navbar -->
        <header>
            <%@include file="header.jsp"%>
        </header>


        <!-- carousel -->
        <div class="carousel slide" id="mycarousel" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#mycarousel" data-slide-to="0"></li>
                <li data-target="#mycarousel" data-slide-to="1" class="active"></li>
                <li data-target="#mycarousel" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item">
                    <img src="/photos/education1.jpg" class="d-block w-100 rounded" alt="slide1">
                </div>
                <div class="carousel-item active">
                    <img src="/photos/education2.jpg" class="d-block w-100 rounded" alt="slide2">
                </div>
                <div class="carousel-item">
                    <img src="/photos/education3.jpg" class="d-block w-100" alt="slide3">
                </div>
            </div>


            <a class="carousel-control-prev" href="#mycarousel" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#mycarousel" role="button" data-slide="next">
                <span class="carousel-control-next-icon"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>

        <!--jumbotron-->
        <div class="jumbotron mt-1 bg-info text-white">
            <h3 class="display-6 text-center">The Best School Ever !!!</h3>
        </div>

        <div class=" my-5 card text-center" id="aboutus">
            <div class="card-header bg-info text-white">
                <h3>About us</h3>
            </div>
            <div class="card-body">
                <h5 class="card-title">Who we are</h5>
                <p class="card-text text-left">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Optio sunt est
                    ex quo
                    iusto iste dolorem nesciunt voluptatum, mollitia accusantium reprehenderit, accusamus, consectetur
                    dignissimos atque quos praesentium ipsa aperiam veniam. Lorem ipsum, dolor sit amet consectetur
                    adipisicing elit. Officiis nisi est in deleniti tempora animi consequuntur nostrum saepe corrupti
                    velit, modi, explicabo repudiandae dignissimos recusandae dolor illum repellat odio excepturi. Lorem
                    ipsum dolor sit amet consectetur adipisicing elit. Modi nam exercitationem eveniet consequuntur odit
                    tenetur magnam obcaecati iure voluptates ullam? Porro, veniam nesciunt! Commodi voluptatem minus ea,
                    sit quas ipsam? Lorem ipsum dolor sit amet consectetur adipisicing elit. Nemo quas asperiores,
                    veniam eaque, assumenda officiis et obcaecati odit cumque laboriosam maiores inventore laborum dicta
                    beatae illo. Reiciendis est dolor soluta.</p>

            </div>
        </div>

        <%@include file="footer.jsp"%>
    </body>

</html>