![Logo of the project](https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fcdn.softwaretestinghelp.com%2Fwp-content%2Fqa%2Fuploads%2F2020%2F08%2FThe-Karate-Framework.png&f=1&nofb=1)


# Test Automation Case Study II

This is the Case Study II for Kloia QA Bootcamp.


## Project Structure

    ├── pom.xml
    ├── readme.md
    ├── src
    │   ├── main
    │   │   ├── java
    │   │   └── resources
    │   └── test
    │       └── java
    │           ├── callers
    │           │   └── Caller.feature
    │           ├── data
    │           │   └── userJson.json
    │           ├── helper
    │           │   └── Helper.java
    │           ├── karate-config.js
    │           └── tests
    │               ├── CaseStudy.feature
    │               ├── MyRunner.java
    │               └── TestParallel.java
    └── ...




## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. 


After clonning repository you can run the tests from terminal with this command:

```
mvn test
```


You can see the html report from:
```
target/cucumber-html-reports

```