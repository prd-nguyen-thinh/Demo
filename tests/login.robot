*** Settings ***
Resource    ../resource/common.robot
Resource    ../resource/page_objects/login.robot

Test Setup       Open My Browser
Test Teardown    Close My Browser

*** Variables ***
${correctUserName}        student
${correctPassWord}        Password123
${incorrectUserName}      teacher
${incorrectPassWord}      PasswordABC

*** Test Cases ***
TC01 - Login successfully 
    # Bước 1: Thực hiện login (Data lấy từ trang practice)
     Login To Practice Page    student1   Password123
    # Bước 2: Kiểm tra tiêu đề và button log out sau khi login (Logged In Successfully)
   Verify Element Is Displayed   ${LBL_SUCCESS}
   Verify Element Is Displayed   ${BTN_LOGOUT}

TC02 - Invalid userName
    Login To Practice Page    ${incorrectUserName}    ${correctPassWord}
    Verify Element Is Displayed   ${INVALID_USERNAME_MESSSAGE}
    

TC03 - Invalid passWord
    Login To Practice Page    ${correctUserName}    ${incorrectPassWord}
    Verify Element Is Displayed    ${INVALID_PASSWORD_MESSSAGE}

TC04 - Clicking on "Enroll in this course on Udemy" at Java for Testers
    Login To Practice Page    ${correctUserName}    ${correctPassWord}
