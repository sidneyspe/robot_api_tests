*** Settings ***
Documentation         POST /partners

Resource              ${EXECDIR}/resources/base.robot

*** Test Cases ***
Should create a new partner
  
    ${partner}        Factory New Partner

    Remove Partner by name  ${partner}[name]

    ${response}       POST Partner  ${partner}

    Status Should Be  201
    ${result}         Find Partner by name  ${partner}[name]
    Should be Equal   ${response.json()}[partner_id]        ${result}[_id]

Should return duplicate company name

    ${partner}        Factory Dup Name
    
    ${partner_id}     Create a new partner  ${partner}
    
    ${response}       POST Partner  ${partner}  
    Status Should Be  409

    Should be Equal   ${response.json()}[message]       Duplicate company name  
