
 @extends('layouts.principal') 
 	@section('content') 
 	{!!Form::open(['method'=>'POST'])!!} 
 	<div class="form-group"> 
 	<label class="col-sm-2 control-label"></label>
 	<div class="col-sm-7"
 	
 	
 		{!!Form::label('marca','Marca:')!!} 
 		{!!Form::text('name',null,['class'=>'form-control','placeholder'=>'Ingresa el nombre de la marca'])!!} 
 	</div> 
 	
 	
 	<br>

 	{!!Form::submit('Registrar',['class'=>'btn btn-primary'])!!} 
 	{!!Form::close()!!} 
 	@endsection 
