Feature: Task IV
  Background:
    Given url baseUrl

  @taskIV
  Scenario: Task IV
    * configure headers = { 'Content-Type': 'application/json' }
    * path 'user'
    * def data = read('classpath:data/userJson.json')
    * def Helper = Java.type('helper.Helper')
    * def id = Helper.createNumber()
    * data.id = id
    * data.username = username
    * data.firstName = firstName
    * data.lastName = lastName
    * data.email = Helper.createMail()
    * data.password = Helper.createRandomString()
    * data.phone = Helper.createPhoneNumber()
    * data.userStatus = Helper.createNumber()
    * request data
    * method POST
    * status 200
    * match response.message == id + ""