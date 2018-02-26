#!/usr/bin/python
#-*-coding: utf8-*-
import re
var = raw_input("CPF: ")
if re.match("^[0-9]{3}(\.[0-9]{3}){2}-[0-9]{2}$" , var):
 print ("CPF inválido")
else:
 print("CPF válido!")

###########################################################################################
#!/usr/bin/python
#-*-coding: utf8-*-
import re
var = raw_input("Digite uma Data ex:00/00/0000 ")
if re.match("^(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[0-2])/(19[0-9]{2}|200[0-9]|201[0-8])$" , var):
        print ("Validou")
else:
        print("Invalido")

###########################################################################################
#!/usr/bin/python
#-*-coding: utf8-*-
import re
var = raw_input("Digite um email: ")
if re.match("^[A-Za-z0-9]*[._-]?[A-Za-z0-9]*\@[A-Za-z]*\.(com|br|com.br)$" , var):
        print ("Validou")
else:
        print("Invalido")

###########################################################################################
#!/usr/bin/python
#-*-coding: utf8-*-
import re
var = raw_input("Digite um IP  ")
if re.match("^([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])(\.([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])){3}$" , var):
        print ("Validou")
else:
        print("Invalido")

###########################################################################################
#!/usr/bin/python
#-*-coding: utf8-*-
import re
var = raw_input("Digite uma mascara de rede  ")
if re.match("^((128|192|224|240|248|252|254|255)(\.0){3}|(255\.+(128|192|224|240|248|252|254|255)(\.0){2})|(255\.255\.+(128|192|224|240|248|252|254|255)\.0)|255\.255\.255\.+(128|192|224|240|248|252|254|255))$" , var):
        print ("Validou")
else:
        print("Invalido")
###########################################################################################
#!/usr/bin/python
#-*-coding: utf8-*-
import re
var = raw_input("Digite seu nome:  ")
if re.match("^[A-Za-z ]*$" , var):
        print ("Validou")
else:
        print("Invalido")
###########################################################################################
#!/usr/bin/python
#-*-coding: utf8-*-
import re
var = raw_input("RG: ")
if re.match("^[0-9]{2}(\.[0-9]{3}){2}-[0-9a-zA-Z]$" , var):
        print ("Validou")
else:
        print("Invalido")

###########################################################################################
#!/usr/bin/python
#-*-coding: utf8-*-
import re

var = raw_input("Telefone: ")
if re.match("^([0-9]{2}\-)?([0-9]{4}|[0-9]{5})[-]?[0-9]{4}$" , var):
        print ("Validou")
else:
        print("Invalido")
