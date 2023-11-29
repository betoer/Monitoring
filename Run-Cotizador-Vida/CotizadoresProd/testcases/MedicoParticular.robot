*** Settings ***
Resource   ..//keywords/common/src.resource 
Documentation     Cotizador Medico Particular SikuliLibrary

*** Test Cases ***
Seguro Medico Particular
    Add Needed Image Path
    Cotizador Medico Particular
