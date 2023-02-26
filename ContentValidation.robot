*** Settings ***
Library    JSONLibrary
Library    RequestsLibrary
Library    Collections

*** Variables ***
${API_Base_Endpoint}  https://thetestingworldapi.com/

*** Test Cases ***
TC1
    Create Session    API_Testing    ${API_Base_Endpoint}
    ${Get_Response}=  GET On Session  API_Testing  api/studentsDetails
    ${json_response}=  Set Variable    ${Get_Response.json()}
    @{first_name_data}=  get Value From Json    ${json_response}    data.first_name
    Log To Console    ${first_name_data}