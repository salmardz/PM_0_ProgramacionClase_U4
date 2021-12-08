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
cadena_origen_p11 db "Hola Mundo", 0
cadena_destino_p11 db 15 dup (65)  ;65 = 'A'



.code

	main11 PROC	
		;L�gica del Programa		
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		
		mov esi, offset cadena_origen_p11 ; memoria direccionada a origen
		mov edi, offset cadena_destino_p11 ;memoria direccionada a destino

		movsb  ; copia el contenido de la mem direccionada origen a la mem direccionada destino

		mov ecx, sizeof cadena_origen_p11
		dec ecx

		ciclo:
			movsb   ;movsb incrementa a esi y a edi en uno de forma autom�tica
		loop ciclo

		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

		mov edx, offset cadena_destino_p11
		call writestring

		exit	
	
	main11 ENDP
	
	END main11

	

