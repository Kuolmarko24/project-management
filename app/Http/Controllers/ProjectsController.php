<?php

namespace App\Http\Controllers;

use App\Project;
use App\Company;
use App\ProjectUser;
use App\User;
use DB;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
class ProjectsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        if(Auth::check()){
            
            $projects = Project::where('user_id',Auth::user()->id)->get();
            return view('projects.index',['projects'=> $projects]);
        } 
        return view('auth.login');
       
    }
    public function adduser(Request $request){
        //to add user to projects
        $project = Project::find($request->input('project_id'));
        if(Auth::user()->id == $project->user_id){
        $user = User::where('email',$request->input('email'))->first();
        //check if the user is already added to the project
        $projectUser = ProjectUser::where('user_id',$user->id)
                                    ->where('project_id',$project->id)
                                    ->first();
        if( $projectUser){
            //if user already exists, exit.
            return redirect()->route('projects.show',['project'=>$project->id])
            ->with('success',$request->input('email').'User is already a member of this project');
        }
        if($user && $project){
            $project->user()->attach($user->id);
            return redirect()->route('projects.show',['project'=>$project->id])
            ->with('success',$request->input('email').'was added to the project successfully');
        }
    }

    return redirect()->route('projects.show',['project'=>$project->id])
    ->with('errors','Error adding user to project');
    
    }

    public function allprojectss(){
        $projects= DB::table('projects')->get();
        return view('projects.index',['projects'=> $projects]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create($company_id = null)
    {
        //
        $companies = null;
        if(!$company_id){
            $companies = Company::where('user_id', Auth::user()->id)->get();
        }
        return view('projects.create',['company_id'=>$company_id,'companies'=>$companies]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
        if(Auth::Check()){
            $project = Project::create([
                'name'=>$request->input('name'),
                'description'=>$request->input('description'),
                'company_id'=>$request->input('company_id'),
                'user_id'=>Auth::user()->id,
            ]);
            if($project){
                return redirect()->route('projects.show',['project'=>$project->id])
                ->with('success','project created successfully');
            }
        }
        return back()->withInput()->with('errors', 'Could not create a project');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\project  $project
     * @return \Illuminate\Http\Response
     */
    public function show(Project $project)
    {
        //
       // $project = Project::where('id',$project->id)->first();
       $comments = $project->comments;
        $project = Project::find($project->id); 
        return view('projects.show',['project'=>$project, 'comments'=>$comments]);
    }

    /** 
     * Show the form for editing the specified resource.
     *
     * @param  \App\project  $project
     * @return \Illuminate\Http\Response
     */
    public function edit(Project $project)
    {
        //
        $project = Project::find($project->id);
        return view('projects.edit',['project'=>$project]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\project  $project
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Project $project)
    {
        //
        $projectUpdate  = Project::where('id', $project->id)
                ->update([
                    'name'=>$request->input('name'),
                    'description'=>$request->input('description')
                ]);
        if($projectUpdate){
            return redirect()->route('projects.show',['project'=>$project->id])
            ->with('success','project updated successfully');
        }
        //
        return back()->withInput();
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\project  $project
     * @return \Illuminate\Http\Response
     */
    public function destroy(Project $project)
    {
        //
        $findproject = Project::find($project->id);
        if($findproject->delete()){
        return redirect()->route('projects.index')
        ->with('success','project deleted successfully');
    }
    return back()->withInput()->with('errors', 'project could not be deleted');
    }
}
