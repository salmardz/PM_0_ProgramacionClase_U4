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
cadena_A_p12 db "Bola Mundo", 0 ;1. dentro de las cadenas se diferencia entre minus y mayus
cadena_B_p12 db "Hola MunDo", 0 ;2. se debe tener cuidado cuando se comparar� cadenas de dif longitud 
								; posibles soluciones a 2: 
								;	*rellenar con espacios o algun caracter las posiciones de la cadena
								;    m�s chica para alcanzar el tama�o de la m�s grande
								;   *opci�n 2, detener la comparaci�n
								;	cuando se haya terminado de revisar la cadena m�s chica


.code

	main12 PROC	
		;L�gica del Programa		
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		
		mov esi, offset cadena_A_p12 ; memoria direccionada a A
		mov edi, offset cadena_B_p12 ;memoria direccionada a B

		;mov ecx, sizeof cadena_A_p12 ; en este caso, ambas tienen la misma longitud, por lo que 
		;					; no importa a cual de las dos le calcules el sizeof

		cmpsb  ; 

		jz esigual
		jnz noesigual

		esigual:
			ImpPantallaLn "Es igual"
			jmp salir

		noesigual:
			ImpPantallaLn "No es igual"  ; modifica el registro de banderas
			
			dec edi
			dec esi
			cmpsb

			;Si no es igual, entonces checo si es mayor o es menor
			jg esmayor
			; si es menor
			ImpPantallaLn "Es menor"
			jmp salir
			

		esmayor:
			ImpPantallaLn "Es mayor"
			

		salir:

		exit	
	
	main12 ENDP
	
	END main12

	

