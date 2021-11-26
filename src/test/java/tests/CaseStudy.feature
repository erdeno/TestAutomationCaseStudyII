Feature: CaseStudy
  Background:
    Given url baseUrl

  @done
  Scenario Outline: Task I
    * path 'pet/findByStatus'
    * param status = status
    * method GET
    * status 200
    * match header Content-Type == 'application/json'
    * match each response contains { status: #(status) }
    * match each response contains { 'id': '#present' }
    * match each response contains { 'id': '#notnull' }

    Examples:
      |  status    |
      |  pending   |
      |  available |

  @done @taskIII
  Scenario: Task III
    * configure headers = { 'Content-Type': 'application/json' }
    * path 'user'
    * def data = read('classpath:data/userJson.json')
    * def Helper = Java.type('helper.Helper')
    * def id = Helper.createNumber()
    * data.username = (typeof username == 'undefined') ? Helper.createRandomString() : username
    * data.firstName = (typeof firstName == 'undefined') ? Helper.createRandomString() : firstName
    * data.lastName = (typeof lastName == 'undefined') ? Helper.createRandomString() : lastName
    * data.id = id
    * data.email = Helper.createMail()
    * data.password = Helper.createRandomString()
    * data.phone = Helper.createPhoneNumber()
    * data.userStatus = Helper.createNumber()
    * request data
    * method POST
    * status 200
    * match response.message == id + ""

  @done
  Scenario: Call TaskIII with parameters
    * def username = 'jdoe'
    * def firstName = 'John'
    * def lastName = 'Doe'
    * def result = call read('classpath:tests/CaseStudy.feature@taskIII') { username: #(username), firstName: #(firstName), lastName: #(lastName) }
    * match result.responseStatus == 200
    * match result.username == username
    * match result.data.firstName == firstName
    * match result.data.lastName == lastName
