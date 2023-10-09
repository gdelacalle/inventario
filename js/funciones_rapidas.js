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
    unidad=dato[5];
    peso=dato[6];

    $('#iecodigo').val(codigo);
    $('#ieproducto').val(producto);
    $('#iecantidad').val(existencia);
    $('#seid_categoria').val(categoria);
    $('#seunidad').val(unidad);
    $('#iepesounitario').val(peso);
}


function comprar_mp(datos){
    id=dato[0];
    dato=datos.split('||');
	codigo=dato[1];
	producto=dato[2];
	
	
    $('#icodigo').val(codigo);
    $('#iproducto').val(producto);
    $('#iid').val(id);
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

function modificar_equivalencia(datos){
    
    dato=datos.split('||');
	id=dato[0];
	e1=dato[1];
	e2=dato[2];
	b=dato[3];
    h1=dato[4];
    h2=dato[5];
    peso=dato[6];
    id_categoria=dato[7];
    seccion=dato[8];

    $('#id').val(id);
    $('#e1').val(e2);
    $('#e2').val(e2);
    $('#b').val(b);
    $('#h1').val(h1);
    $('#h2').val(h2);
    $('#peso').val(peso);
    $('#id_categoria').val(id_categoria);
    $('#seccion').val(seccion);

}

