<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Notifications\UserFollowed;
use App\User;
use DataTables;

class UsersController extends Controller
{
    public function index()
    {
        $users = User::where('id', '!=', auth()->user()->id)->get();
        return view('users.index', compact('users'));
    }

    public function listUser()
    {
        $listUser = User::latest()->withTrashed()->paginate(10);
        // dd($listUser);
        return view('users.users', compact('listUser'));
    }

    public function getUsers(Request $request) {
        if ($request->ajax()) {
            $data = User::latest()->withTrashed()->get();
            return Datatables::of($data)
                
                ->make(true);
        }

        return view('users.list_user');
    }
}
