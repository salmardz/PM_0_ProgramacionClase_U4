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
cadena_A_p16 db "Hola Mundx",0


.code

	main16 PROC	
		;L�gica del Programa		
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		
		;BUSCAR UN CARACTER Y SI EXISTE, ENTONCES SE CAMBIARA POR OTRO CARACTER Y SE IMPRIMIR� LA NUEVA CADENA

		mov esi, offset cadena_A_p16
		
		mov eax, 0 ;limpia el registro eax

		mov ecx, sizeof cadena_A_p16
		dec ecx

		ciclo:

			lodsb  ;va a cargar el primer caracter de la cadena en al

			call writechar
			call crlf

		loop ciclo
		

		salir: 

		exit	
	
	main16 ENDP
	
	END main16



