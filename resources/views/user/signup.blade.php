@extends('layouts.master')

@section('content')
<div class="row">
  <div class="col-md-8 col-md-offset-2">
    <h1>Sign Up</h1>
    @if(count($errors) > 0)
    <div class="alert alert-danger">
      @foreach($errors->all() as $error)
      <p>{{ $error }}</p>
      @endforeach
    </div>
    @endif
    <form class="" action="{{route('user.signup')}}" method="post">
        <div class="form-group">
          <label for="email">Email</label>
          <input  class="form-control" type="text" id="email" name="email">
        </div>
        <div class="form-group">
          <label for="password">Password</label>
          <input class="form-control" type="password" id="password" name="password">
        </div>
        <button type="submit" class="btn btn-primary">Sign Up</button>
        {{ csrf_field() }}
    </form>
  </div>
</div>
@endsection
