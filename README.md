# Testing_homepage Robot Framework project

## Web testing with Robot Framework and SeleniumLibrary

`Robot Framework`_ is a generic open source test automation framework and
SeleniumLibrary_ is one of the many test libraries that can be used with
it. In addition to showing how they can be used together for web testing,
this demo introduces the basic Robot Framework test data syntax, how tests
are executed, and how logs and reports look like.


### Install requirements


```markdow

pip install -r requirements.txt

```
# Python3.7=<
Have Python 3.7.0 or newer version of Python installed on your computer.

## 
### Header 3

- Bulleted
- List

1. Numbered
2. List

### Running tests from command line
-------------
```markdown
robot -d Ailea_fi/results Ailea_fi/tests/Ailea_fi.robot
```
Result and log files should emerge to logs folder

The `test cases`_ are located in the ``login_tests`` directory. They can be
executed using the ``robot`` command::

    robot login_tests

note:: If you are using Robot Framework 2.9 or earlier, you need to
          use the ``pybot`` command instead.


Run ``robot --help`` for more information about the command line usage and see
`Robot Framework User Guide`_ for more details about test execution in general.


Change1

Consult SeleniumLibrary_ documentation about supported browsers.

Read more:
_Robot Framework: http://robotframework.org
_SeleniumLibrary: https://github.com/robotframework/SeleniumLibrary
_Python: http://python.org
_pip: http://pip-installer.org
