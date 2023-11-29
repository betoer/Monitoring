*** Settings ***
Resource  src.resource
*** Keywords ***
Add Needed Image Path
    Add Image Path    ${IMAGE_DIR}
#OpenSUT
 #   Open Browser   ${URL_VIDA}    ${BROWSER}  options=add_argument("--ignore-certificate-errors")
  #  SeleniumLibrary.Maximize Browser Window
   # Log To Console    Navegador Abrierto

TEST_PROCESS
     SikuliLibrary.Open Application    C:\\Program Files\\Google\\Chrome\\Application\\chrome.exe
     #Process.Run Process    C:\\Program Files\\Google\\Chrome\\Application\\chrome.exe
     Sleep    5s
     Log To Console    Termina la espera
     #Process.Terminate Process    chrome.exe
     SikuliLibrary.Close Application    C:\\Program Files\\Google\\Chrome\\Application\\chrome.exe
Open Chrome
    [Arguments]    ${URL_WEB}
    SikuliLibrary.Open Application    C:\\Program Files\\Google\\Chrome\\Application\\chrome.exe
    Log To Console   \n Navegador Abierto
     Sleep    2s
    SikuliLibrary.Click    Acceso_vida.png
     Sleep    2s
Open Chrome Medico
    [Arguments]    ${URL_WEB_M}
    SikuliLibrary.Open Application    C:\\Program Files\\Google\\Chrome\\Application\\chrome.exe
    Log To Console   \n Navegador Abierto
    Sleep    2s
    SikuliLibrary.Click    Acceso_medico_particular.png
    Sleep    3s
    #SikuliLibrary.Input Text    url.png    ${URL_WEB_M}
    #SikuliLibrary.Press Special Key    ENTER
    #Sleep    3s
Login Cuenta Bbva Medico
    SikuliLibrary.Click    Iniciar_Sesion.png
    SikuliLibrary.Wait Until Screen Contain    Mail_Medico.png    ${Timeout}
    SikuliLibrary.Input Text    Mail_Medico.png    ${USUARIO_MAIL}
    SikuliLibrary.Input Text    Password_Medico.png    ${USUARIO_PASSWORD}
    SikuliLibrary.Click    Login_Btn.png
Login Cuenta Bbva Vida
    SikuliLibrary.Click    Iniciar_Sesion_Vida.png
    SikuliLibrary.Wait Until Screen Contain    Mail_Vida.png    ${Timeout}
    SikuliLibrary.Input Text    Mail_Vida.png    ${USUARIO_MAIL}
    SikuliLibrary.Input Text    Password_Vida.png    ${USUARIO_PASSWORD}
    SikuliLibrary.Click    Login_Btn.png
Completar Formulario General Vida
     SikuliLibrary.Wait Until Screen Contain    Apellido_Paterno.png    ${Timeout}
    SikuliLibrary.Input Text    Apellido_Paterno.png    ${APELLIDO_PATERNO_CLIENTE}
    SikuliLibrary.Input Text    Apellido_Materno.png    ${APELLIDO_MATERNO_CLIENTE}
    SikuliLibrary.Click    Radio_Hombre.png
    SikuliLibrary.Click    Radio_Nacionalidad.png
    SikuliLibrary.Click    Drop_Estado.png
    SikuliLibrary.Input Text    ${EMPTY}    oaxa
    Sleep    2s
    SikuliLibrary.Press Special Key    ENTER
    Sleep    5s
    SikuliLibrary.Wait Until Screen Contain    Telefono_Celular.png    ${Timeout}
    SikuliLibrary.Input Text    Telefono_Celular.png    ${TELEFONO_CELULAR}
Completar Formulario General Medico
    SikuliLibrary.Wait Until Screen Contain    Apellido_Paterno.png    ${Timeout}
    Sleep    5s
    SikuliLibrary.Input Text    Apellido_Paterno.png    ${APELLIDO_PATERNO_CLIENTE}
    SikuliLibrary.Input Text    Apellido_Materno.png    ${APELLIDO_MATERNO_CLIENTE}
    SikuliLibrary.Click    Radio_Hombre_Medico.png
    SikuliLibrary.Click    Radio_Nacionalidad_Medico.png
    SikuliLibrary.Click    Lugar_Nacimiento_Medico.png
    SikuliLibrary.Input Text    ${EMPTY}    oaxa
    Sleep    2s
    SikuliLibrary.Press Special Key    ENTER
    Sleep    5s
    SikuliLibrary.Wait Until Screen Contain    Telefono_Celular_Medico.png    ${Timeout}
    SikuliLibrary.Input Text    Telefono_Celular_Medico.png    ${TELEFONO_CELULAR}
    SikuliLibrary.Input Text    Ocupacion.png    Analista/ingeniero de sistemas  
    SikuliLibrary.Press Special Key    TAB
    SikuliLibrary.Press Special Key    ENTER
    SikuliLibrary.Press Special Key    PAGE_DOWN 
    SikuliLibrary.Input Text    Calle_Medico.png    ${CALLE}
    Sleep    2s
    SikuliLibrary.Input Text    Num_Exterior_Medico.png    ${NUMERO_EXTERIOR}
    SikuliLibrary.Input Text    CP_Medico.png    ${CODIGO_POSTAL}
   # SikuliLibrary.Click    Colonia_MedicoPart.png
    #Sleep    5s
    SikuliLibrary.Click    Colonia_MedicoPart.png
    SikuliLibrary.Click    Col_Juan_Morales_Medico.png
    Sleep     1s
    SikuliLibrary.Click    First_Btn_Continuar.png
Cotizador Seguro de Vida
    Open Chrome    ${URL_VIDA}
    SikuliLibrary.Click    BtnCotizarVida.png
    Sleep    3s
    SikuliLibrary.Wait Until Screen Contain     FirstInputName.png    ${Timeout}
    SikuliLibrary.Input Text    FirstInputName.png    ${NOMBRE_CLIENTE}
    SikuliLibrary.Input Text    InputBirth.png    ${FECHA_NACIMIENTO_CLIENTE}
    SikuliLibrary.Click    DropIngresos.png
    SikuliLibrary.Press Special Key    ENTER
    SikuliLibrary.Click    First_Btn_Continuar.png
    Sleep    3s
    SikuliLibrary.Click    Check_Enfermedades.png
    SikuliLibrary.Click    First_Btn_Continuar.png
    Sleep    3s
    SikuliLibrary.Click    First_Btn_Continuar.png
    Sleep    3s
    SikuliLibrary.Press Special Key    PAGE_DOWN 
    SikuliLibrary.Press Special Key    PAGE_DOWN 
    SikuliLibrary.Click    First_Btn_Continuar.png
    SikuliLibrary.Wait Until Screen Contain    Radio_Mantener_Plan.png    ${Timeout}
    SikuliLibrary.Click    Radio_Mantener_Plan.png
    Sleep    2s
    SikuliLibrary.Click    First_Btn_Continuar.png
    Login Cuenta Bbva Vida
    #SikuliLibrary.Wait Until Screen Contain    Check_Aceptar_Terminos.png    ${Timeout}
    #SikuliLibrary.Click    Check_Aceptar_Terminos.png
    #SikuliLibrary.Click    Btn_Aceptar_Terminos.png
    Completar Formulario General Vida
    SikuliLibrary.Press Special Key    PAGE_DOWN 
    #SikuliLibrary.Click    ${EMPTY}
    SikuliLibrary.Input Text    Calle.png    ${CALLE}
    Sleep    2s
    SikuliLibrary.Input Text    Num_Exterior.png    ${NUMERO_EXTERIOR}
    SikuliLibrary.Input Text    CP.png    ${CODIGO_POSTAL}
    SikuliLibrary.Click    Colonia.png
    Sleep    5s
    SikuliLibrary.Click    Colonia.png
    SikuliLibrary.Click    Colonia_Juan_Morales.png
    SikuliLibrary.Click    First_Btn_Continuar.png
    #SikuliLibrary.Click    ${EMPTY}
    SikuliLibrary.Wait Until Screen Contain    Agregar_Beneficiario.png    ${Timeout}
    SikuliLibrary.Click    Agregar_Beneficiario.png
    SikuliLibrary.Wait Until Screen Contain    Nombre_Beneficiario.png    ${Timeout}
    SikuliLibrary.Input Text    Nombre_Beneficiario.png    ${NOMBRE_BENEFICIACIRIO}
    SikuliLibrary.Input Text    Apellido_Paterno_Benefi.png    ${APELLIDO_PATERNO_BENEFICIARIO}
    SikuliLibrary.Input Text    Apellido_Materno_Benefi.png    ${APELLIDO_MATERNO_BENEFICIARIO}
    SikuliLibrary.Input Text    Fecha_Nacimiento_Benefi.png    ${FECHA_NACIMIENTO_BENEFICIARIO}
    SikuliLibrary.Click    Parentesco.png
    SikuliLibrary.Click    Opcion_Conyuge.png
    SikuliLibrary.Input Text    Porcentaje_Benefi.png    ${PORCENTAJE}
    SikuliLibrary.Click    Check_Mismo_Domicilio.png
    Sleep    2s
    SikuliLibrary.Press Special Key    PAGE_DOWN 
    SikuliLibrary.Wait Until Screen Contain    Btn_Guardar_Benefi.png    ${Timeout}
    SikuliLibrary.Click    Btn_Guardar_Benefi.png
    SikuliLibrary.Wait Until Screen Contain    Pagos_Fraccionados.png    ${Timeout}
    SikuliLibrary.Click    Pagos_Fraccionados
    SikuliLibrary.Click    12_Meses_Pago.png
    SikuliLibrary.Wait Until Screen Contain    First_Btn_Continuar.png    ${Timeout}
    SikuliLibrary.Click    First_Btn_Continuar.png
    SikuliLibrary.Wait Until Screen Contain    Numero_Tarjeta.png    ${Timeout}
    SikuliLibrary.Input Text    Numero_Tarjeta.png    ${NUM_TARJETA}
   # SikuliLibrary.Press Special Key    ENTER
    Sleep    1s
    SikuliLibrary.Wait Until Screen Contain    Fecha_Vencimiento_Tarjeta.png    ${Timeout}
    Sleep    1s
    #SikuliLibrary.Click    Fecha_Vencimiento_Tarjeta.png
    SikuliLibrary.Input Text    Fecha_Vencimiento_Tarjeta.png    ${FECHA_VENCIMIENTO}
    SikuliLibrary.Input Text    CVV.png    ${CVV}
    Sleep    2s
    SikuliLibrary.Press Special Key    PAGE_DOWN 
    SikuliLibrary.Press Special Key    PAGE_DOWN 
    SikuliLibrary.Wait Until Screen Contain    Checks_Terminos.png    ${Timeout}
    FOR  ${i}  IN RANGE    4
        SikuliLibrary.Click    Checks_Terminos.png
        IF    ${i} == 4   BREAK
        Log    ${i}
    END
    SikuliLibrary.Wait Until Screen Contain    First_Btn_Continuar.png    ${Timeout}
    SikuliLibrary.Click    First_Btn_Continuar.png
    Sleep     10s
    SikuliLibrary.Close Application    C:\\Program Files\\Google\\Chrome\\Application\\chrome.exe

    

    
    
    

