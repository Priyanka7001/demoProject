*** Settings ***
Library    SeleniumLibrary
Resource    ../Resource/Page_Object/cartpageResources.robot
Variables    ../Variable/loginpageVariable.py
Variables    ../Resource/Locators/cartPage.py
Suite Setup    Open My Browser
Suite Teardown    Close All Browsers

*** Variables ***
${CURRENCY_INR}=    INR
${CURRENCY_USD}=    USD

*** Test Cases ***
002 Verify the Functionality of Move to wishlist button
    Pre condition of add to cart
    Click On Wishlist Button
    Page Should Contain    Move to Wishlist    button not clickable

003 Verify the Functionality of Remove button
#    Pre condition of add to cart
    Click On Remove Button
    Page Should Contain    Remove    button not clickable

004 Verify the Functionality of Buy button
    Pre condition of add to cart
    Click On Buy Button

005 Verify the Functionality of Curreny when user will select USD currency
    Pre condition of add to cart
    ${initial_currency}=    Get Currency Text
    ${initial_price}=    Get Total Price
    Select USD Currency
    ${updated_currency}=    Get Currency Text
    ${updated_price}=    Get Total Price
    Should Not Be Equal      ${initial_currency}    ${updated_currency}    currency is same
    Should Not Be Equal As Strings    ${initial_price}    ${updated_price}    Price is same

006 Verify the Functionality of Curreny when user will select INR currency
#    Pre condition of add to cart
    Select USD Currency
    ${initial_currency}=    Get Currency Text
    ${initial_price}=    Get Total Price
    Select INR Currency
    ${updated_currency}=    Get Currency Text
    ${updated_price}=    Get Total Price
    Should Not Be Equal      ${initial_currency}    ${updated_currency}    currency is same
    Should Not Be Equal As Strings    ${initial_price}    ${updated_price}    Price is same


009 Verify the functionality of "+" when user click on "+ " quantity
#    Pre condition of add to cart
    ${initial_count}    Get Item Count In Cart
    Click On "+" Button
    Sleep    2s
    ${up_count}    Get Item Count In Cart
    Should Not Be Equal    ${initial_count}    ${up_count}    Item count is not updating

010 Verify the functionality of "-" when user click on "-" quantity
#    Pre Condition Of Add To Cart
    Click On "+" Button
    Sleep    10s
    ${initial_count}    Get Item Count In Cart
    Click On "-" Button
    Sleep    5s
    ${up_count}    Get Item Count In Cart
    Should Not Be Equal    ${initial_count}    ${up_count}    Item count is not updating

011 if else
    Pre Condition Of Add To Cart
    ${initial_price}=    Get Total Price
    ${currency}    Get Text    xpath://option[@selected='selected']
    Log To Console    ${currency}
    IF    '${CURRENCY_INR}'=='${currency}'
        Select USD Currency
        Sleep    3s
    ELSE
        Select INR Currency
        Sleep    3s
    END
    ${updated_price}=    Get Total Price



012 Verify the functionality of cart button if number of Product should be display
    Pre Condition Of Add To Cart
    ${item_number}    Get Cart Item Number Above Cart Logo

013 Verify the Functionality of Product/book when user click on Product/book
    Pre Condition Of Add To Cart
    Click On Book Image
    Page Should Contain    The Hidden Hindu    Book description page not open

014 Verify the Product will move to wishlist if user is login
    Pre Condition Of Add To Cart
    ${preveious_count}    Get Total Item Count    
    Sleep    1s
    Click On Wishlist Button
    Sleep    3s
    ${updated_count}    Get Total Item Count
    Should Not Be Equal    ${preveious_count}    ${updated_count}    Item not move to wishlist

015 Verify user can buy Product if user is login
    Pre Condition Of Add To Cart
    Click On Buy Button
    Sleep    3s
    Page Should Contain    Checkout Your Cart    Page not nevigate to checkout

016 Verify Book is remove afte clicking on remove button
    Pre Condition Of Add To Cart
    ${preveious_count}    Get Total Item Count    
    Sleep    1s
    Click On Remove Button
    Sleep    2s
    ${updated_count}    Get Total Item Count
    Should Not Be Equal    ${preveious_count}    ${updated_count}    Item not remove

018 Verify adding the book to the cart from New Arrival in Home Page
    Click On New Arrival Tab On Home Page
    Click On Add To Cart Button
    Page Should Contain    Product successsfully added to the cart    product not added
    Click On Add To Cart Logo
    Sleep    5sec
    Page Should Contain    Feel-Good Productivity    Book not added to cart

019 Verify adding the book to the cart from Book set in Home Page
    ${current_count}    Get Cart Item Number Above Cart Logo
    Click On Box Set Tab On Home Page
    Click On Add To Cart Button
    Page Should Contain    Product successsfully added to the cart    product not added
    Click On Add To Cart Logo
    ${new_count}    Get Cart Item Number Above Cart Logo
    Sleep    5sec
    Page Should Contain    Tintin Paperback Boxed Set 23 titles    Book not added to cart
    Should Not Be Equal    ${current_count}    ${new_count}    Bookset not added

020 Verify adding the book to the cart from Best seller in Home Page
    ${current_count}    Get Cart Item Number Above Cart Logo
    Click On Best Seller Tab On Home Page
    Click On Add To Cart Button
    Page Should Contain    Product successsfully added to the cart    product not added
    Click On Add To Cart Logo
    ${new_count}    Get Cart Item Number Above Cart Logo
    Sleep    5sec
    Page Should Contain    Atomic Habits    Book not added to cart
    Should Not Be Equal    ${current_count}    ${new_count}    book not added

021 Verify adding the book to the cart from Fiction books in Home Page
    ${current_count}    Get Cart Item Number Above Cart Logo
    Click On Fictions Books Tab On Home Page
    Click On Add To Cart Button
    Page Should Contain    Product successsfully added to the cart    product not added
    Click On Add To Cart Logo
    ${new_count}    Get Cart Item Number Above Cart Logo
    Sleep    5sec
    Page Should Contain    Power Of Your Subconscious Mind    Book not added to cart

022 Verify adding the book to the cart from Award winner in Home Page
    ${current_count}    Get Cart Item Number Above Cart Logo
    Click On Award Winners Tab On Home Page
    Click On Add To Cart Button
    Page Should Contain    Product successsfully added to the cart    product not added
    Click On Add To Cart Logo
    ${new_count}    Get Cart Item Number Above Cart Logo
    Sleep    5sec
    Page Should Contain    Red, White & Royal Blue    Book not added to cart

023 Verify adding the book to the cart from Today's deal in Home Page
    ${current_count}    Get Cart Item Number Above Cart Logo
    Click On Today's Deal Tab On Home Page
    Click On Add To Cart Button
    Page Should Contain    Product successsfully added to the cart    product not added
    Click On Add To Cart Logo
    ${new_count}    Get Cart Item Number Above Cart Logo
    Sleep    5sec
    Page Should Contain    Red Queen    Book not added to cart

024 Verify adding the book to the cart from Feature Authors in Home Page
    ${current_count}    Get Cart Item Number Above Cart Logo
    Click On Featured Author Tab On Home Page
    Click On Author Name
    Click On Add To Cart Button
    Page Should Contain    Product successsfully added to the cart    product not added
    Click On Add To Cart Logo
    ${new_count}    Get Cart Item Number Above Cart Logo
    Sleep    5sec
    Page Should Contain    God of Small Things    Book not added to cart

026 Verify adding the book to the cart from Seach in Home Page
    ${current_count}    Get Cart Item Number Above Cart Logo
    Enter A Book Name In Search Box
    Click On Add To Cart Button
    Page Should Contain    Product successsfully added to the cart    product not added
    Click On Add To Cart Logo
    ${new_count}    Get Cart Item Number Above Cart Logo
    Sleep    5sec
    Page Should Contain    God of Small Things    Book not added to cart

027 Verify adding the book to the cart from Seach in Home Page
    ${current_count}    Get Cart Item Number Above Cart Logo
    Enter A Book Name In Search Box
    Click On Add To Cart Button
    Sleep    2s
    Page Should Contain    Product successsfully added to the cart    product not added
    ${new_count}    Get Cart Item Number Above Cart Logo
















