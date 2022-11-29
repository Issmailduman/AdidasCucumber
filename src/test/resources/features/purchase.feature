Feature: Adidas Order Placement Functionalities
  Agile Story: As a user, I should be able to place order from Website so that I can shop online

  Background:
    Given User is on the page

  @smoke
  Scenario: Placing a successful order
    When User adds "Sony vaio i5" from "Laptops"
    And User adds "Dell i7 8gb" from "Laptops"
    And User navigates to cart and removes "Dell i7 8gb"
    And user click on place order
    And user fills the form for order and clicks on purchase button
    Then Order id and order amount should be as expected

  @smoke
  Scenario: Verify all the products exist in the products pages
    Then Under "Phones" category User should be able to see the list of following products
      | Samsung galaxy s6 |
      | Nokia lumia 1520  |
      | Nexus 6           |
      | Samsung galaxy s7 |
      | Iphone 6 32gb     |
      | Sony xperia z5    |
      | HTC One M9        |

    Then Under "Laptops" category User should be able to see the list of following products
      | Sony vaio i5        |
      | Sony vaio i7        |
      | MacBook air         |
      | Dell i7 8gb         |
      | 2017 Dell 15.6 Inch |
      | MacBook Pro         |
    Then Under "Monitors" category User should be able to see the list of following products
      | Apple monitor 2 |
      | ASUS Full HD    |

  Scenario Outline: User checks different laptops can be added to chart<differentLaptops>
    Then User adds "<differentLaptops>" from "Laptops"
    Examples:
      | differentLaptops    |
      | Sony vaio i5        |
      | Sony vaio i7        |
      | MacBook air         |
      | Dell i7 8gb         |
      | 2017 Dell 15.6 Inch |
      | MacBook Pro         |


