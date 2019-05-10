@extends('layouts.app');





@section('content')

    <div class="row">
        @foreach($blogs as $blog)


            <div class="col-md6">

                <br>
                <br>

                <div class="card">
                    <div class="card-header">
                        <h3><a href="{{ route('blog_path', ['blog'=>$blog->id]) }}">{{$blog->megnevezes}}</a></h3>

                    </div>
                    <div class="card-body">
                        <a href="{{ route('blog_path', ['blog'=> $blog->id]) }}">
                            <img src="{{ asset($blog->image) }}" alt="" class="card-img-top">
                        </a>
                        <br>
                        <br>
                        <h6>{{$blog->bevezeto}}</h6>

                        <br>
                        <br>

                        <p class="lead">
                            posted
                            {{ $blog->created_at->diffForHumans() }}

                        </p>

                        <a href="{{ route('blog_path', ['blog' => $blog->id]) }}" class="btn btn-outline-primary">Bővebben</a>

                    </div>
                </div>


            </div>
        @endforeach

    </div>


@endsection