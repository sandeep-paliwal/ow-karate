#Author: mamishra@adobe.com
#this feature is to list all the rules

@ignore
Feature:  Get List of rules based on the NameSpace

  Background:
* configure ssl = true


  Scenario: As a user I want to get the list of rules available for the given namespace
    * def path = '/api/v1/namespaces/'+nameSpace+'/rules?limit=30&skip=0'
    Given url BaseUrl+path
    And header Authorization = Auth
    And header Content-Type = 'application/json'
    When method get
    Then status 200
    And def json = response
