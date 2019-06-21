*** Settings ***
Documentation  theses are some SQL Server Database tests
Resource  ../Resources/DB/SQL_Server.robot
Test Setup    SQL_Server.Connect
Test Teardown  SQL_Server.Disconnect

#ways to run the script:
#robot -d results tests
#robot -d results/database_tests tests/sql_server_tests.robot

*** Variables ***

*** Test Cases ***
Insert a Record
   [Tags]  SQLServerDB
   SQL_Server.Save Current Row Count
   SQL_Server.Get Input Data
   SQL_Server.Insert Record
   SQL_Server.Verify New Record Added

Verify Insert Contains Correct Input Data
    [Tags]  SqlServerDB
    SQL_Server.Verify Last Record


Log All Rows
    SQL_Server.Log All Rows