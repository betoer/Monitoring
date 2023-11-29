*** Settings ***
Resource  src.resource

*** Variables ***
${SEGURO_MEDICO}    https://www.bbva.mx/personas/productos/seguros/salud/seguro-de-salud-tu-medico-particular.html

*** Keywords ***
Cotizador Medico Particular
    Log To Console    ${SEGURO_MEDICO}
    Open Chrome Medico    ${SEGURO_MEDICO}
    SikuliLibrary.Click    Btn_Cotizar_Medico.png
    Sleep    3s
    SikuliLibrary.Click    Btn_Cotizar_Medico_2do.png
    Sleep    2s
    SikuliLibrary.Wait Until Screen Contain    Radio_Plan_Individual.png    ${Timeout}
    SikuliLibrary.Click    Radio_Plan_Individual.png
    SikuliLibrary.Wait Until Screen Contain    Radio_Para_Mi.png    ${Timeout}
    SikuliLibrary.Click    Radio_Para_Mi.png
    SikuliLibrary.Wait Until Screen Contain    Input_Nombre_MedicoPart.png    ${Timeout}
    SikuliLibrary.Input Text    Input_Nombre_MedicoPart.png    ${NOMBRE_CLIENTE}
    SikuliLibrary.Input Text    Fecha_Nacimiento_MedPart.png    ${FECHA_NACIMIENTO_CLIENTE}
    SikuliLibrary.Wait Until Screen Contain    First_Btn_Continuar.png    ${Timeout}
    SikuliLibrary.Click    First_Btn_Continuar.png
    Sleep    2s
    SikuliLibrary.Wait Until Screen Contain    First_Btn_Continuar.png    ${Timeout}
    SikuliLibrary.Click    First_Btn_Continuar.png
    Login Cuenta Bbva Medico
    Completar Formulario General Medico
    SikuliLibrary.Wait Until Screen Contain    Numero_Tarjeta_Medico.png    ${Timeout}
    SikuliLibrary.Input Text    Numero_Tarjeta_Medico.png    ${NUM_TARJETA}
   # SikuliLibrary.Press Special Key    ENTER
    Sleep    1s
    SikuliLibrary.Wait Until Screen Contain    Fecha_Expiracion_Medico.png    ${Timeout}
    Sleep    1s
    SikuliLibrary.Input Text    Fecha_Expiracion_Medico.png    ${FECHA_VENCIMIENTO}
    SikuliLibrary.Input Text    CVV_Medico.png    ${CVV}
    Sleep    2s
    SikuliLibrary.Press Special Key    PAGE_DOWN 
    SikuliLibrary.Press Special Key    PAGE_DOWN 
    SikuliLibrary.Wait Until Screen Contain    First_Btn_Continuar.png    ${Timeout}
    SikuliLibrary.Click    First_Btn_Continuar.png
    SikuliLibrary.Wait Until Screen Contain    Check_Terminos_Medico.png    ${Timeout}
    FOR  ${i}  IN RANGE    4
        SikuliLibrary.Click    Check_Terminos_Medico.png
        IF    ${i} == 4   BREAK
        Log    ${i}
    END
    SikuliLibrary.Wait Until Screen Contain    Btn_Autorizar.png    ${Timeout}
    SikuliLibrary.Click    Btn_Autorizar.png
    Sleep  10s
    SikuliLibrary.Close Application    C:\\Program Files\\Google\\Chrome\\Application\\chrome.exe
    