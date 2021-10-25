*** Settings ***
Documentation    Change store name on Web Evermos
...              How to run: robot Tests/LoginAndChangeStoreName.robot
Library          SeleniumLibrary

*** Variables ***
${BROWSER}=     Chrome
${URL}=         https://evermos.com/login
${STORE}=       https://evermos.com/my-store
${TEXT}=        css:input.inputText__input[type="text"]
${TELP_USER}=   6281223334444
${PASS}=        css:input.inputText__input[type="password"]
${PASS_STORE}=   css:input.inputText__input[placeholder="Masukan Kata Sandi"]
${PASS_USER}=   password
${MASUK}=       css:button
${TOKO_BARU}=      UPDATE


*** Test Cases ***
Login
    Open Browser   ${URL}   ${BROWSER}
    Set Window Size    ${1920}    ${1200}
    Input Text  ${TEXT}     ${TELP_USER}
    Input Text  ${PASS}     ${PASS_USER}
    Sleep   5s
    Click Element   //button[contains(text(),'Masuk')]
    Sleep   5s

Change store name
    Go To   ${STORE}
    Sleep   5s
    Click Element   //*[contains(text(),'Ganti Nama Toko')]
    Sleep   5s
    Input Text  ${TEXT}     ${TOKO_BARU}
    Input Text  ${PASS_STORE}     ${PASS_USER}
    Sleep   5s
    Click Element   //button[contains(text(),'Simpan')]
    Sleep   5s
    Click Element   //*[contains(text(),'OK')]


