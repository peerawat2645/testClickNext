<!DOCTYPE html>
<html lang="en">
<head>

  <!-- ** Basic Page Needs ** -->
  <meta charset="utf-8">
  <title>PHP Page clickNext</title>

  <!-- ** Mobile Specific Metas ** -->
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="description" content="Agency HTML Template">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=5.0">
  <meta name="author" content="Themefisher">
  <meta name="generator" content="Themefisher Classified Marketplace Template v1.0">

  <!-- favicon -->
  <!--<link href="images/favicon.png" rel="shortcut icon">-->

  <!-- 
  Essential stylesheets
  =====================================-->
  <link href="{{ asset('plugins/bootstrap/bootstrap.min.css')}}" rel="stylesheet">
  <link href="{{ asset('plugins/bootstrap/bootstrap-slider.css')}}" rel="stylesheet">
  <link href="{{ asset('plugins/font-awesome/css/font-awesome.min.css')}}" rel="stylesheet">
  <link href="{{ asset('plugins/slick/slick.css')}}" rel="stylesheet">
  <link href="{{ asset('plugins/slick/slick-theme.css')}}" rel="stylesheet">
  <link href="{{ asset('plugins/jquery-nice-select/css/nice-select.css')}}" rel="stylesheet">
  
  <link href="{{ asset('scss/style.scss')}}" rel="stylesheet">

</head>

<body class="body-wrapper">


<header>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<nav class="navbar navbar-expand-lg navbar-light navigation">
					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
					 aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse" id="navbarSupportedContent">
						<ul class="navbar-nav ml-auto mt-10">
							<li class="nav-item">
								<a class="nav-link login-button" href="{{url('/api/logout')}}">log out</a>
							</li>
							<li class="nav-item">
								<a class="nav-link text-white add-button" href="ad-listing.html"><i class="fa fa-plus-circle"></i> Add Listing</a>
							</li>
						</ul>
					</div>
				</nav>
			</div>
		</div>
	</div>
</header>

@yield('content')


<!-- 
Essential Scripts
=====================================-->
@yield('script')
<script src="{{ asset('plugins/jquery/jquery.min.js')}}"></script>
<script src="{{ asset('plugins/bootstrap/popper.min.js')}}"></script>
<script src="{{ asset('plugins/bootstrap/bootstrap.min.js')}}"></script>
<script src="{{ asset('plugins/bootstrap/bootstrap-slider.js')}}"></script>
<script src="{{ asset('plugins/tether/js/tether.min.js')}}"></script>
<script src="{{ asset('plugins/raty/jquery.raty-fa.js')}}"></script>
<script src="{{ asset('plugins/slick/slick.min.js')}}"></script>
<script src="{{ asset('plugins/jquery-nice-select/js/jquery.nice-select.min.js')}}"></script>
<!-- google map -->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCcABaamniA6OL5YvYSpB3pFMNrXwXnLwU" defer></script>
<script src="{{ asset('plugins/google-map/map.js')}}" defer></script>

<script src="{{ asset('js/script.js')}}"></script>

</body>

</html>