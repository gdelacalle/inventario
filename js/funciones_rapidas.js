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
    id=dato[0];
	codigo=dato[1];
	producto=dato[2];
    
    $('#iid').val(id);
    $('#icodigo').val(codigo);
    $('#iproducto').val(producto);
}

function modificar_mp(datos){
    
    dato=datos.split('||');
    id=dato[0];
	codigo=dato[1];
	producto=dato[2];
	existencia=dato[3];
	categoria=dato[4];
    unidad=dato[5];
    peso=dato[6];

    
    $('#idmp').val(id);
    $('#iecodigo').val(codigo);
    $('#ieproducto').val(producto);
    $('#iecantidad').val(existencia);
    $('#seid_categoria').val(categoria);
    $('#seunidad').val(unidad);
    $('#iepesounitario').val(peso);
}


function comprar_mp(datos){
    dato=datos.split('||');
    id=dato[0];
	codigo=dato[1];
	producto=dato[2];
    
    $('#iid').val(id);
    $('#icodigo').val(codigo);
    $('#iproducto').val(producto);
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

function modificar_eq(datos){
    
    dato=datos.split('||');
    id=dato[0];
    seccion=dato[1];

    $('#ideq').val(id);
    $('#eseccion').val(seccion);
}

function modificar_obra(datos){
    
    dato=datos.split('||');
	id=dato[0];
    descripcion=[2];
	
    alert();

    $('#id').val(id);
    $('#iedescripcion').val(descripcion);
    

}


