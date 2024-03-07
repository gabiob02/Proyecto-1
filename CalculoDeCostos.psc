Algoritmo CalculoDeCostos

    // Definir variables
Definir precio_original, descuento, impuestos, descuento_cantidad, costo_envio, costo_final, precio_con_descuento Como Real 
Definir cantidad_productos, peso_paquete como Entero
definir respuesta_descuento, destino_paquete como Cadena

costo_final <- 0

//ingresamos la cantidad de productos
Escribir "Ingrese la cantidad de productos:"
Leer cantidad_productos
//creamos un arreglo del tamaño de la cantidad de productos, uno por cada posicion
Dimension productos[cantidad_productos]

Para i <- 1 Hasta cantidad_productos Hacer
	// Leer el precio original del producto
    Escribir "Ingrese el precio del producto numero:" i
    Leer productos[i]
	
    // Aplicar un descuento si es aplicable
    Escribir "¿Tiene un cupón de descuento? (si/no):"
    Leer respuesta_descuento
    Si respuesta_descuento es igual a "si" entonces
        Escribir "Ingrese el porcentaje de descuento:"
        Leer descuento
		//aqui estamos asignandole a precio_con_descuento el valor del descuento segun el valor del producto i 
		precio_con_descuento = descuento * productos[i]
		productos[i] = productos[i] - precio_con_descuento
    Sino
        descuento = 0
    FinSi
	
	todo en orden 
	
   
FinPara

	
    // Si el cliente compra más de un artículo, aplicar un descuento por cantidad
    Si cantidad_productos es mayor que 1 entonces
        descuento_cantidad = precio_original * 0.05 * cantidad_productos  // Suponiendo un descuento del 5% por cantidad
    Sino
        descuento_cantidad = 0
    FinSi
	
    // Calcular el costo de envío basado en el destino y el peso del paquete
    Escribir "Ingrese el peso del paquete en kilogramos:"
    Leer peso_paquete
    Escribir "Ingrese el destino del paquete:"
    Leer destino_paquete
	Si destino_paquete es igual a "Nacional" entonces
		costo_envio = peso_paquete * 1  // Suponiendo costo de envío nacional de 0.2 por kilogramo
	Sino
		costo_envio = peso_paquete * 2  // Suponiendo costo de envío internacional de 0.5 por kilogramo
	FinSi
	
	Para i <- 1 Hasta cantidad_productos Hacer
		costo_final = costo_final + productos[i]// Calcular el costo final del producto
		// Aplicar impuestos al producto
	FinPara
	impuestos = costo_final * 0.15  // Suponiendo un impuesto del 15%
    costo_final = costo_final - descuento_cantidad + costo_envio + impuestos
	
	
    // Mostrar el costo final del producto desglosando los componentes
    Escribir "Costo final del producto:", costo_final
    Escribir "Precio original:", precio_original
    Escribir "Descuento:", descuento * 100, "%"
    Escribir "Impuestos:", impuestos 
    Escribir "Descuento por cantidad:", descuento_cantidad
    Escribir "Costo de envío:", costo_envio, "$"
    Escribir "Costo final:", costo_final

FinAlgoritmo



	




