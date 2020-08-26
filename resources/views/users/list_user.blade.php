@extends('layouts.master')

@section('content')
<div class="container">
    <table class="table table-bordered datatable">
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

        </tbody>
    </table>
</div> 
   
<script type=text/javascript>
  $('.datatable').DataTable({
        processing: true,
        serverSide: true,
        ajax: "{{ route('data') }}",
        columns: [
            {data: 'id', name: 'id'},
            {data: 'name', name: 'name'},
            {data: 'email', name: 'email'},
            {data: 'created_at', name: 'created_at'},
            {data: 'updated_at', name: 'updated_at'},
            {data: 'deleted_at', name: 'deleted_at'},
            
        ]
    });
</script>
@endsection