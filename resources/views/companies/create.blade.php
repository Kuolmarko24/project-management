@extends('layouts.app')
@section('content')
<div class="container">
<div class="col-md-9 col-lg-9 col-sm-9 pull-left" style="background:white;">
<h2>Create new Company</h2>
      <!-- Example row of columns -->
      <div class="row col-md-12 col-lg-12 col-sm-12" style="background: white; margin:10px; ">
      <form method="post" action="{{ route('companies.store') }}">
      {{csrf_field()}}

      

      <div class="form-group">
        <label for="company-name">Name<span class="required">*</span></label>
        <input placeholder="Enter name"
            id="company-name"
            required
            name="name"
            spellcheck="false"
            class="form-control"
        
            />

      </div>

      <div class="form-group">
        <label for="company-content">Description</label>
        <textarea placeholder="Enter description"
                style="resize: vertical"
                id="company-content"
                name="description"
                rows="5" spellcheck="false"
                class="form-control autosize-target text-left">
    
        </textarea>
      </div>
      <div class="form-group">
            <input type="submit" class="btn btn-primary"
                    value="Submit"/>
      </div>
      </form>
    </div>
    </div>

    <div class="col-sm-3 col-md-3 col-lg-3 pull-right">

          <div class="sidebar-module">
            <h4>Actions</h4>
            <ol class="list-unstyled">
              <li><a href="/companies"><i class="fa fa-building-o" aria-hidden="true"></i>My Companies</a></li>
            </ol>
          </div>

          <!--<div class="sidebar-module">
            <h4>Members</h4>
            <ol class="list-unstyled">
              <li><a href="#">July 2020</a></li>
            </ol>
          </div>-->
        </div>
    @endsection