@extends('layouts.app')

@section('content')

    <form method="post" action="{{ route('update_blog_path', ['blog'=>$blog->id]) }}" >
        {{csrf_field()}}
        {{ method_field('PUT') }}


        <div class="form-group">
            <label for="megnevezes">Utazás neve</label>
            <input type="text" name="megnevezes" class="form-control" value="{{$blog->megnevezes}}">

        </div>
        <input type="file" name="files" class="form-control">
        <div class="form-group">
            <label for="bevezeto">Bevezető</label>
            <textarea name="bevezeto" rows="5" class="form-control" >{{$blog->bevezeto}}</textarea>

        </div>
        <div class="form-group">
            <label for="leiras">Leírás</label>
            <textarea name="leiras" rows="10" class="form-control" >{{$blog->leiras}}</textarea>

        </div>
        <div class="form-group">
            <label for="mettol">Mettől</label>
            <input type="date" name="mettol" class="form-control" value="{{ $blog->mettol}}">
        </div>
        <div class="form-group">
            <label for="meddig">Meddig</label>
            <input type="date" name="meddig" class="form-control" value="{{   $blog->meddig }}">
        </div>
        <div class="form-group">
            <label for="letszam">Létszám</label>
            <input type="integer" name="letszam" class="form-control" value="{{$blog->letszam}}">

        </div>
        <div class="form-group">
            <button type="submit" class="btn btn-outline-primary">Utazás szerkesztése</button>

        </div>
    </form>
@endsection