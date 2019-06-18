*** Settings ***
Library  DatabaseLibrary
Library  Strings
Library  Dialogs

*** Variables ***
${DB_NAME}  root@localhost
${DB_USER_NAME}  MariaDB
${DB_PASSWORD}
${DB_HOST}  127.0.0.1
${DB_PORT}      3306
${PREVIOUS_ROW_COUNT}
${FIRST_NAME}

*** Keywords ***
Connect
#connecting to the database
   get connection  pymssql ${DB_NAME} ${DB_USER_NAME} ${DB_PASSWORD} ${DB_HOST} ${DB_PORT} ${PREVIOUS_ROW_COUNT}

Save Current Row Count
    #REMEMBER DEMO ITEMS DOES NOT  EXIST IN YOUR TABLE MAKE SURE YOU MODIFIE THIS
    ${current_row_count} =  save current row count  Select * FROM DEMOITEM;
    set suite variable  ${PREVIOUS_ROW_COUNT}  ${current_row_count}
    Log  ${current_row_count}

Get Input Data
    #from the dialogs library
    ${name} =  get value from user  Enter a First Name
    #save it at the suite scope so sunbsequent test use it
    set suite variable  ${FIRST_NAME}   ${name}

Inset Record
   #execute SQL script  inputs/SQL/insert.txt
    excute SQL String  INSERT INTO DemoItems (ItemName, FirstName)  VALUES ('New Item: ' + CAST(GetDate() as VARCHAR(50))),

Verify New Record Added
    ${new_row_count} =  save current row count  SELECT * FROM DemoItems;
    LOG  ${new_row_count}

Verify Last Record
    ${queryResults} =  Query  SELECT TOP 1 * ROM DemoItems  ORDER BY ItemId DESC
    should be equal as strings  ${queryResults[0][2]} ${FIRST_NAME}
    LOG   ${queryREsults}[0][2]

Log All Rows
    ${queryResults} =  save current row count  SELECT * FROM  DemoItems ORDER BY ItemID
    log many  ${queryResults}

Disconnect
    Disconnect


