TITLE NombrePrograma

;DESCRPICI�N 
;Objetivo: Archivo de Ejemplo
;
; Autore(s):
;         Apellido Nombre Integrante 1
;         Apellido Nombre Integrante 2

; Semestre: 8vo Semestre ISC 
;FIN DESCRPICI�N

INCLUDE Irvine32.inc  
INCLUDE MACROS.inc

.data
; �rea de Declaraci�n de Variables
cadena_A_p15 db "Hola Mundx",0


.code

	main15 PROC	
		;L�gica del Programa		
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		
		;BUSCAR UN CARACTER Y SI EXISTE, ENTONCES SE CAMBIARA POR OTRO CARACTER Y SE IMPRIMIR� LA NUEVA CADENA

		mov edi, offset cadena_A_p15
		

		mov eax, 0 ;limpia el registro eax

		mov al, 'M'  ;caracter a buscar

		mov ecx, sizeof cadena_A_p15  ;total de elementos en la cadena
		dec ecx ; para quitarle el cero de termino en la comparacion 		

		mov ebx, 0 ; indice

		cicloBusqueda:

			scasb  ; 

			jz esigual
			jnz noesigual

			esigual:
				ImpPantallaLn "Es igual"	
				mov ecx, 1
				jmp continuar

			noesigual:
				ImpPantallaLn "No es igual"  ; modifica el registro de banderas
		
		continuar:

		inc ebx
		cmp ebx, ecx
		jl cicloBusqueda	
				
		;;;;;;;;;;;;;;;;;fuera del ciclo

		cmp ecx, 1
		jz encontrado
			;no encontrado
			ImpPantallaLn "No se encontro el caracter buscado"
			jmp salir

		encontrado: 
			;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
			dec edi ; para volver a la posicion que deseamos modificar
			mov al, 'G'  ;nuevo caracter en la cadena
			stosb   
			;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

			ImpPantallaLn "El caracter se encontro en el indice:"
			mov eax, ebx
			dec eax 						
			call writedec

			call crlf
			mov edx, offset cadena_A_p15
			call writestring
			call crlf

		salir: 

		exit	
	
	main15 ENDP
	
	END main15



