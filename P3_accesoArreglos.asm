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
arreglo_p3 byte 10, 12, 15, 20, 30, 8

.code

	main3 PROC	
		;L�gica del Programa
		;cuando se trabaja con arreglos, los indices se recomienda sean 
		;accedidos utilizando a los registros edi o esi. 

		; para arreglos normales, es indistinta la utilizaci�n de un registro u otro

		
		mov edi, 0 ; indice al que se va a accesar

		mov eax, 0

		mov al, arreglo_p3[edi]
		call writedec                     ; posicion 0
		
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

		mov edi, 1                        ;posicion que se desea acceder

		call crlf
		mov al, arreglo_p3[edi]
		call writedec
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

		

		exit	
	
	main3 ENDP
	
	END main3
