*** Settings ***
Library    SeleniumLibrary
Variables    ../Locators/cartPage.py
Resource    commonResources.robot
Resource    loginpageResources.robot

*** Keywords ***
Pre condition of add to cart
    Visit The Login Page
    Fill Login Page Details    9021657453    Rutika@123
    Add Book To Cart

Add book to cart
    Click Element    ${text_book}
    Click Element    ${text_fiction}
    Click Element    ${text_bookname}
    Click Element    ${text_addtocartbook}
    Click Element    ${text_cartlogo}

Click on Wishlist Button
    Click Element    ${text_movetowishlist}

Click on Remove Button
    Click Element    ${text_remove}

Click on Buy Button
    Click Element    ${text_Buy}

Select USD Currency
    Select From List By value    ${text_currencydropdown}    1

Select INR Currency
    Select From List By value    ${text_currencydropdown}    5

Click on dropdown of currency
    Click Element    ${text_currencydropdown}

Click on "+" button
    Click Element    ${text_add}

click on "-" button
    Click Element    ${text_minus}

Get Currency Text
    ${currency}    Get Text    ${text_selectedcurrency}
    RETURN    ${currency}
#    [Return]    ${currency}

Get Total Price
    ${price}    Get Text    ${text_totalgross}
    Log To Console    price= ${price}
    RETURN    ${price}

Get Updated Total Price
    ${updated_price}    Get Text   ${text_totalgross}
    Log To Console   ${updated_price}

Get Item count in cart
    ${count}    Get Element Attribute    ${text_itemcount}    value
    Log To Console    initial value= ${count}
    RETURN    ${count}
    
Get Cart Item Number Above Cart Logo
    ${cart_item}    Get Text    ${text_cartitemlogo}
    Log To Console    Item count above logo= ${cart_item}
    RETURN    ${cart_item}

Click On Book Image
    Click Element    ${text_bookimage}
    Sleep    10s
   
Get Wislist Item Count
    ${count}    Get Text    ${text_wishlistitemcount}
    Log To Console    initial wishlist item count= ${count}
    RETURN    ${count}

Get Total Item count
    ${count}    Get Text    ${text_totalcartitem}
    Log To Console    total item count= ${count}
    RETURN    ${count}

Click on New Arrival Tab on Home Page
    Click Element    ${text_newarrival}
    Sleep    2s
    Click Element    ${text_feelbook}
    Sleep    2s

Click on Add to cart button
    Click Element    ${text_addtocartbook}
    Sleep    2s

Click On Add to Cart Logo
    Click Element    ${text_cartlogo}

Click on Box Set Tab on Home Page
    Click Element    ${text_boxset}
    Sleep    3s
    Click Element    ${text_setofbook}
    Sleep    2s

Click on Best Seller Tab on Home Page
    Click Element    ${text_bestseller}
    Sleep    3s
    Click Element    ${text_bestsellerbook}
    Sleep    3s

Click on Fictions Books Tab on Home Page
    Click Element    ${text_fictionbook}
    Sleep    3s
    Click Element    ${text_fictionbookname}
    Sleep    3s

Click on Award Winners Tab on Home Page
    Click Element    ${text_awardwinner}
    Sleep    3s
    Click Element    ${text_awarswinnerbook}
    Sleep    3s

Click on Featured Author Tab on Home Page
    Click Element    ${text_featuredauthor}
    Sleep    3s

Click on Author Name
    Click Element    ${text_authorname}
    Sleep    2s
    Click Element    ${text_authorbook}
    Sleep    2s

Click on Today's Deal Tab on Home Page
    Click Element    ${text_todaydeal}
    Sleep    2s
    Click Element    ${text_todaydealbook}
    Sleep    3s

Enter a Book Name in Search Box
    Input Text    ${text_searchbox}    God
    Sleep    2s
    Click Element    ${text_searchbutton}
    Sleep    4s
    Click Element    ${text_searchresultbook}
    Sleep    4s















