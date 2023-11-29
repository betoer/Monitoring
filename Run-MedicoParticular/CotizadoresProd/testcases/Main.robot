*** Settings ***
Resource   ..//keywords/common/src.resource 
Documentation     Cotizador Vida y Medico SikuliLibrary

*** Test Cases ***
Seguro Medico Particular
  Add Needed Image Path
  Cotizador Medico Particular

Cotizador Vida
   Add Needed Image Path
   Cotizador Seguro de Vida
 
#Aqui puedes ejecutar los scripts Vida Y medico