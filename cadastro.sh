#!/bin/bash
clear

NOME(){
	read -p "Digite seu nome: " nome
	echo $nome | grep '[A-Za-z]'
	if [ $? == 0 ]; then
        	clear
		echo "O nome é válido!"
		sleep 1
		clear
		EMAIL
	else
		echo "O nome é inválido!"
		echo "Digite novamente"
		sleep 1
		clear
		NOME
	fi
}

EMAIL(){
	sleep 1
	read -p "Digite o seu email: " email
	echo $email | grep -E '[.+@.+\..+]'
	if [ $? == 0 ]; then
		clear
		echo "O E-Mail é válido!"
		sleep 1
		clear
		CELULAR
	else
		echo "O E-MAIL é inválido!"
		echo "Digite novamente"
		sleep 1
		clear
		EMAIL
	fi
}

CELULAR(){
	echo "O formato de numeração tem como exemplo 91234-5678"
	sleep 1
	clear
	read -p "Digite seu telefone: " celular
	echo $telefone | grep -E '^[(][0-9]{2}[)][ ][0-9]{5}+-[0-9]{4}$'
	if [ $? == 0 ]; then
		clear
		echo "O Telefone é VALIDO!"
		sleep 1
		clear
		RG
	else
		echo "[ERROR] Digite novamente o Telefone de forma VALIDA!"
		sleep 1
		clear
		CELULAR
	fi
}

RG(){
	sleep 1
	read -p "Digite seu RG (Registro Geral): " rg
	echo $rg | grep -E '^[0-9]{2}\.[0-9]{3}\.[0-9]{3}-[0-9]$'
	if [ $? == 0 ]; then
		clear
		echo "O RG é VALIDO!"
		sleep 1
		clear
		CPF
	else
		echo "Digite novamente!"
		sleep 1
		clear
		RG
	fi
}

CPF(){
	sleep 1
	read -p "Digite seu CPF: " cpf
	echo $cpf | grep -E '^[0-9]{3}\.[0-9]{3}\.[0-9]{3}-[0-9]{2}$'
	if [ $? == 0 ]; then
		clear
		echo "O CPF é VALIDO!"
		sleep 1
		clear
		DATA
	else
		echo "Digite novamente!"
		sleep 1
		clear
		CPF
	fi
}

DATA(){
	sleep 1
	read -p "Digite a sua data de nascimento: " data
	echo $data | grep -E '^[0-9]{2}\/[0-9]{2}\/[0-9]{4}$'
	if [ $? == 0 ]; then
		clear
		echo "A data de nascimento é VALIDA!
		sleep 1
		clear
		IP
	else
		echo "Digite novamente!"
		sleep 1
		clear
		DATA
	fi
}

IP(){
	echo "Formato exigido: 192/172.xxx.xxx.xxx"
	sleep 1
	read -p "Digite seu endereço IP: " ip
	echo $ip | grep -E '^[192+172]{3}\.[0-9]{3}\.[0-9]{3}\.[0-9]{3}$'
		if [ $? == 0 ]; then
			clear
			echo "[INFO] Endereço de IP é VALIDO!"
			sleep 1
			clear
			MASK
		else
			echo "[ERROR] Digite novamente o endereço IP de forma VALIDA!"
			sleep 1
			clear
			IP
		fi
}

MASK(){
	echo "Para ver as máscaras válidas, consulte a lista presente no seu diretorio padrão!"
	sleep 1
	read -p "Digite sua máscara de rede (Netmask): " mask
	if [ $? == 0 ]; then
		clear
		echo "[INFO] A Máscara de rede é VÁLIDA!"
		sleep 1
		clear
		echo "Cadastro concluído!"
	else
		echo "[ERROR] Digite novamente a máscara de rede de forma VALIDA!"
		sleep 1
		clear
		MASK
	fi
}
NOME
