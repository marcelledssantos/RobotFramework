*** Settings ***
Library   String

*** Variables ***
&{PESSOA}   nome=Marcelle  sobrenome=Fernandes

*** Test Cases ***
Imprimindo um e-mail customizado e aleatório
    ${EMAIL_CRIADO}    Criar e-mail aleatório    ${PESSOA.nome}    ${PESSOA.sobrenome}
    Log To Console     ${EMAIL_CRIADO}


*** Keywords ***
Criar e-mail aleatório
    [Arguments]       ${NOME}  ${SOBRENOME}
    ${ALEATORIA}      Generate Random String
    ${EMAIL_FINAL}    Set Variable    ${NOME}${SOBRENOME}${ALEATORIA}@testerobot.com
    [Return]          ${EMAIL_FINAL}