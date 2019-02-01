## Demo - demonstrates an application and tests

#### Summary:
This is a tool for use in teaching software development best practices.  
It consists of a simplistic web application.  Some of the techniques exemplified are:
* Unit tests using [Junit](https://junit.org/junit5/) and [Mockito](https://site.mockito.org/), with coverage reports.
* BDD-style tests using gherkin
  * [Cucumber](https://docs.cucumber.io/) tests, with reports
  * [Behave](https://behave.readthedocs.io/en/latest/) tests
* Integration tests that test the database
* Database versioning, with [Flyway](https://flywaydb.org/)
* Security analysis using [DependencyCheck](https://www.owasp.org/index.php/OWASP_Dependency_Check)
* Nulls not allowed by using [Checker Framework](https://checkerframework.org/)
* Uses [Gretty](https://github.com/akhikhl/gretty) which allows us to hot swap Java code at runtime.

#### Dependencies:

* [Java 8](https://www.oracle.com/technetwork/java/javase/overview/java8-2100321.html)  

###### Optional Dependencies:
The following is needed for some of the optional local testing,
like API testing and Selenium testing.
* [Python 3.7](https://www.python.org/downloads/)

---
#### Java notes
It *has* to be Java 8.  Don't use Java 10, it will error out because Mockito doesn't work with Java 10.
    
#### Python notes
To run API tests and Selenium tests, an easy way to handle its 
dependencies is to use *pipenv*.  To get this installed, first download
[get-pip.py](https://bootstrap.pypa.io/get-pip.py), and run

    python get-pip.py
    
Then,

    pip install pipenv
   
And in the demo directory,
    
    pipenv install   
   
Finally, to run (for example) our API tests or Behave tests,
switch into one of those directories (ui_tests or api_tests) and
run:

For ui_tests:

    pipenv run behave
    
or for api_tests:

    pipenv run python -m unittest tests
    
#### To obtain this branch of Demo project:
    git clone --branch with_database https://github.com/7ep/demo.git  
    
#### To build with tests:
On Mac/Linux

    ./gradlew clean build

On Windows

    gradlew clean build

#### To run:
On Mac/Linux

    ./gradlew appRun

On Windows

    gradlew appRun
    
#### The whole shebang - a CI/CD pipeline

Follow the directions to [create a Jenkins box](https://github.com/7ep/demo/blob/with_database/docs/jenkins_box_guide.txt) and [a UI-testing-box](https://github.com/7ep/demo/blob/with_database/docs/ui_test_box.txt), per the instructions
in docs.  *or*, see the appliance notes below.

###### Features of the pipeline:
* Instructions for setting up virtual machines (with VirtualBox).
* A fully functioning demonstration CI/CD pipeline using Jenkins.
* Incorporates static analysis using SonarQube
* Zap attack proxy security analysis
* UI tests running on Chrome
#### Appliance
 I've stored an appliance for running
 the pipeline [here](https://www.dropbox.com/sh/vk1hi9zs0fj9xus/AABBYo766-EGGn2IH0h9awTIa?dl=0).
 Details for using the appliance are in the README there.


---

##Screenshots:
![alt Cucumber report](https://raw.githubusercontent.com/7ep/demo/with_database/screenshots/cucumber_report.png)
![Feature file](https://raw.githubusercontent.com/7ep/demo/with_database/screenshots/feature_file.png)
![Jenkins pipeline](https://raw.githubusercontent.com/7ep/demo/with_database/screenshots/jenkins_pipeline.png)
![Webapp](https://raw.githubusercontent.com/7ep/demo/with_database/screenshots/webapp.png)
![Zap attach proxy](https://raw.githubusercontent.com/7ep/demo/with_database/screenshots/zap.png)
![SonarQube analysis](https://raw.githubusercontent.com/7ep/demo/with_database/screenshots/sonar.png)
