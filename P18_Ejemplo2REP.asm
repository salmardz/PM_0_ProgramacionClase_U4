INCLUDE Irvine32.inc  
INCLUDE MACROS.inc

.data
; �rea de Declaraci�n de Variables
cadena_origen_p18 db "Hola Mundo", 0
cadena_destino_p18 db 15 dup (65)  ;65 = 'A'



.code

	main18 PROC	
		;L�gica del Programa		
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		
		mov esi, offset cadena_origen_p18 ; memoria direccionada a origen
		mov edi, offset cadena_destino_p18 ;memoria direccionada a destino

		movsb  ; copia el contenido de la mem direccionada origen a la mem direccionada destino

		mov ecx, sizeof cadena_origen_p18
		dec ecx
		
		rep movsb   ;movsb incrementa a esi y a edi en uno de forma autom�tica
		
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

		mov edx, offset cadena_destino_p18
		call writestring

		exit	
	
	main18 ENDP
	
	END main18

	

