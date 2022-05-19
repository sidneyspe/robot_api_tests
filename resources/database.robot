*** Settings ***
Documentation         Database Helpers Connections

Library               RobotMongoDBLibrary.Delete
Library               RobotMongoDBLibrary.Find

*** Variables ***
&{MONGO_URI}          _URI_HERE_


*** Keywords ***
Remove Partner by name
    [Arguments]       ${partner_name}
    
    ${filter}         Create Dictionary
    ...               name=${partner_name}

    DeleteOne         ${MONGO_URI}    ${filter}

Find Partner by name
    [Arguments]       ${partner_name}
    
    ${filter}         Create Dictionary
    ...               name=${partner_name}

    ${results}        Find         ${MONGO_URI}    ${filter}
    
    [return]          ${results}[0]    
