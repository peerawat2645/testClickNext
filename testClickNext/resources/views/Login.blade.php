@extends('layouts.MainLayout')


@section('content')
<section class="login py-5 border-top-1">
  <div class="container">
    <div class="row justify-content-center">
      <div class="col-lg-5 col-md-8 align-item-center">
        <div class="border">
          <h3 class="bg-gray p-4">Login Now </h3>
          <form method="POST" action="api/login" enctype="multipart/form-data">
            <fieldset class="p-4">
              <input class="form-control mb-3" name="username" type="text" placeholder="Username" required>
              <input class="form-control mb-3" name="password" type="password" placeholder="Password" required> 
              @if($error == "404")
                    <span style="color:red;">username or password not correct<br></span>
              @endif
              <button type="submit" class="btn btn-primary font-weight-bold mt-3">Log in</button>
             
            </fieldset>
          </form>
        </div>
      </div>
    </div>
  </div>
</section>
@endsection