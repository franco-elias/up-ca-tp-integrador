#!/bin/bash
function menu(){
	clear 
	echo "1) fibonacci"
	echo "2) numero invertido"
	echo "3) pedir caracter, es palindromo?" 
	echo "4) pide path de archivo y muestra cantidad de lineas"
	echo "5) 5 numeros enteros y ordenarlos"
	echo "6) pide path y muestra tipo de archivos"
	echo "7) Salir"
	echo "---------------------------------------------------------"
}

function salir_saludando(){
	NOMBRE=$1
	echo "chau $NOMBRE"
	sleep 2
}

#------------------------------------------#

OPCION=0
menu
while true; do
	read -p "ingrese una opcion: " OPCION
	case $OPCION in
	  1)    num1=0
	     	num2=1
             	read -p "ingrese numero Z mayo q 0: " NUMERO
		suma=0
		for i in `seq 1 $NUMERO`
		do
	  	  	echo "$num1"
	  	  	suma=$((num1+num2))
	  	  	num1=$num2
    		  	num2=$suma
		done;;
	  
	   2)	read -p "ingrese numero entero: " ENTERO
		echo $ENTERO | rev;;
           3)   echo "ingrse frase o palabras, ej frase(allivaramonynomaravilla):  "
		read a
		b=`echo $a | rev`
		if [[ $a != $b ]];
		then
			echo "no  palindromo"
		else
			echo "palindromo"
		fi;;
	   4)	read -p "ingrese paht del archivo de texto" archivo
		echo  $(cat $archivo | wc -l );;
 	   5)	read -p "ingrese numero entero: " a
		read -p "ingrese numero entero: " b
		read -p "ingrese numero entero: " c
		read -p "ingrese numero entero: " d
		read -p "ingrese numero entero: " e
		echo -e "$a\n$b\n$c\n$d\n$e" | sort;; 
	   6)	echo  "ingrese nombre dir: "
		read dir 
		if [ -d /$dir/ ]
		then	
			find /$dir/ -type f | sed -n 's/..*\.//p' | sort | uniq -c
		fi;;
           7)   salir_saludando juan
	    	break;;
	   *)	echo "opcion incorrecta";;
	esac
done	
exit=0

