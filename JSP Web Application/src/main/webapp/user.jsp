<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Bootstrap demo</title>
<link rel="stylesheet" href="./main1.css">
<link rel="stylesheet" href="./font-awesome-4.7.0/css/font-awesome.css">
<link rel="shortcut icon" href="./images/favicon.ico"
	type="image/x-icon">
<link rel="stylesheet"
	href="./bootstrap-5.3.0-alpha1-dist/css/bootstrap.css">
</head>

<%
String uname=request.getParameter("name");

%>

<body>



	<section id="search-bar">
		<nav class="navbar navbar-expand-lg bg-body-tertiary">
			<div class="container-fluid">
				<h1 id="logo">Raj Transports</h1>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarSupportedContent">

					<form class="d-flex" role="search">
						<input style="margin-left: 20px;border: 1px solid white;" id="search" class="form-control me-2" type="search"
							placeholder="Search" aria-label="Search"> <i
							id="search-icon" class="fa fa-search" aria-hidden="true"></i> 
							
							<a href="#" 
							style='color: white;
							text-decoration: none;
							 
							  background-color: black; 
							  font-size: 20px; 
							  height: 30px; 
							  border-radius: 5px; 
							  margin-top: 3px; 
							  margin-left: 600px; 
							  padding-left: 10px; 
							  padding-top: 5px; 
							  position: absolute;
							  cursor: default;'>Hello, <%out.println(uname); %></a>
						
							<a href="./display_cart.jsp"><i class="fa fa-shopping-cart"
							style='color: black;
							 border: 1px solid black;
							  background-color: rgba(255, 255, 0, 0.815); 
							  font-size: 20px; 
							  height: 30px; 
							  border-radius: 5px; 
							  margin-top: 5px; 
							  margin-left: 600px; 
							  padding-left: 10px; 
							  padding-top: 5px; 
							  position: absolute;'></i>
						</a>
						
						<a href="#"
							style="color: white;
							text-decoration: none;
							margin-left: 300px;
							margin-top: 3px;
							font-size: 20px; 
							padding-top: 5px;">My Orders</a>
							
							
						<a href="./main.html"
							style="color: white;
							text-decoration: none;
							margin-left: 300px;
							margin-top: 3px;
							font-size: 20px; 
							padding-top: 5px;">Log Out</a>


					</form>
				</div>
			</div>
		</nav>
	</section>


	<section id="option-bar">
		<ul class="nav">
			<li class="nav-item" id="menu"><i id="menu-icon"
				class="fa fa-list-ul" aria-hidden="true"></i> <a class="nav-link"
				href="#"></a></li>
			<li class="nav-item"><a class="nav-link" href="./block.jsp">AAC Blocks</a></li>
			<li class="nav-item"><a class="nav-link" href="./cement.jsp">Cement</a></li>
			<li class="nav-item"><a class="nav-link" href="./sand.jsp">Sand</a></li>
			<li class="nav-item"><a class="nav-link" href="./brick.jsp">Bricks</a></li>
			<li class="nav-item"><a class="nav-link" href="./construction.jsp">Construction
					Aggregates</a></li>
			<li class="nav-item"><a class="nav-link" href="#">Wooden
					Products</a></li>
			<li class="nav-item"><a class="nav-link" href="#">Steel</a></li>
			<li class="nav-item"><a class="nav-link" href="#">Plumbing</a></li>
			<li class="nav-item"><a class="nav-link" href="#">Hardware
					Fixtures</a></li>
			<li class="nav-item"><a class="nav-link" href="#">RMC</a></li>
		</ul>

	</section>


	<section id="section-carousel">

		<div id="carouselExampleAutoplaying" class="carousel slide"
			data-bs-ride="carousel">

			<div class="carousel-inner">


				<div class="carousel-item active" id="carousel-img1">

					<img id="img1" src="./Images/Carousel/carousel1.png"
						class="d-block w-100" alt="...">
				</div>
				<div class="carousel-item" id="carousel-img2">

					<img src="./Images/Carousel/carousel2.png" class="d-block w-100"
						alt="...">
				</div>
				<div class="carousel-item" id="carousel-img3">

					<img src="./Images/Carousel/carousel3.png" class="d-block w-100"
						alt="...">
				</div>
			</div>
			<button class="carousel-control-prev" type="button"
				data-bs-target="#carouselExampleAutoplaying" data-bs-slide="prev"
				style="width: 50px;">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>


			<button class="carousel-control-next" type="button"
				data-bs-target="#carouselExampleAutoplaying" data-bs-slide="next"
				style="width: 50px;">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>

		</div>

	</section>


	<!--     ============================PRODUCT DIV============================= -->
	<!--                                      BLOCKS -->
	<section id="product-div-section">
		<!-- BLOCK PRODUCTS -->
		<div id="card1-section">
			<div id="card1-header">
				<h2>Blocks | Get 20% off</h2>
			</div>
			<div id="card1-body"
				style="width: 270px; height: 260px; margin-left: 17px;">


				<span
					style="position: absolute; padding-top: 90px; margin-left: -10px">AAC
					Blocks</span> <span
					style="position: absolute; padding-top: 90px; padding-left: 150px; margin-left: -10px">Light
					Weight</span>
				<div id="d1"
					style="width: 270px; height: 100px; margin-top: -11px; margin-left: -11px;">
					<a href="./block.jsp"><img src="./Images/aac.jpg"
						alt=""
						style="width: 47%; height: 99px; margin-top: -10px; margin-left: -10px;"></a>

					<a href="#"><img src="./Images/light.jpg" alt=""
						style="width: 47%; height: 99px; margin-top: -10px; margin-left: 21.1px;"></a>
				</div>


				<span
					style="position: absolute; padding-top: 120px; margin-left: -10px">Insulated
					Block</span> <span
					style="position: absolute; padding-top: 120px; padding-left: 150px; margin-left: -10px">Concrete
					Block</span>
				<div id="d2"
					style="width: 270px; height: 100px; margin-top: 21px; margin-left: -11px;">
					<a href="#"><img src="./Images/insulated.jpg" alt=""
						style="width: 47%; height: 99px; margin-top: -10px; margin-left: -10px;"></a>

					<a href="#"><img src="./Images/concrete1.jpg" alt=""
						style="width: 47%; height: 99px; margin-top: -10px; margin-left: 21.1px;"></a>
				</div>
			</div>
			<div id="card1-footer"
				style="width: 270px; height: 50px; margin-top: 0px;">
				<a href="./Display.jsp">See more</a>
			</div>
		</div>

		<!--                              CEMENT -->
		<div id="card1-section">
			<div id="card1-header">
				<h2>Cement | Get 35% off</h2>
			</div>
			<div id="card1-body"
				style="width: 270px; height: 260px; margin-left: 17px;">


				<span
					style="position: absolute; padding-top: 90px; margin-left: -10px">ACC
					Cement</span> <span
					style="position: absolute; padding-top: 90px; padding-left: 150px; margin-left: -10px">Birla
					Cement</span>
				<div id="d1"
					style="width: 270px; height: 100px; margin-top: -11px; margin-left: -11px;">
					<a href="#"><img src="./Images/ACC Cement.jpg" alt=""
						style="width: 47%; height: 99px; margin-top: -10px; margin-left: -10px;"></a>

					<a href="#"><img src="./Images/Birls Cement.jpg" alt=""
						style="width: 47%; height: 99px; margin-top: -10px; margin-left: 21.1px;"></a>
				</div>


				<span
					style="position: absolute; padding-top: 120px; margin-left: -10px">Ultratech
					Cement</span> <span
					style="position: absolute; padding-top: 120px; padding-left: 150px; margin-left: -10px">Dalmia
					Cement</span>
				<div id="d2"
					style="width: 270px; height: 100px; margin-top: 21px; margin-left: -11px;">
					<a href="#"><img src="./Images/Ultratech Cement.jpg"
						alt=""
						style="width: 47%; height: 99px; margin-top: -10px; margin-left: -10px;"></a>

					<a href="#"><img src="./Images/Dalmia Cement.jpg" alt=""
						style="width: 47%; height: 99px; margin-top: -10px; margin-left: 21.1px;"></a>
				</div>
			</div>
			<div id="card1-footer"
				style="width: 270px; height: 50px; margin-top: 0px;">
				<a href="#">See more</a>
			</div>
		</div>


		<!--                          SAND -->
		<div id="card1-section">
			<div id="card1-header">
				<h2>Sand | Upto 20% off</h2>
			</div>
			<div id="card1-body"
				style="width: 270px; height: 260px; margin-left: 17px;">


				<span
					style="position: absolute; padding-top: 90px; margin-left: -10px">River
					Sand</span> <span
					style="position: absolute; padding-top: 90px; padding-left: 150px; margin-left: -10px">M-Sand</span>
				<div id="d1"
					style="width: 270px; height: 100px; margin-top: -11px; margin-left: -11px;">
					<a href="#"><img src="./Images/River Sand.jpg" alt=""
						style="width: 47%; height: 99px; margin-top: -10px; margin-left: -10px;"></a>

					<a href="#"><img src="./Images/M Sand.jpg" alt=""
						style="width: 47%; height: 99px; margin-top: -10px; margin-left: 21.1px;"></a>
				</div>


				<span
					style="position: absolute; padding-top: 120px; margin-left: -10px">Sea
					Sand</span> <span
					style="position: absolute; padding-top: 120px; padding-left: 150px; margin-left: -10px">Coarse
					Sand</span>
				<div id="d2"
					style="width: 270px; height: 100px; margin-top: 21px; margin-left: -11px;">
					<a href="#"><img src="./Images/sand.png" alt=""
						style="width: 47%; height: 99px; margin-top: -10px; margin-left: -10px;"></a>

					<a href="#"><img src="./Images/Coarse Sand.jpg" alt=""
						style="width: 47%; height: 99px; margin-top: -10px; margin-left: 21.1px;"></a>
				</div>
			</div>
			<div id="card1-footer"
				style="width: 270px; height: 50px; margin-top: 0px;">
				<a href="#">See more</a>
			</div>
		</div>

		<!--                          BRICKS -->
		<div id="card1-section">
			<div id="card1-header">
				<h2>Bricks | Get 10% off</h2>
			</div>
			<div id="card1-body"
				style="width: 270px; height: 260px; margin-left: 17px;">


				<span
					style="position: absolute; padding-top: 90px; margin-left: -10px">Red
					Bricks</span> <span
					style="position: absolute; padding-top: 90px; padding-left: 150px; margin-left: -10px">Concrete
					Bricks</span>
				<div id="d1"
					style="width: 270px; height: 100px; margin-top: -11px; margin-left: -11px;">
					<a href="#"><img src="./Images/Red Brick.jpg" alt=""
						style="width: 47%; height: 99px; margin-top: -10px; margin-left: -10px;"></a>

					<a href="#"><img src="./Images/Cement Brick.jpg" alt=""
						style="width: 47%; height: 99px; margin-top: -10px; margin-left: 21.1px;"></a>
				</div>


				<span
					style="position: absolute; padding-top: 120px; margin-left: -10px">Fly-Ash
					Bricks</span> <span
					style="position: absolute; padding-top: 120px; padding-left: 150px; margin-left: -10px">Light-Wgt
					Bricks</span>
				<div id="d2"
					style="width: 270px; height: 100px; margin-top: 21px; margin-left: -11px;">
					<a href="#"><img src="./Images/Fly Ash Brick.jpg" alt=""
						style="width: 47%; height: 99px; margin-top: -10px; margin-left: -10px;"></a>

					<a href="#"><img src="./Images/Light Weight Brick.jpg"
						alt=""
						style="width: 47%; height: 99px; margin-top: -10px; margin-left: 21.1px;"></a>
				</div>
			</div>
			<div id="card1-footer"
				style="width: 270px; height: 50px; margin-top: 0px;">
				<a href="#">See more</a>
			</div>
		</div>

		<!--                        CONSTRUCTION AGGREGATES -->
		<div id="card1-section">
			<div id="card1-header">
				<h2>Const Aggregates | Get 20% off</h2>
			</div>
			<div id="card1-body"
				style="width: 270px; height: 260px; margin-left: 17px;">


				<span
					style="position: absolute; padding-top: 90px; margin-left: -10px">Angular
					Agg.</span> <span
					style="position: absolute; padding-top: 90px; padding-left: 150px; margin-left: -10px">Irregular
					Agg.</span>
				<div id="d1"
					style="width: 270px; height: 100px; margin-top: -11px; margin-left: -11px;">
					<a href="#"><img
						src="./Images/Angular.jpg" alt=""
						style="width: 47%; height: 99px; margin-top: -10px; margin-left: -10px;"></a>

					<a href="#"><img
						src="./Images/Irregular.jpg" alt=""
						style="width: 47%; height: 99px; margin-top: -10px; margin-left: 21.1px;"></a>
				</div>


				<span
					style="position: absolute; padding-top: 120px; margin-left: -10px">Recycled
					Agg.</span> <span
					style="position: absolute; padding-top: 120px; padding-left: 150px; margin-left: -10px">Rounded
					Agg.</span>
				<div id="d2"
					style="width: 270px; height: 100px; margin-top: 21px; margin-left: -11px;">
					<a href="#"><img
						src="./Images/Recycle.jpg" alt=""
						style="width: 47%; height: 99px; margin-top: -10px; margin-left: -10px;"></a>

					<a href="#"><img
						src="./Images/Rounded.jpg" alt=""
						style="width: 47%; height: 99px; margin-top: -10px; margin-left: 21.1px;"></a>
				</div>
			</div>
			<div id="card1-footer"
				style="width: 270px; height: 50px; margin-top: 0px;">
				<a href="#">See more</a>
			</div>
		</div>

		<!--                            WOODEN PRODUCTS -->
		<div id="card1-section">
			<div id="card1-header">
				<h2>Wooden Products | Get 25% off</h2>
			</div>
			<div id="card1-body"
				style="width: 270px; height: 260px; margin-left: 17px;">


				<span
					style="position: absolute; padding-top: 90px; margin-left: -10px">Hanging
					Lamp</span> <span
					style="position: absolute; padding-top: 90px; padding-left: 150px; margin-left: -10px">Wooden
					Table</span>

				<div id="d1"
					style="width: 270px; height: 100px; margin-top: -11px; margin-left: -11px;">
					<a href="#"><img
						src="./Images/Wooden Hanging.jpg" alt=""
						style="width: 47%; height: 99px; margin-top: -10px; margin-left: -10px;"></a>

					<a href="#"><img src="./Images/Table.jpg"
						alt=""
						style="width: 47%; height: 99px; margin-top: -10px; margin-left: 21.1px;"></a>
				</div>
				<span
					style="position: absolute; padding-top: 120px; margin-left: -10px">Wooden
					Bowl</span> <span
					style="position: absolute; padding-top: 120px; padding-left: 150px; margin-left: -10px">Spices
					Box</span>
				<div id="d2"
					style="width: 270px; height: 100px; margin-top: 21px; margin-left: -11px;">
					<a href="#"><img src="./Images/Wooden Bowl.jpg"
						alt=""
						style="width: 47%; height: 99px; margin-top: -10px; margin-left: -10px;"></a>

					<a href="#"><img
						src="./Images/Wooden Spices Box.jpg" alt=""
						style="width: 47%; height: 99px; margin-top: -10px; margin-left: 21.1px;"></a>
				</div>
			</div>
			<div id="card1-footer"
				style="width: 270px; height: 50px; margin-top: 0px;">
				<a href="#">See more</a>
			</div>
		</div>








	</section>
	<section id="login-card-section">

		<div id="card-section">
			<h3 style="padding-left: 10px; padding-top: 10px;">
				Login here for best <br> experience
			</h3>
			<a href="./login.jsp"><button>Login in</button></a>
		</div>

		<div id="login-card-img">
			<img src="./Images/PNG/Premium Products.png" alt="">
		</div>
	</section>

	<!--                    HARDWARE FIXTURES -->
	<section id="product-card-section">
		<div id="product-div">
			<div id="card1-header">
				<h2>Hardware Fixtures | Get 30% off</h2>
			</div>
			<div id="card1-body"
				style="width: 270px; height: 260px; margin-left: 60px; margin-top: 45px;">


				<span
					style="position: absolute; padding-top: 90px; margin-left: -20px;">Door
					Handles</span> <span
					style="position: absolute; padding-top: 90px; padding-left: 150px; margin-left: -20px">Door
					hinge</span>
				<div id="d1"
					style="width: 270px; height: 100px; margin-top: -11px; margin-left: -11px;">
					<a href="#"><img
						src="./Images/Door handle.jpg" alt=""
						style="width: 47%; height: 99px; margin-top: -10px; margin-left: -10px; position: relative;"></a>

					<a href="#"><img src="./Images/Door Kadi.jpg"
						alt=""
						style="width: 47%; height: 99px; margin-top: -10px; margin-left: 21.1px; position: relative;"></a>
				</div>


				<span
					style="position: absolute; padding-top: 120px; margin-left: -20px">Door
					Knob</span> <span
					style="position: absolute; padding-top: 120px; padding-left: 150px; margin-left: -20px">Main
					Door Handle</span>
				<div id="d2"
					style="width: 270px; height: 100px; margin-top: 21px; margin-left: -11px;">
					<a href="#"><img src="./Images/Door Knob.jpg"
						alt=""
						style="width: 47%; height: 99px; margin-top: 0px; margin-left: -10px; position: relative;"></a>

					<a href="#"><img
						src="./Images/Main Door Handle.jpg" alt=""
						style="width: 47%; height: 99px; margin-top: 0px; margin-left: 21.1px; position: relative;"></a>
				</div>
			</div>
			<div id="product-footer"
				style="width: 270px; height: 50px; margin-top: 0px;">
				<a href="#">See more</a>
			</div>


		</div>


	</section>
	<section id="bg-color-section"></section>

	<section id="full-div">


		<div id="carouselExample1" class="carousel slide"
			style="width: 98%; margin: auto;">
			<div class="carousel-inner" id="product-carausel">
				<h2 style="margin-left: 20px; margin-top: 20px;">Today's Deals</h2>
				<a href="#"
					style="position: absolute; margin-top: -35px; margin-left: 250px; text-decoration: none; color: purple">See
					all deals</a>

				<div class="carousel-item active" id="product-carausel-div">
					<div>
						<a href="#"><img
							src="./Images/Door Fitting.jpg" alt=""
							style="width: 230px; height: 230px;"></a><span
							style="background: #CC0C39; color: white; padding: 4px 6px; font-size: 12px; border-radius: 2px;">Up
							to 20% off </span><i class="fa fa-inr" aria-hidden="true" id="inr-icon"></i><b><h5
								style="display: inline-block; margin-left: -20px;">299/piece</h5></b>
					</div>
					<div>
						<a href="#"><img src="./Images/Terracotta Brick.jpg"
							alt="" style="width: 230px; height: 230px;"></a><span
							style="background: #CC0C39; color: white; padding: 4px 6px; font-size: 12px; border-radius: 2px;">Save
							Rs.100</span><i class="fa fa-inr" aria-hidden="true" id="inr-icon"></i><b><h5
								style="display: inline-block; margin-left: -20px;">39/piece</h5></b>
					</div>
					<div>
						<a href="#"><img src="./Images/plumbing4.png" alt=""
							style="width: 230px; height: 230px;"></a><span
							style="background: #CC0C39; color: white; padding: 4px 6px; font-size: 12px; border-radius: 2px;">Up
							to 30% off </span><i class="fa fa-inr" aria-hidden="true" id="inr-icon"></i><b><h5
								style="display: inline-block; margin-left: -20px;">109.00</h5></b>
					</div>
					<div>
						<a href="#"><img src="./Images/PNG/brick.png" alt=""
							style="width: 230px; height: 230px;"></a><span
							style="background: #CC0C39; color: white; padding: 4px 6px; font-size: 12px; border-radius: 2px; margin-left: 20px;">Up
							to 35% off </span><i class="fa fa-inr" aria-hidden="true" id="inr-icon"></i><b><h5
								style="display: inline-block; margin-left: -20px;">119/piece</h5></b>
					</div>
					<div>
						<a href="#"><img src="./Images/ACC Cement.jpg" alt=""
							style="width: 230px; height: 230px;"></a><span
							style="background: #CC0C39; color: white; padding: 4px 6px; font-size: 12px; border-radius: 2px; margin-left: 30px;">Save
							Rs.100 </span><i class="fa fa-inr" aria-hidden="true" id="inr-icon"></i><b><h5
								style="display: inline-block; margin-left: -20px;">350/piece</h5></b>
					</div>
					<div>
						<a href="#"><img src="./Images/Ultratech Cement.jpg"
							alt="" style="width: 230px; height: 230px;"></a><span
							style="background: #CC0C39; color: white; padding: 4px 6px; font-size: 12px; border-radius: 2px; margin-left: 40px;">Save
							Rs.99 </span><i class="fa fa-inr" aria-hidden="true" id="inr-icon"></i><b><h5
								style="display: inline-block; margin-left: -20px;">499/piece</h5></b>
					</div>
				</div>
				<div class="carousel-item" id="product-carausel-div">
					<div>
						<a href="#"><img
							src="./Images/Door handle.jpg" alt=""
							style="width: 230px; height: 230px;"></a><span
							style="background: #CC0C39; color: white; padding: 4px 6px; font-size: 12px; border-radius: 2px;">Up
							to 20% off </span><i class="fa fa-inr" aria-hidden="true" id="inr-icon"></i><b><h5
								style="display: inline-block; margin-left: -20px;">299/piece</h5></b>
					</div>
					<div>
						<a href="#"><img
							src="./Images/Door Knob.jpg" alt=""
							style="width: 230px; height: 230px;"></a><span
							style="background: #CC0C39; color: white; padding: 4px 6px; font-size: 12px; border-radius: 2px;">Up
							to 15% off </span><i class="fa fa-inr" aria-hidden="true" id="inr-icon"></i><b><h5
								style="display: inline-block; margin-left: -20px;">39/piece</h5></b>
					</div>
					<div>
						<a href="#"><img
							src="./Images/Door Kadi.jpg" alt=""
							style="width: 230px; height: 230px;"></a><span
							style="background: #CC0C39; color: white; padding: 4px 6px; font-size: 12px; border-radius: 2px;">Up
							to 30% off </span><i class="fa fa-inr" aria-hidden="true" id="inr-icon"></i><b><h5
								style="display: inline-block; margin-left: -20px;">209/piece</h5></b>
					</div>
					<div>
						<a href="#"><img
							src="./Images/Main Door Handle.jpg" alt=""
							style="width: 230px; height: 230px;"></a><span
							style="background: #CC0C39; color: white; padding: 4px 6px; font-size: 12px; border-radius: 2px;">Up
							to 5% off </span><i class="fa fa-inr" aria-hidden="true" id="inr-icon"></i><b><h5
								style="display: inline-block; margin-left: -20px;">219/piece</h5></b>
					</div>
					<div>
						<a href="#"><img
							src="./Images/Wooden Spices Box2.jpg" alt=""
							style="width: 230px; height: 230px;"></a><span
							style="background: #CC0C39; color: white; padding: 4px 6px; font-size: 12px; border-radius: 2px;">Save
							Rs.99 </span><i class="fa fa-inr" aria-hidden="true" id="inr-icon"></i><b><h5
								style="display: inline-block; margin-left: -20px;">20/piece</h5></b>
					</div>
					<div>
						<a href="#"><img
							src="./Images/Wooden Bowl.jpg" alt=""
							style="width: 230px; height: 230px;"></a><span
							style="background: #CC0C39; color: white; padding: 4px 6px; font-size: 12px; border-radius: 2px;">Up
							to 25% off </span><i class="fa fa-inr" aria-hidden="true" id="inr-icon"></i><b><h5
								style="display: inline-block; margin-left: -20px;">249.00</h5></b>
					</div>
				</div>
				<div class="carousel-item" id="product-carausel-div">
					<div>
						<a href="#"><img src="./Images/PNG/brick.png" alt=""
							style="width: 230px; height: 230px;"></a><span
							style="background: #CC0C39; color: white; padding: 4px 6px; font-size: 12px; border-radius: 2px;">Up
							to 50% off </span><i class="fa fa-inr" aria-hidden="true" id="inr-icon"></i><b><h5
								style="display: inline-block; margin-left: -20px;">399.00</h5></b>
					</div>
					<div>
						<a href="#"><img src="./Images/ACC Cement.jpg" alt=""
							style="width: 230px; height: 230px;"></a><span
							style="background: #CC0C39; color: white; padding: 4px 6px; font-size: 12px; border-radius: 2px;">Up
							to 60% off </span><i class="fa fa-inr" aria-hidden="true" id="inr-icon"></i><b><h5
								style="display: inline-block; margin-left: -20px;">299/piece</h5></b>
					</div>
					<div>
						<a href="#"><img src="./Images/Ultratech Cement.jpg"
							alt="" style="width: 230px; height: 230px;"></a><span
							style="background: #CC0C39; color: white; padding: 4px 6px; font-size: 12px; border-radius: 2px;">Up
							to 30% off </span><i class="fa fa-inr" aria-hidden="true" id="inr-icon"></i><b><h5
								style="display: inline-block; margin-left: -20px;">119/piece</h5></b>
					</div>
					<div>
						<a href="#"><img
							src="./Images/Main Door Handle.jpg" alt=""
							style="width: 230px; height: 230px;"></a><span
							style="background: #CC0C39; color: white; padding: 4px 6px; font-size: 12px; border-radius: 2px;">Up
							to 10% off </span><i class="fa fa-inr" aria-hidden="true" id="inr-icon"></i><b><h5
								style="display: inline-block; margin-left: -20px;">499.00</h5></b>
					</div>
					<div>
						<a href="#"><img
							src="./Images/Wooden Spices Box2.jpg" alt=""
							style="width: 230px; height: 230px;"></a><span
							style="background: #CC0C39; color: white; padding: 4px 6px; font-size: 12px; border-radius: 2px;">Up
							to 25% off </span><i class="fa fa-inr" aria-hidden="true" id="inr-icon"></i><b><h5
								style="display: inline-block; margin-left: -20px;">150/piece</h5></b>
					</div>
					<div>
						<a href="#"><img
							src="./Images/Wooden Bowl.jpg" alt=""
							style="width: 230px; height: 230px;"></a><span
							style="background: #CC0C39; color: white; padding: 4px 6px; font-size: 12px; border-radius: 2px;">Save
							Rs.298 </span><i class="fa fa-inr" aria-hidden="true" id="inr-icon"></i><b><h5
								style="display: inline-block; margin-left: -20px;">1499/piece</h5></b>
					</div>

				</div>
			</div>
			<button id="btn1" class="carousel-control-prev" type="button"
				data-bs-target="#carouselExample1" data-bs-slide="prev"
				style="width: 50px; height: 400px;">
				<i class="fa fa-angle-left" aria-hidden="true"
					style="font-size: 50px; color: black;"></i> <span
					class="visually-hidden">Previous</span>
			</button>
			<button id="btn1" class="carousel-control-next" type="button"
				data-bs-target="#carouselExample1" data-bs-slide="next"
				style="width: 50px; height: 400px;">
				<i class="fa fa-angle-right" aria-hidden="true"
					style="font-size: 50px; color: black;"></i> <span
					class="visually-hidden">Next</span>
			</button>
		</div>

	</section>


	<section id="full-div2">
		<div id="carouselExample2" class="carousel slide"
			style="width: 98%; margin: auto;">
			<div class="carousel-inner" id="product-carausel">
				<h2 style="margin-left: 20px; margin-top: 20px;">Recommended
					Deals</h2>
				<a href="#"
					style="position: absolute; margin-top: -35px; margin-left: 370px; text-decoration: none; color: purple">See
					all deals</a>

				<div class="carousel-item active" id="product-carausel-div2">
					<div>
						<a href="#"><img
							src="./Images/Door Fitting.jpg" alt=""
							style="width: 230px; height: 230px;"></a><span
							style="background: #CC0C39; color: white; padding: 4px 6px; font-size: 12px; border-radius: 2px;">Up
							to 20% off </span><i class="fa fa-inr" aria-hidden="true" id="inr-icon"></i><b><h5
								style="display: inline-block; margin-left: -20px;">299/piece</h5></b>
					</div>
					<div>
						<a href="#"><img src="./Images/Terracotta Brick.jpg"
							alt="" style="width: 230px; height: 230px;"></a><span
							style="background: #CC0C39; color: white; padding: 4px 6px; font-size: 12px; border-radius: 2px;">Save
							Rs.100</span><i class="fa fa-inr" aria-hidden="true" id="inr-icon"></i><b><h5
								style="display: inline-block; margin-left: -20px;">39/piece</h5></b>
					</div>
					<div>
						<a href="#"><img src="./Images/plumbing4.png" alt=""
							style="width: 230px; height: 230px;"></a><span
							style="background: #CC0C39; color: white; padding: 4px 6px; font-size: 12px; border-radius: 2px;">Up
							to 30% off </span><i class="fa fa-inr" aria-hidden="true" id="inr-icon"></i><b><h5
								style="display: inline-block; margin-left: -20px;">109.00</h5></b>
					</div>
					<div>
						<a href="#"><img src="./Images/PNG/brick.png" alt=""
							style="width: 230px; height: 230px;"></a><span
							style="background: #CC0C39; color: white; padding: 4px 6px; font-size: 12px; border-radius: 2px; margin-left: 20px;">Up
							to 35% off </span><i class="fa fa-inr" aria-hidden="true" id="inr-icon"></i><b><h5
								style="display: inline-block; margin-left: -20px;">119/piece</h5></b>
					</div>
					<div>
						<a href="#"><img src="./Images/ACC Cement.jpg" alt=""
							style="width: 230px; height: 230px;"></a><span
							style="background: #CC0C39; color: white; padding: 4px 6px; font-size: 12px; border-radius: 2px; margin-left: 30px;">Save
							Rs.100 </span><i class="fa fa-inr" aria-hidden="true" id="inr-icon"></i><b><h5
								style="display: inline-block; margin-left: -20px;">350/piece</h5></b>
					</div>
					<div>
						<a href="#"><img src="./Images/Ultratech Cement.jpg"
							alt="" style="width: 230px; height: 230px;"></a><span
							style="background: #CC0C39; color: white; padding: 4px 6px; font-size: 12px; border-radius: 2px; margin-left: 40px;">Save
							Rs.99 </span><i class="fa fa-inr" aria-hidden="true" id="inr-icon"></i><b><h5
								style="display: inline-block; margin-left: -20px;">499/piece</h5></b>
					</div>
				</div>
				<div class="carousel-item" id="product-carausel-div2">
					<div>
						<a href="#"><img
							src="./Images/Door handle.jpg" alt=""
							style="width: 230px; height: 230px;"></a><span
							style="background: #CC0C39; color: white; padding: 4px 6px; font-size: 12px; border-radius: 2px;">Up
							to 19% off </span><i class="fa fa-inr" aria-hidden="true" id="inr-icon"></i><b><h5
								style="display: inline-block; margin-left: -20px;">299/piece</h5></b>
					</div>
					<div>
						<a href="#"><img
							src="./Images/Door Knob.jpg" alt=""
							style="width: 230px; height: 230px;"></a><span
							style="background: #CC0C39; color: white; padding: 4px 6px; font-size: 12px; border-radius: 2px;">Up
							to 30% off </span><i class="fa fa-inr" aria-hidden="true" id="inr-icon"></i><b><h5
								style="display: inline-block; margin-left: -20px;">39/piece</h5></b>
					</div>
					<div>
						<a href="#"><img
							src="./Images/Door Kadi.jpg" alt=""
							style="width: 230px; height: 230px;"></a><span
							style="background: #CC0C39; color: white; padding: 4px 6px; font-size: 12px; border-radius: 2px;">Up
							to 60% off </span><i class="fa fa-inr" aria-hidden="true" id="inr-icon"></i><b><h5
								style="display: inline-block; margin-left: -20px;">209/piece</h5></b>
					</div>
					<div>
						<a href="#"><img
							src="./Images/Main Door Handle.jpg" alt=""
							style="width: 230px; height: 230px;"></a><span
							style="background: #CC0C39; color: white; padding: 4px 6px; font-size: 12px; border-radius: 2px;">Up
							to 10% off </span><i class="fa fa-inr" aria-hidden="true" id="inr-icon"></i><b><h5
								style="display: inline-block; margin-left: -20px;">219/piece</h5></b>
					</div>
					<div>
						<a href="#"><img
							src="./Images/Wooden Spices Box2.jpg" alt=""
							style="width: 230px; height: 230px;"></a><span
							style="background: #CC0C39; color: white; padding: 4px 6px; font-size: 12px; border-radius: 2px;">Up
							to 30% off </span><i class="fa fa-inr" aria-hidden="true" id="inr-icon"></i><b><h5
								style="display: inline-block; margin-left: -20px;">20/piece</h5></b>
					</div>
					<div>
						<a href="#"><img
							src="./Images/Wooden Bowl.jpg" alt=""
							style="width: 230px; height: 230px;"></a><span
							style="background: #CC0C39; color: white; padding: 4px 6px; font-size: 12px; border-radius: 2px;">Up
							to 35% off </span><i class="fa fa-inr" aria-hidden="true" id="inr-icon"></i><b><h5
								style="display: inline-block; margin-left: -20px;">249.00</h5></b>
					</div>
				</div>
				<div class="carousel-item" id="product-carausel-div2">
					<div>
						<a href="#"><img src="./Images/PNG/brick.png" alt=""
							style="width: 230px; height: 230px;"></a><span
							style="background: #CC0C39; color: white; padding: 4px 6px; font-size: 12px; border-radius: 2px;">Up
							to 40% off </span><i class="fa fa-inr" aria-hidden="true" id="inr-icon"></i><b><h5
								style="display: inline-block; margin-left: -20px;">399.00</h5></b>
					</div>
					<div>
						<a href="#"><img src="./Images/ACC Cement.jpg" alt=""
							style="width: 230px; height: 230px;"></a><span
							style="background: #CC0C39; color: white; padding: 4px 6px; font-size: 12px; border-radius: 2px;">Up
							to 20% off </span><i class="fa fa-inr" aria-hidden="true" id="inr-icon"></i><b><h5
								style="display: inline-block; margin-left: -20px;">299/piece</h5></b>
					</div>
					<div>
						<a href="#"><img src="./Images/Ultratech Cement.jpg"
							alt="" style="width: 230px; height: 230px;"></a><span
							style="background: #CC0C39; color: white; padding: 4px 6px; font-size: 12px; border-radius: 2px;">Up
							to 25% off </span><i class="fa fa-inr" aria-hidden="true" id="inr-icon"></i><b><h5
								style="display: inline-block; margin-left: -20px;">119/piece</h5></b>
					</div>
					<div>
						<a href="#"><img
							src="./Images/Main Door Handle.jpg" alt=""
							style="width: 230px; height: 230px;"></a><span
							style="background: #CC0C39; color: white; padding: 4px 6px; font-size: 12px; border-radius: 2px;">Save
							Rs.99 </span><i class="fa fa-inr" aria-hidden="true" id="inr-icon"></i><b><h5
								style="display: inline-block; margin-left: -20px;">499.00</h5></b>
					</div>
					<div>
						<a href="#"><img
							src="./Images/Wooden Spices Box2.jpg" alt=""
							style="width: 230px; height: 230px;"></a><span
							style="background: #CC0C39; color: white; padding: 4px 6px; font-size: 12px; border-radius: 2px;">Up
							to 15% off </span><i class="fa fa-inr" aria-hidden="true" id="inr-icon"></i><b><h5
								style="display: inline-block; margin-left: -20px;">150/piece</h5></b>
					</div>
					<div>
						<a href="#"><img
							src="./Images/Wooden Bowl.jpg" alt=""
							style="width: 230px; height: 230px;"></a><span
							style="background: #CC0C39; color: white; padding: 4px 6px; font-size: 12px; border-radius: 2px;">Up
							to 45% off </span><i class="fa fa-inr" aria-hidden="true" id="inr-icon"></i><b><h5
								style="display: inline-block; margin-left: -20px;">1499/piece</h5></b>
					</div>

				</div>
			</div>
			<button id="btn2" class="carousel-control-prev" type="button"
				data-bs-target="#carouselExample2" data-bs-slide="prev"
				style="width: 50px; height: 400px;">
				<i class="fa fa-angle-left" aria-hidden="true"
					style="font-size: 50px; color: black;"></i> <span
					class="visually-hidden">Previous</span>
			</button>
			<button id="btn2" class="carousel-control-next" type="button"
				data-bs-target="#carouselExample2" data-bs-slide="next"
				style="width: 50px; height: 400px;">
				<i class="fa fa-angle-right" aria-hidden="true"
					style="font-size: 50px; color: black;"></i> <span
					class="visually-hidden">Next</span>
			</button>
		</div>
	</section>



	<!-- FOOTER PAGE -->
	<section id="footer-page">
		<div id="footer-page-div">
			<div>
				<ul>
					<h5>Get to Know Us</h5>
					<li>About us</li>
					<li>Careers</li>
					<li>Press Releases</li>
					<li>Amazon Science</li>
				</ul>
			</div>
			<div>
				<ul>
					<h5>Contact with Us</h5>
					<li>Facebook</li>
					<li>Twitter</li>
					<li>Instagram</li>

				</ul>
			</div>
			<div>
				<ul>
					<h5>Make Money with Us</h5>
					<li>Sell on Raj Transports</li>
					<li>Protect and Build your Brand</li>
					<li>Become an Affiliate</li>
					<li>Advertise your Products</li>
					<li>Payment Methods on Merchants</li>
				</ul>
			</div>
			<div>
				<ul>
					<h5>Let Us Help You</h5>
					<li>Covid-19 and Raj Transports</li>
					<li>Your Account</li>
					<li>Returns Centre</li>
					<li>100% Purchase Protection</li>
					<li>Raj Transports Download</li>
					<li>Help</li>

				</ul>
			</div>
		</div>

	</section>










	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
		crossorigin="anonymous"></script>
</body>

</html>