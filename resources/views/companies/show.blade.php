@extends('layouts.app')
@section('content')
<div class="container">
<div class="col-md-9 col-lg-9 col-sm-9 pull-left">
      <!-- Jumbotron -->
      <div class="jumbotron">
        <h1>{{$company->name}}</h1>
        <p class="lead">{{$company->description}}</p>
        <!--<p><a class="btn btn-lg btn-success" href="#" role="button">Get started today</a></p>-->
      </div>
      

      <!-- Example row of columns -->
      <div class="row" style="background: white; margin:10px; ">
      {{-- <a href="/projects/create/{{ $company->id }}" class="pull-right btn btn-default btn-sm">Add project</a> --}}
      @foreach($company->projects as $project)
       
        <div class="col-lg-4 col-lg-4 col-sm-4">
          <h2>{{ $project->name }}</h2> 
          <p class="text-danger">{{$project->description}}</p>
         
          <p><a class="btn btn-primary" href="/projects/{{$project->id}}" role="button">View projects »</a></p>
        </div>
      @endforeach
      <!-- Site footer -->
     <!-- <footer class="footer">
        <p>© 2016 Company, Inc.</p>
      </footer>-->

    </div>
    </div>

    <div class="col-sm-3 col-md-3 col-lg-3 pull-right">
   <!-- <div class="sidebar-module sidebar-module-inset">
            <h4>About</h4>
            <p>Etiam porta <em>sem malesuada magna</em> mollis euismod. 
            Cras mattis consectetur purus sit amet fermentum. 
            Aenean lacinia bibendum nulla sed consectetur.</p>
          </div>-->
          <div class="sidebar-module">
            <h4>Actions</h4>
            <ol class="list-unstyled">
              <li><a href="../companies/edit/{{ $company->id }}">Edit</a></li>
              <!--<li><a href="/companies/{{ $company->id }}/edit">Edit</a></li>-->
              <li><a href="/projects/create">Add Project</a></li>
              <li><a href="/companies">My Companies</a></li>
              <li><a href="/companies/create">Create new Company</a></li>
              <br/>
              <li>
                
                {{-- @foreach ($company->projects as $project) --}}
                    @if(Auth::user()->id=$company->user_id)
                      <a 
                      href="#"
                      onClick="
                      var result = confirm('Are you sure you wish to delete this project?');
                      if(result){
                        event.preventDefault();
                        document.getElementById('delete-form').submit();
                        }
                      "
                      >
                      Delete
                      </a>
                    @else
                    @endif
                {{-- @endforeach --}}
                
              <form id="delete-form" action="../companies/delete/{{$company->id}}"
              method="GET" style="display:none;">
                  <input type="hidden" name="_method" value="delete"/>
                  {{ csrf_field()}}
              </form>
              </li>
              <!--<li><a href="#">Add new user</a></li>-->
            </ol>
          </div>

          <div class="sidebar-module">
            <h4>Members</h4>
            <ol class="list-unstyled">
              <li><a href="#">&copyright 2020 Kuol Marko</a></li>
            </ol>
          </div>
        </div>
    @endsection