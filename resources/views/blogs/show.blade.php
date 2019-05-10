@extends('layouts.app')

@section('content')

<div class="row">

    <div class="col-md12">

        <br>
        <img src="{{ asset($blog->image) }}" class="card-img-top">
        <br><br>

        <h3>{{$blog->megnevezes}}</h3>
        <h6>{{ $blog->mettol }} - {{ $blog->meddig }}</h6>
        <hr>
        <p class="lead">
            {{$blog->leiras}}
        </p>


        <a href="{{route('edit_blog_path', ['blog'=> $blog->id])}}" class="btn btn-outline-info">Szerkesztés</a>
        <a href="{{route('blogs_path')}}" class="btn btn-outline-secondary">Vissza</a>
        <form action="{{route('delete_blog_path', ['blog' => $blog->id])}}" method="POST">
            {{csrf_field()}}
            {{method_field('DELETE')}}
            <button type="submit" class="btn btn-outline-danger">Törlés</button>
        </form>
    </div>



</div>

@endsection