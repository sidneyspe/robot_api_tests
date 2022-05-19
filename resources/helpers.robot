*** Settings ***
Documentation         Helpers

*** keywords ***
Create a new partner
    [Arguments]               ${partner}
    
    Remove Partner by name    ${partner}[name]
    ${response}               POST Partner      ${partner}
    
    ${partner_id}             Set Variable     ${response.json()}[partner_id] 

    [return]                  ${partner_id}
