*** Settings ***
Library        SeleniumLibrary

*** Variables ***
${BROWSER}    Chrome
${URL}        https://www.nejavu.com

*** Keywords ***
Close Modal 
    ${modal}    Run Keyword And Return Status    Page Should Contain Element    xpath://div[@class='modal-content rel']
    Run Keyword If    ${modal}    Click Element    xpath://a[@class='close-modal']

Click Menu    
    Click Element    //*[@id="top"]/main/div[1]/div[2]/div[2]/div[2]/nav/div/ul/li[3]/a[@href="https://www.nejavu.com/cartoon"]

Get Book Name 
    @{book_names} =    Get WebElements    xpath://div[@class='detail-title']
    [Return]    @{book_names}

Click Add To Cart    
    Click Element    //*[@id="quick-cart-button"] 
    

Click Cart Button
    Click Element    //*[@id="top"]/main/div[1]/div[1]/div/div/div[2]/div/div[4]/ul/li[2]/div/a[@href="https://www.nejavu.com/cart"]
    

Remove All Books From Cart
    Click Element    //*[@id="cart"]/div[2]/div[2]/div[5]/a[@class='delete-item']


*** Test Cases ***
Test Case1 : Open Browser
    Open Browser    ${URL}    browser=${BROWSER}
Test Case 2 : Close Modal If present
    Close Modal
Test Case 3 : Click Menu 'การ์ตูน'    
    Click Menu
Test Case 4 : Get Book Name
    ${book_names}    Get Book Name  
Test Case 5 : Click Add To Cart
    Click Add To Cart
Test Case 6 : Click Cart Button
    Click Cart Button
Test Case 7 : Remove All Book
    Remove All Books From Cart    

     
   
    
    

