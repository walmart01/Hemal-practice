Feature: phone number field Functionality

   As a User
  I want to enter phone number in number field with autospace

  Background: User is on Amazon checkout page

    Given    I open the google chrome browser and URL,"https//www.amazon.co.uk/" in search field
    And      I click enter button from keybourd
    And      I am on Amazon homepage
    When     I select Smartwatch from all product list
    And      I click on Buy now button
    Then     I am on Amazon cheakout page

  Scenario Outline: Verify that when user enter valid UK Landline number,it should be accept and autospace generated

    Given   I am on Amazon checkout page
    When    I enter "< UK Landline number >" in phone number field
    Then    UK Landline number should be accept
    And     I should able to see autospace generated  at "< position of autospace generate >"

   Examples:
    | UK Landline number| position of autospace generate                                        |
    |02989016745        | Autospace generated after 3rd and 7th digit of UK Landline number     |
    |029890167454321    | Autospace generated after 3rd,7th,and 11th digit of UK Landline number|

  Scenario Outline: Verify that when user enter invalid UK Landline number,it should be not accept

   Given    I am on Amazon cheakout page
    When    I enter "< UK Mobile number >" in number field
    Then    Invalid UK Landline number should be not accept
    And     I should able to see "<error message>"

  Examples:
    |UK Landing number | error message               |
    |020466091         | Phone number is too short   |
    |0298901674598765  | Phone number is too big     |
    |000000000000000   | Enter valid  phone number   |

  Scenario Outline: Verify that when user enter Invalid UK Mobile number,it should be not accept and autospace generated

    Given     I am on Amazon checkout page
    When      I enter "< UK Mobile number >" in phone number field
    Then      Invalid UK Mobile number should be accept
    And       I should able to see "< error message >"

    Examples:
      |UK Mobile number  | error message              |
      |07565679          | Mobile number is too short |
      |0798901674598765  | Mobile number is too big   |
      |000000000000000   |  Enter valid Mobile number |

  Scenario Outline: Verify that when user enter valid UK Mobile,it should be accept and autospace generated

   Given  I am on Amazon checkout page
   When   I enter "< UK Mobile >" in phone number field
   Then   Invalid UK Mobile number should be accept
   And    I should able to see autospace generated at "< Position autospace generate >"

    Examples:
     |UK Mobile number  |Position of autospace generate                                      |           |
     | 07585679835      |Autospace generated after 5th and 8th digit of UK Mobile number     |
     | 079890167454321  |Autospace generated after 5th,8th and 11th digit of UK Mobile number|



