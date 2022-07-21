*** Settings ***
Library    Selenium2Library

*** Variables ***
${To_Do_List}                       https://abhigyank.github.io/To-Do-List/
${new-task}                         //input[@id="new-task"]
${AddItem_button}                   //button[@class="mdl-button mdl-js-button mdl-button--fab mdl-button--mini-fab mdl-button--colored"]
${To-Do-Tasks_tab}                  //a[@href="#todo"]
${AddItem_tab}                      //a[@href="#add-item"]
${Completed_tab}                    //a[@href="#completed"]
${Delete-eatLunch_button}           //button[@id="2"]
${PlayGame_checkbox}                //label[@for="2"]
${TestCase_checkbox}                //label[@for="1"]
${Delete-TestCase-Completed_tab}    //button[@id="1"]

*** Keywords ***


*** Test Cases ***
1. Open To-Do-List Website
    #execute_path อาจจะต้องตั้งใหม่ตาม location ที่ clone repository ลงมาจาก github หรือ zip file
    Create Webdriver           Chrome           executable_path=C:/Users/home/Documents/GitHub/BluePi_RobotTest/chromedriver.exe
    Maximize Browser Window
    Go To                      ${To_Do_List}

2. Check all tab can be clicked
    #เริ่มกดจาก To-Do-Tasks_tab ก่อน เพราะ AddItem_tab มันเป็น default tab ตั้งแต่เปิด website
    Sleep            2s
    Click Element    ${To-Do-Tasks_tab}
    Sleep            2s
    Click Element    ${Completed_tab}
    Sleep            2s
    Click Element    ${AddItem_tab}

3. Add To-Do-List Item
    @{ITEM_LIST}    Create List          เขียน Test Cases    ทานข้าวกลางวัน    ประชุมบ่าย      เล่นเกม
    FOR             ${INDEX}             ${ELEMENT}          IN ENUMERATE      @{ITEM_LIST}
    Sleep           2s
    Input Text      ${new-task}          ${ELEMENT}
    Sleep           2s
    Click Button    ${AddItem_button}
    END

4. Check To-Do-List Item in To-Do Tasks
    Sleep            2s
    Click Element    ${To-Do-Tasks_tab}    

5. Delete Item in To-Do-List Tasks (ทานข้าวกลางวัน)
    Sleep           2s
    Click Button    ${Delete-eatLunch_button}

6. Click check box in To-Do-List Tasks (เขียน Test Cases & เล่นเกม)
    Sleep            2s
    Click Element    ${TestCase_checkbox}
    Sleep            2s
    Click Element    ${PlayGame_checkbox}

7. Check To-Do Tasks in Completed
    Sleep            2s
    Click Element    ${Completed_tab} 

8. Delete To-Do Tasks in Completed (เขียน Test Cases)
    Sleep           2s
    Click Button    ${Delete-TestCase-Completed_tab}

9. Close To-Do-List Website