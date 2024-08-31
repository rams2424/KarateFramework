Feature: Get the details of user 2
Background: set url
* url 'https://reqres.in/api/'

Scenario: Get the details of user 2
Given path 'users/2'
When method GET
Then status 200

Scenario: Create a person
Given path 'users'
And request {"name": "morpheus","job": "leader"}
When method post
Then status 201
Then match response == '#object'
Then match response.name =='morpheus'

Scenario: Get the list of users for page 2
Given path 'users' 
And param page = "2"
When method GET
Then status 200
Then match response.page == 2