@extends('layouts.master')

@section('content')
<div class="container">
    <table class="table table-striped table-hover table-bordered">
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Create</th>
                <th>Update</th>
                <th>Delete</th>
                <th colspan="2">Action</th>
            </tr>
        </thead>
        <tbody>
            @foreach($listUser as $user)
            <tr>
                <td>{{$user->id}}</td>
                <td>{{$user->name}}</td>
                <td>{{$user->email}}</td>
                <td>{{$user->created_at}}</td>
                <td>{{$user->updated_at}}</td>
                <td>{{$user->deleted_at}}</td>
                <td>
                    @if (empty($user->deleted_at))
                        <a class="btn btn-warning" title="Chỉnh sửa" href="">Edit</a>
                    @endif
                </td>
                <td>
                    @if (empty($user->deleted_at))
                        <form action="" class="deleteUser" method="POST" role="form">
                            @csrf
                            @method('DELETE')
                            <button type="submit" title="Xóa" class="btn btn-default">Del</button>
                        </form>
                    @else
                        <form action="" method="POST" role="form">
                            @csrf
                            <button type="submit" title="Khôi phục" class="btn btn-primary">Res</button>
                        </form>
                    @endif
                </td> 
            </tr>
            @endforeach
        </tbody>
    </table>
    <div class="text-center">{{ $listUser->links() }}</div>
</div>
@endsection