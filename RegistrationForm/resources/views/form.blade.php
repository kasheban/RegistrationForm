@extends('home')

@section('content')
    <div class="mask d-flex align-items-center h-100 gradient-custom-3">
        <div class="container h-100">
            <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col-12 col-md-9 col-lg-7 col-xl-6">
                    <div class="card" style="border-radius: 15px;">
                        <div class="card-body p-5">
                            <h2 class="text-uppercase text-center mb-5">Create an account</h2>
                            <form method="post" action="{{route('store')}}">
                                {{csrf_field()}}
                                <div class="form-outline mb-1">
                                @if(session()->has('success'))
                                    <div class="alert alert-success">
                                        {{ session()->get('success') }}
                                    </div>
                                @endif
                                    <label class="form-label" for="name">Name</label>
                                    <input type="text" id="name" class="form-control form-control-lg" name="name" required/>
                                </div>
                                <div class="form-outline mb-1">
                                    <label class="form-label" for="email">Email</label>
                                    <input type="email" id="email" class="form-control form-control-lg" name="email"  required/>
                                </div>
                                <div class="form-outline mb-1">
                                    <label class="form-label" for="password">Password (letters, numbers, symbols, mixed case, min:8)</label>
                                    <input type="password" id="password" class="form-control form-control-lg" name="password" required />
                                </div>
                                <div class="form-outline mb-1">
                                <label class="form-label" for="password_confirmation">Repeat your password</label>
                                    <input type="password" id="password_confirmation" class="form-control form-control-lg" name="password_confirmation"  required/>
                                </div>
                                <div>
                                    <input type="checkbox" onclick="myFunction()">Show Password
                                    @if($errors->any())
                                        {!! implode('', $errors->all('<div class="alert-danger">:message</div>')) !!}
                                    @endif
                                </div>
                                <div class="d-flex justify-content-center">
                                    <button type="submit" class="btn btn-success btn-block btn-lg gradient-custom-4 text-body">Register</button>
                                </div>
                            </form>
                            <script>
                                function myFunction() {
                                    var x = document.getElementById("password");
                                    if (x.type === "password") {
                                        x.type = "text";
                                    } else {
                                        x.type = "password";
                                    }
                                    var y = document.getElementById("password_confirmation");
                                    if (y.type === "password") {
                                        y.type = "text";
                                    } else {
                                        y.type = "password";
                                    }
                                }
                            </script>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection