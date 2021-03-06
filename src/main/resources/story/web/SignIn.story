Scenario: Open the Trello.com
    
Given I am on the main application page
Then the page title is equal to 'Trello'

Scenario: Open the Log In page
When I click on element located `By.xpath(/html/body/header/nav/div/a[1])`
Then the page with the URL '${URL2}' is loaded

Scenario: Create 'Log In' scenario using page eLenents steps
When I enter `<email>` in field located `By.xpath(//*[@id="user"])`
When I click on element located `By.xpath(//*[@id="login"])`
When I click on element located `By.xpath(//*[@id="password"])`
When I enter `<password>` in field located `By.xpath(//*[@id="password"])`
When I click on element located `By.xpath(//*[@id="login-submit"])`
Then the page load time should be less than '12000' milliseconds
When I click on element located `By.xpath(//*[@id="header"]/div[2]/button[4]/div/span)`
Then the text 'Siarhei_Derab' exists

Examples:
|email           |password  |
|7304973@mail.ru |Drabushevi496|
