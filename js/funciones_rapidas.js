function modificar_productos(datos){
    
    dato=datos.split('||');
	codigo=dato[1];
	producto=dato[2];
	existencia=dato[3];
	categoria=dato[4];

    $('#codigo').val(codigo);
    $('#producto').val(producto);
    $('#cantidad').val(existencia);
    $('#id_categoria').val(categoria);
}

function comprar_productos(datos){
    
    dato=datos.split('||');
	codigo=dato[1];
	producto=dato[2];
	existencia=dato[3];
	
    $('#codigo').val(codigo);
    $('#producto').val(producto);
    $('#cantidad').val(existencia);
}

function modificar_mp(datos){
    
    dato=datos.split('||');
	codigo=dato[1];
	producto=dato[2];
	existencia=dato[3];
	categoria=dato[4];

    $('#codigo').val(codigo);
    $('#producto').val(producto);
    $('#cantidad').val(existencia);
    $('#id_categoria').val(categoria);
}

function comprar_mp(datos){
    
    dato=datos.split('||');
	codigo=dato[1];
	producto=dato[2];
	existencia=dato[3];
	
    $('#codigo').val(codigo);
    $('#producto').val(producto);
    $('#cantidad').val(existencia);
}

function actualizar_mp(datos){
    
    dato=datos.split('||');
	producto=dato[2];
	
    $('#producto').val(producto);
}


function modificar_clientes(datos){
    
    dato=datos.split('||');
	id=dato[0];
	nombre=dato[1];
	apellido=dato[2];
	cuit=dato[3];
    telefono=dato[4];
    correo=dato[5];
    direccion=dato[6];

    $('#id').val(id);
    $('#nombre').val(nombre);
    $('#apellido').val(apellido);
    $('#cuit').val(cuit);
    $('#telefono').val(telefono);
    $('#correo').val(correo);
    $('#direccion').val(direccion);
}

