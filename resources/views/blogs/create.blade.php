@extends('layouts.app')

@section('content')

<form method="post" action="{{ route('store_blog_path') }}" enctype="multipart/form-data" >
{{csrf_field()}}


    <div class="form-group">
        <label for="megnevezes">Utazás neve</label>
        <input type="text" name="megnevezes" class="form-control">
        
    </div>
    <div class="form-group">
        <input type="file" name="files" class="form-control">

    </div>
    <div class="form-group">
        <label for="bevezeto">Bevezető</label>
        <textarea name="bevezeto" rows="10" class="form-control"></textarea>

    </div>
    <div class="form-group">
        <label for="leiras">Leírás</label>
        <textarea name="leiras" rows="10" class="form-control"></textarea>

    </div>
    <div class="form-group">
        <label for="mettol">Mettől</label>
        <input type="date" name="mettol" class="form-control">
    </div>
    <div class="form-group">
        <label for="meddig">Meddig</label>
        <input type="date" name="meddig" class="form-control">
    </div>
    <div class="form-group">
        <label for="letszam">Létszám</label>
        <input type="integer" name="letszam" class="form-control">

    </div>
    <div class="form-group">
    <button type="submit" class="btn btn-outline-primary">Add BlogPost</button>
    
    </div>
</form>
@endsection