*** Settings ***
Documentation         DELETE /partners

Resource              ${EXECDIR}/resources/base.robot

*** Test Cases ***
Should remove a partner

  ${partner}          Factory Remove Partner
  ${partner_id}       Create a new partner  ${partner}

  DELETE Partner      ${partner_id}
  Status Should be    204

Should return 404 on remove a partner

  ${partner}          Factory 404 Partner
  ${partner_id}       Create a new partner  ${partner}

  Remove Partner by name  ${partner}[name]

  DELETE Partner      ${partner_id}
  Status Should be    404
