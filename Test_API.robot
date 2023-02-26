*** Settings ***
Library    JSONLibrary
Library    RequestsLibrary
Library    Collections

*** Variables ***
${API_Base_Endpoint}  https://thetestingworldapi.com/

*** Test Cases ***
TC1
    Create Session    API_Testing    ${API_Base_Endpoint}
    ${Get_Response}=  GET On Session  API_Testing  api/studentsDetails/18001
    Log To Console    ${Get_Response.status_code}
    Log To Console    ${Get_Response.content}
    ${statusCode}=  Convert To String    ${Get_Response.status_code}
    Should Be Equal    ${statusCode}    200   

TC2
    Create Session    API_Testing    ${API_Base_Endpoint}
    ${Get_Response}=  GET On Session  API_Testing  api/studentsDetails/23232
    Log To Console    ${Get_Response.status_code}
    Log To Console    ${Get_Response.content}
    ${statusCode}=  Convert To String    ${Get_Response.status_code}
    Should Be Equal    ${statusCode}    200
    
*** Keywords ***