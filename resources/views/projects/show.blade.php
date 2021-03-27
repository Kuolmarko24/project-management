@extends('layouts.app')
@section('content')
<div class="container">
<div class="col-md-9 col-lg-9 col-sm-9 pull-left">
      <!-- Jumbotron -->
      <div class="jumbotron">
        <h1>{{$project->name}}</h1>
        <p class="lead">{{$project->description}}</p>
        <!--<p><a class="btn btn-lg btn-success" href="#" role="button">Get started today</a></p>-->
      </div>
      

      <!-- Example row of columns -->
      <div class="row" style="background: white; margin:10px; ">
      <!--<a href="/projects/create" class="pull-right btn btn-default btn-sm">Add project</a>-->
      <div class="row container-fluid">
      <form method="post" action="{{ route('comments.store') }}">
      {{csrf_field()}}

      <input type="hidden" name="commentable_type" value="App\Project">
      <input type="hidden" name="commentable_id" value="{{ $project->id}}">
      @include('partials.comments')
      <div class="form-group">
        <label for="comment-content">Comment</label>
        <textarea placeholder="Enter comment"
                style="resize: vertical"
                id="comment-content"
                name="body"
                rows="5" spellcheck="false"
                class="form-control autosize-target text-left">
    
        </textarea>
      </div>
      
      {{-- <div class="form-group">
        <label for="comment-content">Work confirmation(Url/Photo)</label>
        <textarea placeholder="Enter url or screenshots"
                style="resize: vertical"
                id="comment-content"
                name="url"
                rows="3" spellcheck="false"
                class="form-control autosize-target text-left">
    
        </textarea>
      </div> --}}

      <div class="form-group">
            <input type="submit" class="btn btn-primary"
                    value="Submit"/>
      </div>
      </form>
      </div>








     {{-- @foreach($project->comments as $comment)
        <div class="col-lg-4 col-lg-4 col-sm-4">
          <h2>{{ $comment->body }}</h2> 
          <p class="text-danger">{{$comment->url}}</p>
         
          <p><a class="btn btn-primary" href="/projects/{{$project->id}}" role="button">View projects »</a></p>
        </div>
      @endforeach--}}
   

  


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
           <!-- <li><a href="../projects/edit/{{ $project->id }}">Edit</a></li>-->
              {{-- <li><a href="/projects/{{ $project->id }}/edit">Edit</a></li> --}}
              <li><a href="/projects/create">Create new project</a></li>
              <li><a href="/projects">My projects</a></li>
              
              <br/>
              {{-- @if($project->user_id == Auth::user()->id)
              <li>
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
              <form id="delete-form" action="../projects/delete/{{$project->id}}"
              method="POST" style="display:none;">
                  <input type="hidden" name="_method" value="delete"/>
                  {{ csrf_field()}}
              </form>
              </li>
              @endif; --}}
              <!--<li><a href="#">Add new user</a></li>-->
            </ol>
          </div>
         {{-- <h4>Add Members</h4>
         <div class="row">
         <div class="col-lg-12 col-md-12 col-xs-12 col-sm-12">
         <form id="add-user" action="{{ route('projects.adduser') }}"
              method="POST">
              {{csrf_field()}}
         <div class="input-group">
         <input class="form-control" name="project_id" value="{{$project->id}}" type="hidden">
         <input type="text" class="form-control" name="email" placeholder="Email">
         <span class="input-group-btn">
         <button class="btn btn-default" type="submit">Add</button>
         </span>
         </div>
         </form>
         </div>
         </div> --}}
          {{-- <div class="sidebar-module">
            <h4>Team Members</h4>
            <ol class="list-unstyled">
            @foreach($project->users as $user)
              <li><a href="#">{{$user->email}}</a></li>
            @endforeach
            </ol>
          </div> --}}
        </div>
    @endsection