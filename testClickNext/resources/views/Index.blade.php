@extends('layouts.InsiteLayout')


@section('content')
<section class="hero-area bg-1 text-center overly">
	<!-- Container Start -->
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<!-- Header Contetnt -->
				<div class="content-block">
					<h1>Hello {{$user->username}} </h1>
					<p>Your Balance: {{$balance->amount}}</p>
				</div>
				<!-- Advance Search -->
				<div class="advance-search">
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-lg-12 col-md-12 align-content-center">
								<form method="GET" action="user/create" enctype="multipart/form-data">
									<div class="form-row">
										<div class="form-group col-xl-4 col-lg-3 col-md-6">
											<input type="text" class="form-control my-2 my-lg-1" id="amount" name="amount"
												placeholder="Amount">
										</div>
										<div class="form-group col-lg-3 col-md-6">
											<select class="w-100 form-control mt-lg-1 mt-md-2" name="status" id="status">
												<option>Mode</option>
												<option value="withdraw">withdraw</option>
												<option value="deposit">deposit</option>
											</select>
										</div>
										<input type="hidden" name="balanceID" id="inputLocation4" value="{{ $balance->balanceID }}" placeholder="Location">
										<div class="form-group col-xl-2 col-lg-3 col-md-6 align-self-center">
											<button type="submit" class="btn btn-primary active w-100">Submit</button>
										</div>
									</div>
								</form>
								<div class="form-group col-xl-2 col-lg-3 col-md-6 align-self-center">
								<button onclick="Summary()" class="btn btn-main btn-round-full">summary</a>
								<p id="summary"></p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Container End -->
</section>

@endsection

@section('script')
	<script>
		function Summary() {
			document.getElementById("summary").innerHTML = "interest : " +({{$balance->amount}} * 0.05);
			}
	</script>
@endsection