*** Settings ***
Documentation         PUT /partners

Resource              ${EXECDIR}/resources/base.robot

*** Test Cases ***
Should enable a partner

    ${partner}                Factory Enable Partner
    
    ${partner_id}             Create a new partner  ${partner}

    ${response}               Enable Partner    ${partner_id}
    Status Should Be          200

Should disable a partner

    ${partner}                Factory Disable Partner
    
    ${partner_id}             Create a new partner  ${partner}
    Enable Partner            ${partner_id}

    ${response}               Enable Partner    ${partner_id}
    Status Should Be          200

Should return 404 on enable a partner

    ${partner}                Factory 404 Partner
    
    ${partner_id}             Create a new partner  ${partner}

    Remove Partner by name    ${partner}[name]

    ${response}               Enable Partner    ${partner_id}
    Status Should Be          404

Should return 404 on disable a partner

    ${partner}                Factory 404 Partner
    
    ${partner_id}             Create a new partner  ${partner}

    Remove Partner by name    ${partner}[name]

    ${response}               Disable Partner    ${partner_id}
    Status Should Be          404
