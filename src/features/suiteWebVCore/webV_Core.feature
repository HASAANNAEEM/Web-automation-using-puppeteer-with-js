@webVCore @e2e
Feature: To check the WebV Core Functionality

  @TST-1252 @haider @refactored @e2eSprint @sprint2
  Scenario: Previously viewed announcements and Suspension
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Announcements" icon
    Then user lands on "Announcement Settings" page
    Then verify "Created" is displayed as the table header
    Then user clicks on the plus icon
    Then verify pop-up "Create Announcement"
    Then user clicks on the action "Category"
    Then verify pop-up "Configure Category"
    Then user clicks on the action "Information"
    Then user clicks on the action "Severity"
    Then verify pop-up "Configure Severity"
    Then user clicks on the action "Important"
    Then user clicks on the action "Title"
    Then verify pop-up "Configure Name"
    Then user enters "This is TST-1252" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on the action "Description"
    Then verify pop-up "Configure Description"
    Then user enters "Previously viewed announcements and Suspension" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on the action "Announcement Message"
    Then verify pop-up "Configure Message"
    Then user enters " Previously viewed announcements and Suspension" in text box with link "www.google.com"
    Then user clicks on tick-checkbox
    Then user input the start current date and time
    Then user clicks on tick-checkbox
    Then verify "Updated By" with value "loginData|credentials.name" in the pop-up
    Then verify "Category" with value "Information" in the pop-up
    Then verify "Severity" with value "Important" in the pop-up
    Then verify "Title" with value "This is TST-1252" in the pop-up
    Then user clicks on tick-checkbox
    Then verify "Submission Successful" after completing the form
    Then user clicks on tick-checkbox
    Then user lands on "Announcement Settings" page
    Then verify the newly created announcement header "Title" with value "This is TST-1252"
    Then verify the newly created announcement header "Status" with value "Inactive"
    Then verify the newly created announcement header "Category" with value "Information"
    Then verify the newly created announcement header "Severity" with value "Important"
    Then user clicks on the newly created announcement
    Then user clicks on the ellipse of the newly created item
    Then verify pop-up "Announcement Details"
    Then verify "Status" with value "Inactive" in the pop-up
    Then verify "Updated By" with value "loginData|credentials.name" in the pop-up
    Then verify "Category" with value "Information" in the pop-up
    Then verify "Severity" with value "Important" in the pop-up
    Then verify "Title" with value "This is TST-1252" in the pop-up
    Then verify "Description" with value "Previously viewed announcements and Suspension" in the pop-up
    Then verify "Repeat On Every Login" with value "No" in the pop-up
    Then user clicks on the action icon
    Then verify pop-up "Announcement Actions"
    Then user clicks on the action "Edit"
    Then verify pop-up "Edit Announcement"
    Then user clicks on the action "Description"
    Then verify pop-up "Configure Description"
    Then user clears the text-area
    Then user enters "Previously viewed announcements and Suspension Changed Description" in the text-area
    Then user clicks on tick-checkbox
    Then user input the start current date and time
    Then user clicks on tick-checkbox
    Then verify "Submission Successful" after completing the form
    Then user clicks on tick-checkbox
    Then verify pop-up "Announcement Details"
    Then verify "Description" with value "Previously viewed announcements and Suspension Changed Description" in the pop-up
    Then verify "Repeat On Every Login" with value "No" in the pop-up
    Then user clicks on the action icon
    Then verify pop-up "Announcement Actions"
    Then user clicks on the action "Activate"
    Then user clicks on tick-checkbox
    Then verify the newly created announcement header "Status" with value "Active"
    Then user logs out
    Then user logs in using credentials "Haider"
    Then verify announcement "Header Title" with value "System Announcement"
    Then verify announcement "Category" with value "Information"
    Then verify announcement "Title" with value "This is TST-1252"
    Then verify announcement "Description" with value "Previously viewed announcements and Suspension Changed Description"
    Then verify announcement "Creator Name" with value "loginData|credentials.name"
    Then verify announcement "Announcement Message" with value "www.google.com"
    Then user clicks on tick-checkbox
    Then user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Announcements" icon
    Then user lands on "Announcement Settings" page
#    Then user clicks on the newly created announcement
    Then user clicks on the ellipse of the newly created item
    Then verify pop-up "Announcement Details"
    Then user clicks on the action icon
    Then verify pop-up "Announcement Actions"
    Then user clicks on the action "Suspend"
    Then verify pop-up "Submission Status"
    Then user clicks on tick-checkbox
    Then verify the newly created announcement header "Status" with value "Suspended"
    Then user clicks on the ellipse of the newly created item
    Then verify pop-up "Announcement Details"
    Then wait for popup loading
    Then user clicks on the action icon
    Then user verify action "Activate" is available
    Then user clicks on pop-up back icon
    Then verify pop-up "Announcement Details"
    Then user clicks on cross icon
    Then user lands on "Announcement Settings" page
    Then user clicks on "loginData|credentials.name" in menu bar section
    Then user lands on "Profile" page
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in profile menu "Announcements"
    Then user lands on "Viewed Announcements" page
    Then wait for 10 seconds
    Then verify the newly created announcement header "Title" with value "This is TST-1252"
    Then verify the newly created announcement header "Category" with value "Information"
    Then verify the newly created announcement header "Severity" with value "Important"

  @TST-1251 @haider @notVerifyingDate @e2eSprint @sprint2
  Scenario: Announcement Creation (Edit and Repeat)
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Announcements" icon
    Then user lands on "Announcement Settings" page
    Then verify "Created" is displayed as the table header
    Then user clicks on the plus icon
    Then verify pop-up "Create Announcement"
    Then user clicks on the action "Category"
    Then verify pop-up "Configure Category"
    Then user clicks on the action "Information"
    Then user clicks on the action "Severity"
    Then verify pop-up "Configure Severity"
    Then user clicks on the action "Important"
    Then user clicks on the action "Title"
    Then verify pop-up "Configure Name"
    Then user enters "This is TST-1251" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on the action "Description"
    Then verify pop-up "Configure Description"
    Then user enters "Announcement Creation (Edit and Repeat) Description" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on the action "Announcement Message"
    Then verify pop-up "Configure Message"
    Then user enters " - Announcement Creation (Edit and Repeat)" in text box with link "www.google.com"
    Then user clicks on tick-checkbox
    Then user input the start current date and time
#    Then user input the end current date and time
    Then user clicks on tick-checkbox
    Then verify "Updated By" with value "loginData|credentials.name" in the pop-up
    Then verify "Category" with value "Information" in the pop-up
    Then verify "Severity" with value "Important" in the pop-up
    Then verify "Title" with value "This is TST-1251" in the pop-up
#    Then user clicks on "Announcement Message"
#    Then verify the message with value "www.google.com - Announcement Creation (Edit and Repeat)"
#    Then user clicks on back icon
#    Then verify the starting date
#    Then verify the ending date
    Then user clicks on tick-checkbox
    Then verify "Submission Successful" after completing the form
    Then user clicks on tick-checkbox
    Then user lands on "Announcement Settings" page
    Then verify the newly created announcement header "Title" with value "This is TST-1251"
    Then verify the newly created announcement header "Status" with value "Inactive"
    Then verify the newly created announcement header "Category" with value "Information"
    Then verify the newly created announcement header "Severity" with value "Important"
    Then user clicks on the newly created announcement
    Then user clicks on the ellipse of the newly created item
    Then verify pop-up "Announcement Details"
    Then verify "Status" with value "Inactive" in the pop-up
    Then verify "Updated By" with value "loginData|credentials.name" in the pop-up
    Then verify "Category" with value "Information" in the pop-up
    Then verify "Severity" with value "Important" in the pop-up
    Then verify "Title" with value "This is TST-1251" in the pop-up
    Then verify "Description" with value "Announcement Creation (Edit and Repeat) Description" in the pop-up
#    Then verify the starting date
#    Then verify the ending date
    Then verify "Repeat On Every Login" with value "No" in the pop-up
    Then user clicks on the action icon
    Then verify pop-up "Announcement Actions"
    Then user clicks on the action "Edit"
    Then verify pop-up "Edit Announcement"
    Then user clicks on the action "Description"
    Then verify pop-up "Configure Description"
    Then user clears the text-area
    Then user enters "Announcement Creation (Edit and Repeat) Changed Description" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on the toggle button "Repeat On Every Login"
    Then user input the start current date and time
#    Then user input the end current date and time
    Then user clicks on tick-checkbox
    Then verify "Submission Successful" after completing the form
    Then user clicks on tick-checkbox
    Then verify pop-up "Announcement Details"
    Then verify "Description" with value "Announcement Creation (Edit and Repeat) Changed Description" in the pop-up
#    Then verify the starting date
#    Then verify the ending date
    Then verify "Repeat On Every Login" with value "Yes" in the pop-up
    Then user clicks on the action icon
    Then verify pop-up "Announcement Actions"
    Then user clicks on the action "Activate"
    Then user clicks on tick-checkbox
    Then verify the newly created announcement header "Status" with value "Active"
    Then user logs out
    Then user logs in using credentials "Haider"
    Then verify announcement "Header Title" with value "System Announcement"
    Then verify announcement "Category" with value "Information"
    Then verify announcement "Title" with value "This is TST-1251"
    Then verify announcement "Description" with value "Announcement Creation (Edit and Repeat) Changed Description"
    Then verify announcement "Creator Name" with value "loginData|credentials.name"
#    Then verify announcement "Created Date" with value "from the json"
    Then verify announcement "Announcement Message" with value "www.google.com"
    Then verify announcement the link "www.google.com" opening in a new page and then close that page
    Then user clicks on tick-checkbox
    Then user lands on "Systems" page
    Then user logs out
    Then user logs in using credentials "Haider"
    Then verify announcement "Header Title" with value "System Announcement"
    Then verify announcement "Category" with value "Information"
    Then verify announcement "Title" with value "This is TST-1251"
    Then verify announcement "Description" with value "Announcement Creation (Edit and Repeat) Changed Description"
    Then verify announcement "Creator Name" with value "loginData|credentials.name"
#    Then verify announcement "Created Date" with value "from the json"
    Then verify announcement "Announcement Message" with value "www.google.com"
    Then verify announcement the link "www.google.com" opening in a new page and then close that page
    Then user clicks on tick-checkbox
    Then user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Announcements" icon
    Then user lands on "Announcement Settings" page
#    Then user clicks on the newly created announcement
    Then user clicks on the ellipse of the newly created item
    Then verify pop-up "Announcement Details"
    Then user clicks on the action icon
    Then verify pop-up "Announcement Actions"
    Then user clicks on the action "Suspend"
    Then user clicks on tick-checkbox

  @TST-1247 @haider @refactored @e2eSprint @sprint2
  Scenario: Clinical record - predefined search by clinical indicator not behaving as expected
    Given user lands on "Systems" page
    Then user clicks on the option "Clinical Records"
    Then user lands on "Clinical Records" page
    Then verify pop-up "Patient Search"
    Then user clicks on the option "Predefined Criteria"
    Then verify pop-up "Predefined Criteria Search"
    Then user clicks on the option "Inpatients By Clinical Indicator"
    Then verify pop-up "Select Site"
    Then user clicks on the option "Community Services"
    Then verify pop-up "Select Indicator Type"
    Then user clicks on the option "Global Indicator"
    Then verify pop-up "Select Global Indicator"
    Then user clicks on the option "webVCoreData|globalIndicator"
    Then verify pop-up "Select Indicator Value"
    Then user clicks on the option "No Value"
    Then user lands on "Patient List" module
    Then verify the gender is "Male" in the first row
    Then verify the first row "Name" is "Steve Rodgers"
    Then verify the first row "NHS Number" is "987 654 3211"
    Then verify the first row "Location" is "Ward 28"
    Then verify the first row "Bed" is "Bay 2 / Bed 2"

#  @TST-1186 @haider @refactored @resetProfile @e2eSprint @sprint2
#  Scenario: User Roles in Settings - Updating Role Settings
#    Given user lands on "Systems" page
#    Then check if role "WebV Test" exists and if not then create it
#    Then check if the current user has the role of "WebV Test" and if not then change it
#    Then check if the current user has the role of "WebV Admin" and if not then change it
#    Then check if the current user has the role of "Test 2" associated and if they are then remove them
#    Then check if the current user has the role of "Test 3" associated and if they are then remove them
#    Then user clicks on "Systems" in menu bar section
#    Then user lands on "Systems" page
#    Then user clicks on "Settings" in menu bar section
#    Then user lands on "Settings" page
#    Then user clicks on "Roles" icon
#    Then user lands on "Role Settings" page
#    Then verify "Active" Roles Exist
#    Then verify "Inactive" Roles Exist
#    Then change all roles with name "Test" to "Test 2"
#    Then change all roles with name "Test 2" to "Test 3"
#    Then user clicks on the plus icon
#    Then verify pop-up "Create New Role"
#    Then user inputs "Name" with value "Test"
#    Then user inputs "Display Name" with value "Test"
#    Then user clicks on the toggle button "Active"
#    Then user clicks on tick-checkbox
#    Then verify pop-up "Create New Role Summary"
#    Then verify "Name" with value "Test" in the pop-up
#    Then verify "Display Name" with value "Test" in the pop-up
#    Then verify "Active" with value "Active" in the pop-up
#    Then user clicks on tick-checkbox
#    Then verify pop-up "Submission Status"
#    Then verify "Submission Successful" after completing the form
#    Then verify "Role succesfully created" after completing the form description
#    Then user clicks on tick-checkbox
#    Then wait for 20 seconds
#    Then user clicks on "Test" in the table
#    Then verify pop-up "Role Details"
#    Then verify "Name" with value "Test" in the pop-up details
#    Then verify "Display Name" with value "Test" in the pop-up details
#    Then verify "Active" with value "Active" in the pop-up details
#    Then user clicks on the action icon
#    Then user clicks on the action "Edit"
#    Then user inputs "Name" with value "Test 2" in edit
#    Then user inputs "Display Name" with value "Test 2" in edit
#    Then user clicks on the action "Active"
#    Then verify pop-up "Edit Active"
#    Then user clicks on the action "Inactive"
##    Then verify "Name" with value "Test 2" in the pop-up details
##    Then verify "Display Name" with value "Test 2" in the pop-up details
##    Then verify "Active" with value "Inactive" in the pop-up details
#    Then user clicks on tick-checkbox
#    Then verify pop-up "Submission Status"
#    Then verify "Submission Successful" after completing the form
#    Then verify "Role succesfully edited" after completing the form description
#    Then user clicks on tick-checkbox
#    Then verify pop-up "Role Details"
#    Then user clicks on the action icon
#    Then verify pop-up "Menu"
#    Then user clicks on the action "Edit"
#    Then user clicks on the action "Active"
#    Then verify pop-up "Edit Active"
#    Then user clicks on the action "Active"
##    Then verify "Active" with value "Inactive" in the pop-up
#    Then user clicks on tick-checkbox
#    Then verify pop-up "Submission Status"
#    Then verify "Submission Successful" after completing the form
#    Then verify "Role succesfully edited" after completing the form description
#    Then user clicks on tick-checkbox
#    Then verify pop-up "Role Details"
#    Then user clicks on pop-up back icon
#    Then user clicks on the last "Test 2" in the table
#    Then user clicks on the action icon
#    Then verify pop-up "Menu"
#    Then user clicks on the action "Configure Permissions"
#    Then verify pop-up "Role Permissions"
#    Then user selects all the permissions
#    Then user clicks on tick-checkbox
#    Then verify pop-up "Submission Status"
#    Then verify "Submission Successful" after completing the form
#    Then verify "Role succesfully edited" after completing the form description
#    Then user clicks on tick-checkbox
#    Then verify pop-up "Role Details"
#    Then user clicks on the action icon
#    Then verify pop-up "Menu"
#    Then user clicks on the action "Configure Report Permissions"
#    Then verify pop-up "Role Permissions"
#    Then user selects all the permissions
#    Then user clicks on tick-checkbox
#    Then verify pop-up "Submission Status"
#    Then verify "Submission Successful" after completing the form
#    Then verify "Role succesfully edited" after completing the form description
#    Then user clicks on tick-checkbox
#    Then verify pop-up "Role Details"
#    Then user clicks on pop-up back icon
#    Then user clicks on "Settings" in menu bar section
#    Then user lands on "Settings" page
#    Then user clicks on "Accounts" icon
#    Then user lands on "Account Settings" page
#    Then user lands on "Users List" module
#    Then user clicks on navigation search icon
#    Then verify pop-up "User Search"
#    Then user clicks on "Username"
#    Then verify pop-up "User Search"
#    Then user clicks on the action "Username"
#    Then verify pop-up "Username Search"
#    Then user inputs "Username" with value "loginData|credentials.username"
#    Then user clicks on tick-checkbox
#    Then wait for popup loading
#    Then user clicks on "loginData|credentials.name" in the table
#    Then verify pop-up "Account Details"
#    Then user clicks on the option "Profiles"
#    Then verify pop-up "Profiles List"
#    Then user clicks on the action "WebV Test"
#    Then verify pop-up "Profile Details"
#    Then user clicks on the action icon
#    Then user clicks on the action "Edit"
#    Then verify pop-up "Edit Profile"
#    Then user clicks on the action "Role"
#    Then user inputs "Test 2" in the filter option
#    Then wait for "5" seconds
#    Then user selects the first option in filter with value "Test 2"
#    Then user clicks on tick-checkbox
#    Then verify pop-up "Submission Status"
#    Then verify "Success" after completing the form
#    Then user clicks on tick-checkbox
#    Then verify pop-up "Profile Details"
#    Then user clicks on pop-up back icon
#    Then verify pop-up "Profiles List"
#    Then user clicks on pop-up back icon
#    Then verify pop-up "Account Details"
#    Then user clicks on cross icon
#    Then user clicks on "loginData|credentials.name" in menu bar section
#    Then user lands on "Profile" page
#    Then user clicks on the action icon
#    Then user clicks on the action "Change Profile"
#    Then user clicks on the action "Test 2"
#    Then verify "Success" after completing the form
#    Then verify "Your changes were saved successfully." after completing the form description
#    Then user clicks on tick-checkbox
#    Then reload page
#    Then wait for 20 seconds
#    Then verify "Settings" in menu-bar is accessible
#    Then verify "Utilities" in menu-bar is accessible
#    Then verify "Systems" in menu-bar is accessible
#    Then verify "Patient Quick Search" in menu-bar is accessible
#    Then user clicks on "loginData|credentials.name" in menu bar section
#    Then user lands on "Profile" page
#    Then user clicks on the action icon
#    Then user clicks on the action "Change Profile"
#    Then user clicks on the action "WebV Admin"
#    Then verify "Success" after completing the form
#    Then verify "Your changes were saved successfully." after completing the form description
#    Then user clicks on tick-checkbox
#    Then user clicks on "Settings" in menu bar section
#    Then user lands on "Settings" page
#    Then user clicks on "Roles" icon
#    Then user lands on "Role Settings" page
#    Then reload page
#    Then wait for 20 seconds
#    Then user clicks on the last "Test 2" in the table
#    Then verify pop-up "Role Details"
#    Then user clicks on the action icon
#    Then user clicks on the action "Configure Permissions"
#    Then verify pop-up "Role Permissions"
#    Then user deselects all the permissions
#    Then user clicks on tick-checkbox
#    Then verify pop-up "Submission Status"
#    Then verify "Success" after completing the form
#    Then verify "Role succesfully edited" after completing the form description
#    Then user clicks on tick-checkbox
#    Then verify pop-up "Role Details"
#    Then user clicks on pop-up back icon
#    Then user clicks on "loginData|credentials.name" in menu bar section
#    Then user lands on "Profile" page
#    Then user clicks on the action icon
#    Then user clicks on the action "Change Profile"
#    Then user clicks on the action "Test 2"
#    Then verify "Success" after completing the form
#    Then verify "Your changes were saved successfully." after completing the form description
#    Then user clicks on tick-checkbox
#    Then reload page
#    Then wait for 20 seconds
#    Then verify "Settings" in menu-bar is in-accessible
#    Then verify "Utilities" in menu-bar is in-accessible
#    Then verify "Systems" in menu-bar is in-accessible
#    Then verify "Patient Quick Search" in menu-bar is in-accessible
#    Then user clicks on "loginData|credentials.name" in menu bar section
#    Then user lands on "Profile" page
#    Then user clicks on the action icon
#    Then user clicks on the action "Change Profile"
#    Then user clicks on the action "WebV Admin"
#    Then verify "Success" after completing the form
#    Then verify "Your changes were saved successfully." after completing the form description
#    Then user clicks on tick-checkbox
#    Then user clicks on "Settings" in menu bar section
#    Then user lands on "Settings" page
#    Then user clicks on "Roles" icon
#    Then user lands on "Role Settings" page
#    Then user clicks on the last "Test 2" in the table
#    Then verify pop-up "Role Details"
#    Then user clicks on the action icon
#    Then user clicks on the action "Configure Permissions"
#    Then verify pop-up "Role Permissions"
#    Then user selects all the permissions
#    Then user clicks on tick-checkbox
#    Then verify pop-up "Submission Status"
#    Then verify "Success" after completing the form
#    Then verify "Role succesfully edited" after completing the form description
#    Then user clicks on tick-checkbox
#    Then verify pop-up "Role Details"
#    Then user clicks on the action icon
#    Then user clicks on the action "Configure Report Permissions"
#    Then verify pop-up "Role Permissions"
#    Then user deselects all the permissions
#    Then user clicks on tick-checkbox
#    Then verify pop-up "Submission Status"
#    Then verify "Success" after completing the form
#    Then verify "Role succesfully edited" after completing the form description
#    Then user clicks on tick-checkbox
#    Then verify pop-up "Role Details"
#    Then user clicks on pop-up back icon
#    Then user clicks on "loginData|credentials.name" in menu bar section
#    Then user lands on "Profile" page
#    Then user clicks on the action icon
#    Then user clicks on the action "Change Profile"
#    Then user clicks on the action "Test 2"
#    Then verify "Success" after completing the form
#    Then verify "Your changes were saved successfully." after completing the form description
#    Then user clicks on tick-checkbox
#    Then reload page
#    Then wait for 20 seconds
#    Then user clicks on "Systems" in menu bar section
#    Then user lands on "Systems" page
#    Then user clicks on "Report" icon
#    Then user lands on "Report" page
#    Then user clicks on navigation search icon
#    Then verify pop-up "Reports Search"
#    Then user clicks on "Patient Identifier" in Reports search popup
#    Then user enters Patient Identifier Search "0123456789"
#    Then user clicks on tick-checkbox
#    Then verify pop-up "Confirmation Required"
#    Then user clicks on the action "Continue"
#    Then wait for 20 seconds
#    Then user verify that all reports are unselectable
#    Then user clicks on "loginData|credentials.name" in menu bar section
#    Then user lands on "Profile" page
#    Then user clicks on the action icon
#    Then user clicks on the action "Change Profile"
#    Then user clicks on the action "WebV Admin"
#    Then verify "Success" after completing the form
#    Then verify "Your changes were saved successfully." after completing the form description
#    Then user clicks on tick-checkbox
#    Then reload page
#    Then wait for 20 seconds
#    Then user clicks on "Settings" in menu bar section
#    Then user lands on "Settings" page
#    Then user clicks on "Accounts" icon
#    Then user lands on "Account Settings" page
#    Then user lands on "Users List" module
#    Then user clicks on navigation search icon
#    Then verify pop-up "User Search"
#    Then user clicks on "Username"
#    Then verify pop-up "User Search"
#    Then user clicks on the action "Username"
#    Then verify pop-up "Username Search"
#    Then user inputs "Username" with value "loginData|credentials.username"
#    Then user clicks on tick-checkbox
#    Then user clicks on "loginData|credentials.name" in the table
#    Then verify pop-up "Account Details"
#    Then user clicks on the option "Profiles"
#    Then verify pop-up "Profiles List"
#    Then user clicks on the action "Test 2"
#    Then verify pop-up "Profile Details"
#    Then user clicks on the action icon
#    Then user clicks on the action "Remove"
#    Then verify pop-up "Remove Profile"
#    Then user clicks on tick-checkbox
#    Then verify pop-up "Submission Status"
#    Then verify "Success" after completing the form
#    Then user clicks on tick-checkbox

  @TST-1189 @haider @refactored @e2eSprint @sprint2
  Scenario: Organisation Settings
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Organisations" icon
    Then user lands on "Organisation Settings" page
#    verifying Trust Modules
    Then user lands on "Trust List" module
    Then verify "Display Name" is displayed as the table header
    Then verify "Status" is displayed as the table header
    Then verify "Type" is displayed as the table header
    Then verify "Telephone" is displayed as the table header
    Then verify "Postcode" is displayed as the table header
    Then verify "Region" is displayed as the table header
    Then verify "Name" is displayed as the filter parameters
    Then verify "Postcode" is displayed as the filter parameters
    Then verify "Status" is displayed as the filter parameters
    Then verify "Type" is displayed as the filter parameters
    #verifying Site Modules
    Then user clicks on "Sites"
    Then user lands on "Site List" module
    Then verify "Display Name" is displayed as the table header
    Then verify "Status" is displayed as the table header
    Then verify "Type" is displayed as the table header
    Then verify "Telephone" is displayed as the table header
    Then verify "Postcode" is displayed as the table header
    Then verify "Region" is displayed as the table header
    Then verify "Name" is displayed as the filter parameters
    Then verify "Postcode" is displayed as the filter parameters
    Then verify "Status" is displayed as the filter parameters
    Then verify "Type" is displayed as the filter parameters
    #verifying Location Modules
    Then user clicks on "Locations"
    Then user lands on "Location List" module
    Then verify "Display Name" is displayed as the table header
    Then verify "Status" is displayed as the table header
    Then verify "Manager" is displayed as the table header
    Then verify "Organisation" is displayed as the table header
    Then verify "Telephone" is displayed as the table header
    Then verify "Postcode" is displayed as the table header
    Then verify "Name" is displayed as the filter parameters
    Then verify "Postcode" is displayed as the filter parameters
    Then verify "Status" is displayed as the filter parameters
    Then user clicks on "Trusts"
    Then user lands on "Trust List" module
    #Restting the webVCoreData|organisation.trusts.name Details to make sure test case doesnt fails
    Then user clicks on "webVCoreData|organisation.trusts.name" in the table
    Then user clicks on the action icon
    Then verify pop-up "Trust Actions"
    Then user clicks on the action "Edit"
    Then verify pop-up "Edit Trust Details"
    Then user clicks on the action "Status"
    Then verify pop-up "Statuses"
    Then user clicks on the action "Active"
    Then verify pop-up "Edit Trust Details"
    Then user clear inputs "Email"
    Then user clear inputs "Mobile"
    Then user clicks on tick-checkbox
    Then verify pop-up "Trust Details Summary"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then user clicks on tick-checkbox
    Then verify pop-up "Trust Details"
    Then verify "Email" with value "Not Known" in the pop-up
    Then verify "Mobile" with value "Not Known" in the pop-up
    Then verify "Status" with value "Active" in the pop-up
    Then user clicks on pop-up back icon
    #Trust BMI Edit
    Then user clicks on "webVCoreData|organisation.trusts.name" in the table
    Then verify pop-up "Trust Details"
    Then verify "Display Name" with value "webVCoreData|organisation.trusts.name" in the pop-up
    Then verify "Type" with value "webVCoreData|organisation.trusts.type" in the pop-up
    Then verify "National Code" with value "webVCoreData|organisation.trusts.nationCode" in the pop-up
    Then verify "Region Code" with value "webVCoreData|organisation.trusts.regionCode" in the pop-up
    Then verify "District Code" with value "webVCoreData|organisation.trusts.districtCode" in the pop-up
    Then verify "Alias" with value "webVCoreData|organisation.trusts.alias" in the pop-up
#    Then verify "Address" with value "3 Paris Garden\nLondon\nFreater London\nSE1 8ND" in the pop-up
    Then verify "Email" with value "webVCoreData|organisation.trusts.email" in the pop-up
    Then verify "Mobile" with value "webVCoreData|organisation.trusts.mobile" in the pop-up
    Then verify "Telephone" with value "webVCoreData|organisation.trusts.telephone" in the pop-up
    Then user clicks on the action "Sites"
    Then verify pop-up "Sites List"
    Then user clicks on pop-up back icon
    Then user clicks on the option "References"
    Then verify pop-up "References"
    Then user clicks on pop-up back icon
    Then verify "Status" with value "Active" in the pop-up
    Then user clicks on the action icon
    Then verify pop-up "Trust Actions"
    Then user clicks on the action "Edit"
    Then verify pop-up "Edit Trust Details"
    Then user clicks on the action "Status"
    Then verify pop-up "Statuses"
    Then user clicks on the action "Inactive"
    Then verify pop-up "Edit Trust Details"
    Then user inputs "Email" with value "paul.stweart15@nhs.net"
    Then user inputs "Mobile" with value "0800 888888"
    Then user clicks on tick-checkbox
    Then verify "Email" with value "paul.stweart15@nhs.net" in the pop-up
    Then verify "Mobile" with value "0800 888888" in the pop-up
    Then verify "Status" with value "Inactive" in the pop-up
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then user clicks on tick-checkbox
    Then verify pop-up "Trust Details"
    Then verify "Email" with value "paul.stweart15@nhs.net" in the pop-up
    Then verify "Mobile" with value "0800 888888" in the pop-up
    Then verify "Status" with value "Inactive" in the pop-up
    #Resetting Trust BMI To Initial State
    Then user clicks on the action icon
    Then verify pop-up "Trust Actions"
    Then user clicks on the action "Edit"
    Then verify pop-up "Edit Trust Details"
    Then user clicks on the action "Status"
    Then verify pop-up "Statuses"
    Then user clicks on the action "Active"
    Then verify pop-up "Edit Trust Details"
    Then user clear inputs "Email"
    Then user clear inputs "Mobile"
    Then user clicks on tick-checkbox
    Then verify pop-up "Trust Details Summary"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then user clicks on tick-checkbox
    Then verify pop-up "Trust Details"
    Then verify "Email" with value "Not Known" in the pop-up
    Then verify "Mobile" with value "Not Known" in the pop-up
    Then verify "Status" with value "Active" in the pop-up
    Then user clicks on pop-up back icon
    #Trust Filter
    Then user clicks on filter Parameter
    Then verify pop-up "Filter Parameters"
    Then user clicks on the action "Name"
    Then verify pop-up "Select Name"
    Then user clicks on the action "webVCoreData|organisation.trusts.name"
    Then user clicks on tick-checkbox
    Then user clicks on the action "Postcode"
    Then verify pop-up "Select Postcode"
    Then user clicks on the action "webVCoreData|organisation.trusts.postcode"
    Then user clicks on tick-checkbox
    Then user clicks on the action "Status"
    Then verify pop-up "Select Status"
    Then user clicks on the action "Active"
    Then user clicks on tick-checkbox
    Then user clicks on the action "Type"
    Then verify pop-up "Select Type"
    Then user clicks on the action "webVCoreData|organisation.trusts.type"
    Then user clicks on tick-checkbox
    Then verify pop-up "Filter Parameters"
    Then user clicks on tick-checkbox
    Then verify the first row "Display Name" is "webVCoreData|organisation.trusts.name"
    Then verify the first row "Status" is "Active"
    Then verify the first row "Type" is "webVCoreData|organisation.trusts.type"
    Then verify the first row "Telephone" is "webVCoreData|organisation.trusts.telephone"
    Then verify the first row "Postcode" is "webVCoreData|organisation.trusts.postcode"
    Then verify the first row "Region" is "webVCoreData|organisation.trusts.regionCode"
    #Resetting the Filter
    Then user clicks on filter Parameter
    Then verify pop-up "Filter Parameters"
    Then user clicks on the action "Name"
    Then user clicks on the action "webVCoreData|organisation.trusts.name"
    Then user clicks on tick-checkbox
    Then user clicks on the action "Postcode"
    Then verify pop-up "Select Postcode"
    Then user clicks on the action "webVCoreData|organisation.trusts.postcode"
    Then user clicks on tick-checkbox
    Then user clicks on the action "Status"
    Then verify pop-up "Select Status"
    Then user clicks on the action "Active"
    Then user clicks on tick-checkbox
    Then user clicks on the action "Type"
    Then verify pop-up "Select Type"
    Then user clicks on the action "webVCoreData|organisation.trusts.type"
    Then user clicks on tick-checkbox
    Then verify pop-up "Filter Parameters"
    Then user clicks on tick-checkbox
    Then verify the table is populated
    #Creating a new Trust
    Then user clicks on the plus icon
    Then verify pop-up "Create Trust"
    Then user inputs "Display Name" with value "Test Trust"
    Then user clicks on the action "Type"
    Then verify pop-up "Types"
    Then user clicks on the action "NHS"
    Then user inputs "National Code" with random value
    Then user clicks on tick-checkbox
    Then verify pop-up "Trust Details Summary"
    Then user clicks on tick-checkbox
    Then verify "Success" after completing the form
    Then verify "Your changes were saved successfully." after completing the form description
    Then user clicks on tick-checkbox
    Then user clicks on the last "Test Trust" in the table
    Then verify pop-up "Trust Details"
    Then verify "Display Name" with value "Test Trust" in the pop-up
    Then verify "Type" with value "NHS" in the pop-up
    Then verify "National Code" with random value in the pop-up
    Then verify "Status" with value "Active" in the pop-up
    Then user clicks on pop-up back icon
    #Restting the Abbey Medical Practice Details to make sure test case doesnt fails
    Then user clicks on "Sites"
    Then user lands on "Site List" module
    Then user clicks on "webVCoreData|organisation.sites.name" in the table
    Then verify pop-up "Site Details"
    Then user clicks on the action icon
    Then verify pop-up "Site Actions"
    Then user clicks on the action "Edit"
    Then verify pop-up "Edit Site Details"
    Then user clicks on the action "Type"
    Then verify pop-up "Types"
    Then user clicks on the action "webVCoreData|organisation.sites.type"
    Then verify pop-up "Edit Site Details"
    Then user clicks on the action "Trust"
    Then verify pop-up "Trusts"
    Then user clicks on the action "webVCoreData|organisation.sites.trust"
    Then verify pop-up "Edit Site Details"
    Then user clicks on the toggle button "Active" to "true"
    Then user clear inputs "Email"
    Then user clear inputs "Mobile"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then user clicks on tick-checkbox
    Then verify pop-up "Site Details"
    Then verify "Email" with value "Not Known" in the pop-up
    Then verify "Mobile" with value "Not Known" in the pop-up
    Then verify "Status" with value "Active" in the pop-up
    Then user clicks on pop-up back icon
    #Editing Sites
    Then user clicks on "webVCoreData|organisation.sites.name" in the table
    Then verify pop-up "Site Details"
    Then verify "Display Name" with value "webVCoreData|organisation.sites.name" in the pop-up
    Then verify "Type" with value "webVCoreData|organisation.sites.type" in the pop-up
    Then verify "National Code" with value "webVCoreData|organisation.sites.nationCode" in the pop-up
    Then verify "Region" with value "webVCoreData|organisation.sites.regionCode" in the pop-up
    Then verify "Trust" with value "webVCoreData|organisation.sites.trust" in the pop-up
    Then verify "Address" with value "webVCoreData|organisation.sites.postcode" in the pop-up
    Then verify "Email" with value "webVCoreData|organisation.sites.email" in the pop-up
    Then verify "Mobile" with value "webVCoreData|organisation.sites.mobile" in the pop-up
    Then verify "Telephone" with value "webVCoreData|organisation.sites.telephone" in the pop-up
    Then verify "Status" with value "Active" in the pop-up
    Then user clicks on the action icon
    Then verify pop-up "Site Actions"
    Then user clicks on the action "Edit"
    Then verify pop-up "Edit Site Details"
    Then user inputs "Email" with value "paul.stweart15@nhs.net"
    Then user inputs "Mobile" with value "0800 888888"
    Then user clicks on the toggle button "Active" to "false"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then user clicks on tick-checkbox
    Then verify pop-up "Site Details"
    Then verify "Email" with value "paul.stweart15@nhs.net" in the pop-up
    Then verify "Mobile" with value "0800 888888" in the pop-up
    Then verify "Status" with value "Inactive" in the pop-up
    #Resetting The Site Again
    Then user clicks on the action icon
    Then verify pop-up "Site Actions"
    Then user clicks on the action "Edit"
    Then verify pop-up "Edit Site Details"
    Then verify pop-up "Edit Site Details"
    Then user clicks on the toggle button "Active"
    Then user clear inputs "Email"
    Then user clear inputs "Mobile"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then user clicks on tick-checkbox
    Then verify pop-up "Site Details"
    Then verify "Email" with value "Not Known" in the pop-up
    Then verify "Mobile" with value "Not Known" in the pop-up
    Then verify "Status" with value "Active" in the pop-up
    Then user clicks on pop-up back icon
    #Site Filter
    Then user clicks on filter Parameter
    Then verify pop-up "Filter Parameters"
    Then user clicks on the action "Name"
    Then verify pop-up "Select Name"
    Then user clicks on the action "webVCoreData|organisation.sites.name"
    Then user clicks on tick-checkbox
    Then user clicks on the action "Status"
    Then verify pop-up "Select Status"
    Then user clicks on the action "Active"
    Then user clicks on tick-checkbox
    Then user clicks on the action "Type"
    Then verify pop-up "Select Type"
    Then user clicks on the action "webVCoreData|organisation.sites.type"
    Then user clicks on tick-checkbox
    Then user clicks on the action "Postcode"
    Then verify pop-up "Select Postcode"
    Then user clicks on the action "webVCoreData|organisation.sites.postcode"
    Then user clicks on tick-checkbox
    Then verify pop-up "Filter Parameters"
    Then user clicks on tick-checkbox
    Then verify the first row "Display Name" is "webVCoreData|organisation.sites.name"
    Then verify the first row "Status" is "Active"
    Then verify the first row "Type" is "webVCoreData|organisation.sites.type"
    Then verify the first row "Telephone" is "webVCoreData|organisation.sites.telephone"
    Then verify the first row "Postcode" is "webVCoreData|organisation.sites.postcode"
    Then verify the first row "Region" is "webVCoreData|organisation.sites.regionCode"
    #Resetting Site Filter
    Then user clicks on filter Parameter
    Then verify pop-up "Filter Parameters"
    Then user clicks on the action "Name"
    Then user clicks on the action "webVCoreData|organisation.sites.name"
    Then user clicks on tick-checkbox
    Then user clicks on the action "Postcode"
    Then verify pop-up "Select Postcode"
    Then user clicks on the action "webVCoreData|organisation.sites.postcode"
    Then user clicks on tick-checkbox
    Then user clicks on the action "Status"
    Then verify pop-up "Select Status"
    Then user clicks on the action "Active"
    Then user clicks on tick-checkbox
    Then user clicks on the action "Type"
    Then verify pop-up "Select Type"
    Then user clicks on the action "webVCoreData|organisation.sites.type"
    Then user clicks on tick-checkbox
    Then verify pop-up "Filter Parameters"
    Then user clicks on tick-checkbox
    Then verify the table is populated
    #Creating a new Site
    Then user clicks on the plus icon
    Then verify pop-up "Create Site"
    Then user inputs "Display Name" with value "Test Site"
    Then user clicks on the action "Type"
    Then verify pop-up "Types"
    Then user clicks on the action "Hospital"
    Then user inputs "National Code" with random value
    Then user clicks on the action "Trust"
    Then verify pop-up "Trusts"
    Then user clicks on the action "webVCoreData|organisation.trusts.name"
    Then user clicks on tick-checkbox
    Then verify pop-up "Site Details Summary"
    Then user clicks on tick-checkbox
    Then verify "Success" after completing the form
    Then verify "Your changes were saved successfully." after completing the form description
    Then user clicks on tick-checkbox
    Then user clicks on the last "Test Site" in the table
    Then verify pop-up "Site Details"
    Then verify "Display Name" with value "Test Site" in the pop-up
    Then verify "Type" with value "Hospital" in the pop-up
    Then verify "National Code" with random value in the pop-up
    Then verify "Trust" with value "webVCoreData|organisation.trusts.name" in the pop-up
    Then verify "Status" with value "Active" in the pop-up
    Then user clicks on pop-up back icon
    #Restting the Abbey Medical Practice Details to make sure test case doesnt fails
    Then user clicks on "Location"
    Then user lands on "Location List" module
    Then user clicks on "webVCoreData|organisation.locations.name" in the table
    Then verify pop-up "Location Details"
    Then user clicks on the action icon
    Then verify pop-up "Location Actions"
    Then user clicks on the action "Edit"
    Then verify pop-up "Edit Location"
    Then user clicks on the toggle button "Active" to "true"
    Then user clear inputs "Email"
    Then user clear inputs "Mobile"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then user clicks on tick-checkbox
    Then verify pop-up "Location Details"
    Then verify "Email" with value "Not Known" in the pop-up
    Then verify "Mobile" with value "Not Known" in the pop-up
    Then verify "Status" with value "Active" in the pop-up
    Then user clicks on pop-up back icon
    #Editing the locations
    Then user clicks on "webVCoreData|organisation.locations.name" in the table
    Then verify pop-up "Location Details"
    Then verify "Display Name" with value "webVCoreData|organisation.locations.name" in the pop-up
    Then verify "Type" with value "webVCoreData|organisation.locations.type" in the pop-up
    Then verify "Manager" with value "webVCoreData|organisation.locations.manager" in the pop-up
    Then verify "National Code" with value "webVCoreData|organisation.locations.nationCode" in the pop-up
    Then verify "Site" with value "webVCoreData|organisation.locations.site" in the pop-up
    Then verify "Address" with value "webVCoreData|organisation.locations.address" in the pop-up
    Then verify "Email" with value "Not Known" in the pop-up
    Then verify "Mobile" with value "Not Known" in the pop-up
    Then verify "Telephone" with value "Not Known" in the pop-up
    Then verify "Status" with value "Active" in the pop-up
    Then user clicks on the option "References"
    Then verify pop-up "References"
    Then verify reference "Class Name:" with value "Config.Location"
    Then verify reference "Code:" with value "webVCoreData|organisation.locations.nationCode"
    Then verify reference "System" with value "NLG PAS Secure System"
    Then user clicks on pop-up back icon
    Then verify pop-up "Location Details"
    Then user clicks on the action icon
    Then verify pop-up "Location Actions"
    Then user clicks on the action "Edit"
    Then verify pop-up "Edit Location"
    Then user clicks on the toggle button "Active" to "false"
    Then user inputs "Email" with value "paul.stweart15@nhs.net"
    Then user inputs "Mobile" with value "0800 888888"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then user clicks on tick-checkbox
    Then verify pop-up "Location Details"
    Then verify "Email" with value "paul.stweart15@nhs.net" in the pop-up
    Then verify "Mobile" with value "0800 888888" in the pop-up
    Then verify "Status" with value "Inactive" in the pop-up
    #Restting Oral Minor Ops to orignal state
    Then user clicks on the action icon
    Then verify pop-up "Location Actions"
    Then user clicks on the action "Edit"
    Then verify pop-up "Edit Location"
    Then user clicks on the toggle button "Active" to "true"
    Then user clear inputs "Email"
    Then user clear inputs "Mobile"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then user clicks on tick-checkbox
    Then verify pop-up "Location Details"
    Then verify "Email" with value "Not Known" in the pop-up
    Then verify "Mobile" with value "Not Known" in the pop-up
    Then verify "Status" with value "Active" in the pop-up
    Then user clicks on pop-up back icon
    #Filters
    Then user clicks on filter Parameter
    Then verify pop-up "Filter Parameters"
    Then user clicks on the action "Organisations"
    Then verify pop-up "Select Organisations"
    Then user clicks on the action "webVCoreData|organisation.locations.site"
    Then user clicks on tick-checkbox
    Then user clicks on the action "Status"
    Then verify pop-up "Select Status"
    Then user clicks on the action "Active"
    Then user clicks on tick-checkbox
    Then user clicks on the action "Name"
    Then verify pop-up "Select Name"
    Then user clicks on the action "webVCoreData|organisation.locations.name"
    Then user clicks on tick-checkbox
    Then user clicks on the action "Postcode"
    Then verify pop-up "Select Postcode"
    Then user clicks on the action "webVCoreData|organisation.locations.postcode"
    Then user clicks on tick-checkbox
    Then verify pop-up "Filter Parameters"
    Then user clicks on tick-checkbox
    Then verify the first row "Display Name" is "webVCoreData|organisation.locations.name"
    Then verify the first row "Status" is "Active"
    Then verify the first row "Manager" is "webVCoreData|organisation.locations.manager"
    Then verify the first row "Organisation" is "webVCoreData|organisation.locations.site"
    Then verify the first row "Telephone" is "Not Known"
    Then verify the first row "Post Code" is "Not Known"
    Then user clicks on filter Parameter
    #Resetting Location Filter
    Then verify pop-up "Filter Parameters"
    Then user clicks on the action "Organisations"
    Then user clicks on the action "webVCoreData|organisation.locations.site"
    Then user clicks on tick-checkbox
    Then user clicks on the action "Postcode"
    Then verify pop-up "Select Postcode"
    Then user clicks on the action "webVCoreData|organisation.locations.postcode"
    Then user clicks on tick-checkbox
    Then user clicks on the action "Status"
    Then verify pop-up "Select Status"
    Then user clicks on the action "Active"
    Then user clicks on tick-checkbox
    Then user clicks on the action "Name"
    Then verify pop-up "Select Name"
    Then user clicks on the action "webVCoreData|organisation.locations.name"
    Then user clicks on tick-checkbox
    Then verify pop-up "Filter Parameters"
    Then user clicks on tick-checkbox
    Then verify the table is populated
    #Creating a new Location
    Then user clicks on the plus icon
    Then verify pop-up "Create Location"
    Then user inputs "Display Name" with value "Test Location"
    Then user clicks on the action "Type"
    Then verify pop-up "Types"
    Then user clicks on the action "Dental Practice"
    Then user inputs "National Code" with random value
    Then user clicks on the action "Site"
    Then verify pop-up "Sites"
    Then user clicks on the action "webVCoreData|organisation.locations.site1"
    Then user clicks on tick-checkbox
    Then verify pop-up "Location Details Summary"
    Then user clicks on tick-checkbox
    Then verify "Success" after completing the form
    Then verify "Your changes were saved successfully." after completing the form description
    Then user clicks on tick-checkbox
    Then user clicks on the last "Test Location" in the table
    Then verify pop-up "Location Details"
    Then verify "Display Name" with value "Test Location" in the pop-up
    Then verify "Type" with value "Dental Practice" in the pop-up
    Then verify "National Code" with random value in the pop-up
    Then verify "Site" with value "webVCoreData|organisation.locations.site" in the pop-up
    Then verify "Status" with value "Active" in the pop-up

  @TST-1240 @haider @defect:clinicianNotRemoved @refactored @e2eSprint @sprint2
  Scenario: Ability to add a clinician to an organisation
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Organisations" icon
    Then user lands on "Organisation Settings" page
    Then user lands on "Trust List" module
    Then user clicks on "Sites"
    Then user lands on "Site List" module
    Then user clicks on "webVCoreData|organisation.sites.name" in the table
    Then verify pop-up "Site Details"
    Then verify there are no clinicians added
    Then verify pop-up "Site Details"
    Then verify "Display Name" with value "webVCoreData|organisation.sites.name" in the pop-up
    Then verify "Type" with value "webVCoreData|organisation.sites.type" in the pop-up
    Then verify "National Code" with value "webVCoreData|organisation.sites.nationCode" in the pop-up
    Then verify "Region" with value "webVCoreData|organisation.sites.regionCode" in the pop-up
    Then verify "Trust" with value "webVCoreData|organisation.trusts.name" in the pop-up
    Then verify "Address" with value "webVCoreData|organisation.sites.postcode" in the pop-up
    Then verify "Email" with value "webVCoreData|organisation.sites.email" in the pop-up
    Then verify "Mobile" with value "webVCoreData|organisation.sites.mobile" in the pop-up
    Then verify "Telephone" with value "webVCoreData|organisation.sites.telephone" in the pop-up
    Then verify "Status" with value "Active" in the pop-up
    Then verify there are "0" number of "Clinicians"
    Then user clicks on the action icon
    Then verify pop-up "Site Actions"
    Then user clicks on the action "Edit"
    Then user clicks on the option "Clinicians"
    Then verify pop-up "Clinicians List"
    Then user clicks on the pop-up plus icon
    Then verify pop-up "Personnel Search"
    Then user clicks on the action "Display Name"
    Then verify pop-up "Display Name Search"
    Then user inputs "Display Name" with value "webVCoreData|organisation.sites.clinician"
    Then user clicks on tick-checkbox
    Then verify pop-up "Search Results"
    Then user clicks on the action "webVCoreData|organisation.sites.clinician"
    Then user clicks on pop-up back icon
    Then verify pop-up "Edit Site Details"
    Then user clicks on tick-checkbox
    Then verify "Success" after completing the form
    Then verify "Your changes were saved successfully." after completing the form description
    Then user clicks on tick-checkbox
    Then verify pop-up "Site Details"
    Then verify there are "1" number of "Clinicians"
    Then user clicks on the action icon
    Then verify pop-up "Site Actions"
    Then user clicks on the action "Edit"
    Then user clicks on the option "Clinicians"
    Then verify pop-up "Clinicians List"
    Then user clicks on the x icon of "webVCoreData|organisation.sites.clinician" in the pop-up
    Then verify "Nothing Here" after completing the form
    Then user clicks on pop-up back icon
    Then verify pop-up "Edit Site Details"
    Then user clicks on tick-checkbox
    Then verify "Success" after completing the form
    Then verify "Your changes were saved successfully." after completing the form description
    Then user clicks on tick-checkbox
    Then verify pop-up "Site Details"
    Then verify there are "0" number of "Clinicians"

  @TST-1185 @haider @refactored @e2eSprint @sprint2
  Scenario: Clinical Record Patient Search
    Given user lands on "Systems" page
    Then user clicks on "Clinical Records" card in Systems page
    Then user lands on "Clinical Records" page
    Then verify pop-up "Patient Search"
    Then user clicks on the option "Patient Identifier"
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "0000000000"
    Then user clicks on tick-checkbox
    Then verify the gender is "Male" in the first row
    Then verify the first row "Name" is "QUINE, Yan Chad Mr"
    Then verify the first row "Born" is "09-Mar-1954 (68y)"
    Then verify the first row "NHS Number" is "000 000 0000"
    Then user clicks on "Patient Identifier"
    Then verify pop-up "Patient Search"
    Then user clicks on the option "Date of Birth & Surname"
    Then verify pop-up "Date Of Birth & Surname Search"
    Then user inputs "Surname" with value "ZEM"
    Then user clicks on the action "Date of Birth"
    Then verify pop-up "Select Date"
    Then user selects date "12" of "March" of "1921"
    Then user clicks on tick-checkbox
    Then verify pop-up "Date Of Birth & Surname Search"
    Then user clicks on tick-checkbox
    Then verify the gender is "Male" in the first row
    Then verify the first row "Name" is "ZEMAITIS, Mo Richard"
    Then verify the first row "Born" is "12-Mar-1921 (101y)"
    Then verify the first row "NHS Number" is "635 898 6414"
    Then user clicks on "Date of Birth & Surname"
    Then verify pop-up "Patient Search"
    Then user clicks on the option "Predefined Criteria"
    Then verify pop-up "Predefined Criteria Search"
    Then user clicks on the option "Inpatients By Location"
    Then verify pop-up "Select Location"
    Then user clicks on the option "webVCoreData|wardPatientSearch.ward"
    Then verify the gender is "Male" in the first row
    Then verify the first row "Name" is "webVCoreData|wardPatientSearch.name"
    Then verify the first row "Born" is "webVCoreData|wardPatientSearch.born"
    Then verify the first row "NHS Number" is "webVCoreData|wardPatientSearch.nhsNumber"
    Then verify the first row "Clinician" is "webVCoreData|wardPatientSearch.clinician"
    Then verify the first row "Speciality" is "webVCoreData|wardPatientSearch.specialty"
    Then verify the first row "Admitted" is "webVCoreData|wardPatientSearch.admitted"
    Then user clicks on the option "Patients By Location"
    Then verify pop-up "Patient Search"
    Then user clicks on the option "Predefined Criteria"
    Then verify pop-up "Predefined Criteria Search"
    Then user clicks on the action "Inpatients By Clinician"
    Then verify pop-up "Select Clinician"
    Then user clicks on the action " B WOBI"
    Then verify the gender is "Female" in the first row
    Then verify the first row "Name" is "FRITH, Will Liza Miss"
    Then verify the first row "Born" is "01-May-1926 (96y)"
    Then verify the first row "NHS Number" is "418 068 9995"
    Then verify the first row "Location" is "HOME"
    Then verify the first row "Speciality" is "Well Babies"
    Then verify the first row "Admitted" is "24-Aug-2021 02:00"
    Then user clicks on the option "Inpatients By Clinician"
    Then verify pop-up "Patient Search"
    Then user clicks on the option "Predefined Criteria"
    Then verify pop-up "Predefined Criteria Search"
    Then user clicks on the option "Inpatients By Clinical Indicator"
    Then verify pop-up "Select Site"
    Then user clicks on the option "Community Services"
    Then verify pop-up "Select Indicator Type"
    Then user clicks on the option "Global Indicators"
    Then verify pop-up "Select Global Indicator"
    Then user clicks on the option "webVCoreData|globalIndicator"
    Then verify pop-up "Select Indicator Value"
    Then user clicks on the option "No Value"
    Then verify the gender is "Male" in the first row
    Then verify the first row "Name" is "Steve Rodgers"
    Then verify the first row "NHS Number" is "987 654 3211"
    Then verify the first row "Location" is "Ward 28"
    Then verify the first row "Bed" is "Bay 2 / Bed 2"
    Then user clicks on navigation search icon
    Then verify pop-up "Patient Search"
    Then user clicks on the option "Predefined Criteria"
    Then verify pop-up "Predefined Criteria Search"
    Then user clicks on the option "Clinic Patients"
    Then verify pop-up "Select Clinic"
    Then verify "Nothing Here" is present in the pop-up table
    Then user clicks on pop-up back icon
    Then verify pop-up "Predefined Criteria Search"
    Then user clicks on the action "Emergency Department Patients"
    Then verify the gender is "Female" in the first row
    Then verify the first row "Name" is "ADAMS, Wilma Paul Mrs"
    Then verify the first row "Born" is "17-Jan-1948 (74y)"
    Then verify the first row "NHS Number" is "422 115 8808"
    Then verify the first row "Hospital Numbers" is "U09066555"
    Then verify the first row "Arrived" is "09-Aug-2021 21:19"
    Then verify the first row "Location" is "Not Known"
    Then verify the first row "Time In Department" is "5498h 37m"
    Then user clicks on navigation search icon
    Then verify pop-up "Patient Search"
    Then user clicks on the option "Predefined Criteria"
    Then verify pop-up "Predefined Criteria Search"
    Then user clicks on the action "Recently Viewed Patients"
#    Then verify the gender is "Female" in the first row
    Then verify the first row "Name" is "ZEMAITIS, Mo Richard Mrs"
    Then verify the first row "Born" is "12-Mar-1921 (101y)"
    Then verify the first row "NHS Number" is "410 395 9185"
    Then user clicks on navigation search icon
    Then verify pop-up "Patient Search"
    Then user clicks on the option "Advanced Search"
    Then verify pop-up "Advanced Search"
    Then user clicks on the action "Date"
    Then verify pop-up "Enter Value"
    Then user selects date "26" of "March" of "2022"
    Then user clicks on tick-checkbox
    Then verify pop-up "Advanced Search"
    Then user clicks on the action "Site"
    Then verify pop-up "Select Organisation"
    Then user clicks on the action "Goole and District Hospital"
    Then verify pop-up "Advanced Search"
    Then user clicks on the action "Type"
    Then verify pop-up "Enter Value"
    Then user clicks on the action "Inpatient"
    Then user clicks on tick-checkbox
    Then verify pop-up "Advanced Search"
    Then user clicks on the action "View"
    Then verify pop-up "Enter Value"
    Then user clicks on the action "Clinician"
    Then user clicks on tick-checkbox
    Then verify pop-up "Advanced Search"
    Then user clicks on the selection label "Clinician"
    Then verify pop-up "Select Clinician"
    Then user clicks on the action "Abdulhadi, M"
    Then user clicks on tick-checkbox
    Then verify the gender is "Male" in the first row
    Then verify the first row "Name" is "LI, Pam Roberta"
    Then verify the first row "Born" is "11-Jun-2003 (19y)"
    Then verify the first row "NHS Number" is "610 437 3003"
    Then verify the first row "Location" is "STROKE UNIT - SGH"
    Then verify the first row "Speciality" is "General Medicine"
    Then verify the first row "Admitted" is "30-Aug-2021 17:46"
    Then verify the first row "Discharged" is "Not Discharged"

  @TST-1181 @haider @e2eSprint @sprint2
  Scenario: Patient timeline filter
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "0000000000"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in profile menu "Records"
    Then user lands on "Patient Records" page
    Then verify the table is populated
    Then user clicks on "Filter"
    Then verify pop-up "Filter Patient Events"
    Then user clicks on the action "Select None"
    Then user clicks on tick-checkbox
    Then verify "Nothing Found" is present in the event list table
    Then user clicks on "Filter"
    Then verify pop-up "Filter Patient Events"
    Then user clicks on the action "Select All"
    Then user clicks on tick-checkbox
    Then verify "Nothing Found" is present in the event list table
    Then user clicks on navigation search icon
    Then verify pop-up "Timeline Filter"
    Then user clicks on the action "No Filters"
    Then wait for 10 seconds
    Then user enters "Blood Science" in "Filter Events Below" input
#    Then verify the table is populated
    Then verify "Nothing Found" is present in the event list table

  @TST-1198 @haider  @refactored @e2eSprint @sprint2
  Scenario: Clinical Record Settings
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on "Clinical Records" card in Systems page
    Then user lands on "Clinical Record Settings" page
    Then user lands on "Category List" module
    #Verifying Page Headers and Filters
    Then verify "Name" is displayed as the table header
    Then verify "Sub-Categories" is displayed as the table header
    Then verify "Event Types" is displayed as the table header
    Then verify "Status" is displayed as the table header
    Then verify "Name" is displayed as the filter parameters
    Then verify "Status" is displayed as the filter parameters
    Then verify "Jess Test 2" doesnt exist and if does revert it back
    #Edit Category List
    Then user saves the number of sub-categories for "jess test"
    Then user clicks on "jess test"
    Then verify pop-up "Category Details"
    Then verify "Category Name" with value "jess test" in the pop-up details
    Then verify "Active" with value "Yes" in the pop-up details
    Then verify the number of sub-categories
    Then user clicks on the action icon
    Then verify pop-up "Category Menu"
    Then user clicks on the action "Edit Category"
    Then verify pop-up "Edit Category"
    Then user inputs "Name" with value "Jess Test 2"
    Then user clicks on the toggle button "Active" to "false"
    Then user clicks on tick-checkbox
    Then verify pop-up "Edit Category Summary"
#    Then verify "Category Name" with value "Jess Test 2" in the pop-up
    Then verify "Active" with value "No" in the pop-up details
    Then user clicks on tick-checkbox
    Then verify "Success" after completing the form
    Then verify "The category was successfully edited" after completing the form description
    Then user clicks on tick-checkbox
    Then user clicks on "Jess Test 2" in the table
    Then verify pop-up "Category Details"
    Then verify "Category Name" with value "Jess Test 2" in the pop-up details
    Then verify "Active" with value "No" in the pop-up details
    Then verify the number of sub-categories
    Then user clicks on pop-up back icon
    #Verify Category not present in event list when category is not active
    Then user clicks on "Patient Quick Search" in menu bar section
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "webVCoreData|wardPatientSearch.nhsNumber1"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in profile menu "Records"
    Then verify the table is populated
    Then user clicks on the option "Showing All Events"
    Then verify pop-up "Filter Patient Events"
    Then user verify action "Test Edited" is available
    Then user verify action "jess test" is unavailable
    Then user clicks on tick-checkbox
    Then verify "Nothing Found" is present in the event list table
    #Resetting Jess Test 2 to back to jess test
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on "Clinical Records" card in Systems page
    Then user lands on "Clinical Record Settings" page
    Then user lands on "Category List" module
    Then user clicks on "Jess Test 2" in the table
    Then verify pop-up "Category Details"
    Then user clicks on the action icon
    Then verify pop-up "Category Menu"
    Then user clicks on the action "Edit Category"
    Then verify pop-up "Edit Category"
    Then user inputs "Name" with value "jess test"
    Then user clicks on the toggle button "Active" to "active"
    Then user clicks on tick-checkbox
    Then verify pop-up "Edit Category Summary"
#    Then verify "Category Name" with value "jess test" in the pop-up
#    Then verify "Active" with value "Yes" in the pop-up
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then verify "The category was successfully edited" after completing the form description
    Then user clicks on tick-checkbox
    #Verify Category is present in event list when category is active
    Then user clicks on "Patient Quick Search" in menu bar section
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "webVCoreData|wardPatientSearch.nhsNumber1"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in profile menu "Records"
    Then verify the table is populated
    Then user clicks on the option "Showing All Events"
    Then verify pop-up "Filter Patient Events"
    Then user verify action "Test Edited" is available
    Then user verify action "jess test" is available
    Then user clicks on tick-checkbox
    Then verify event list report "07:26" with value "Admission"
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on "Clinical Records" card in Systems page
    Then user lands on "Clinical Record Settings" page
    Then user lands on "Category List" module
    Then user clicks on "jess test" in the table
    #Creating a new sub-category
    Then verify pop-up "Category Details"
    Then user clicks on the action "Sub-Categories"
    Then verify pop-up "Sub-Categories"
    Then user clicks on the pop-up plus icon
    Then verify pop-up "Sub-Category Editor"
    Then user inputs "Sub-Category Name" with random value
#    Then user inputs "Sub-Category Name" with value "Testing"
    Then user clicks on the toggle button "Active" to "active"
    Then user clicks on the action "Event Types"
    Then verify pop-up "Select Event Types"
    Then user clicks on the action "Admission"
    Then user clicks on tick-checkbox
    Then verify pop-up "Sub-Category Editor"
    Then user clicks on tick-checkbox
    Then verify pop-up "Sub-Category Creation Summary"
#    Then verify "Sub-Category Name" with value "Testing" in the pop-up details
    Then verify "Sub-Category Name" with random value in the pop-up
    Then verify "Event Types" with value "Admission" in the pop-up details
    Then verify "Active" with value "Enabled" in the pop-up details
    Then user clicks on tick-checkbox
    Then verify "Success" after completing the form
    Then verify "The sub-category was successfully created" after completing the form description
    Then user clicks on tick-checkbox
    Then verify the number of new sub-categories
    Then user clicks on pop-up back icon
    #Verifying Filters
    Then user clicks on "All Names"
    Then verify pop-up "Filter Categories"
    Then user enters "jess test" in the text-area
    Then user clicks on tick-checkbox
    Then verify the first row "Name" is "jess test"
    Then user clicks on filter parameter "jess test"
    Then verify pop-up "Filter Categories"
    Then user clears the text-area
    Then user clicks on tick-checkbox
    Then verify "All Name" is displayed as the filter parameters
    Then verify the first row "Name" is "jess test"
    Then user clicks on "Parameters"
    Then verify pop-up "Table Parameters"
    Then user clicks on the action "Status"
    Then verify pop-up "Filter Categories"
    Then user clicks on the action "Active"
    Then user clicks on tick-checkbox
    Then verify pop-up "Table Parameters"
    Then user clicks on tick-checkbox
    Then verify "Active" is displayed as the filter parameters
    Then verify the first row "Status" is "Active"
    Then user clicks on filter parameter "Active"
    Then verify pop-up "Filter Categories"
    Then user clicks on the action "Inactive"
    Then user clicks on tick-checkbox
    Then verify "Active: Yes & No" is displayed as the filter parameters
    Then verify the first row "Status" is "Active"
    Then user clicks on filter parameter "Active: Yes & No"
    Then verify pop-up "Filter Categories"
    Then user clicks on the action "Active"
    Then user clicks on the action "Inactive"
    Then user clicks on tick-checkbox
    Then verify "Status" is displayed as the filter parameters
    Then user clicks on "Event Types"
    Then user lands on "Events List" module
    Then user clicks on Table first row "Handover.Activity"
    Then verify pop-up "Event Details"
    Then user clears the text-input "Event Type"
    Then user input "Event Type" with value "-1Testing"
    Then user clicks on the toggle button "Visible" to "false"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then reload page
    Then reload page
    Then verify "Event Type Name" is displayed as the table header
    Then verify "Class Name" is displayed as the table header
    Then verify "Visible" is displayed as the table header
    Then verify "All Names" is displayed as the filter parameters
    Then verify "All Status" is displayed as the filter parameters
    Then verify the first row "Visible" is "Hidden"
    Then user clicks on Table first row "Hidden"
    Then verify pop-up "Event Details"
    Then verify "Class Name" with input value "Handover.Activity" in the pop-up
    Then user clicks on the toggle button "Visible"
    Then user clicks on tick-checkbox
    Then verify "Success" after completing the form
    Then verify "The event was successfully edited" after completing the form description
    Then user clicks on tick-checkbox
    Then reload page
    Then verify the first row "Visible" is "Visible"
    Then user clicks on Table first row "Handover.Activity"
    Then verify pop-up "Event Details"
    Then verify "Class Name" with input value "Handover.Activity" in the pop-up
    Then user clicks on the toggle button "Visible"
    Then user clicks on tick-checkbox
    Then verify "Success" after completing the form
    Then verify "The event was successfully edited" after completing the form description
    Then user clicks on tick-checkbox
    Then reload page
    Then verify the first row "Visible" is "Hidden"
    Then user clicks on "All Names"
    Then verify pop-up "Filter Events"
    Then user enters "Admission" in the text-area
    Then user clicks on tick-checkbox
    Then verify the first row "Event Type Name" is "Admission"
    Then user clicks on filter parameter "Admission"
    Then verify pop-up "Filter Events"
    Then user clears the text-area
    Then user clicks on tick-checkbox
    Then verify "All Names" is displayed as the filter parameters
    Then verify the first row "Event Type Name" is "-1Testing"
    Then user clicks on "Status"
    Then verify pop-up "Filter Events"
    Then user clicks on the action "Visible"
    Then user clicks on tick-checkbox
    Then verify "Visible" is displayed as the filter parameters
    Then verify the first row "Status" is "Visible"
    Then user clicks on filter parameter "Visible"
    Then verify pop-up "Filter Events"
    Then user clicks on the action "Hidden"
    Then user clicks on tick-checkbox
    Then reload page
    Then verify "Visible: Yes & No" is displayed as the filter parameters
    Then verify the first row "Status" is "Hidden"
    Then user clicks on filter parameter "Visible: Yes & No"
    Then verify pop-up "Filter Events"
    Then user clicks on the action "Hidden"
    Then user clicks on the action "Visible"
    Then user clicks on tick-checkbox
    Then verify "Status" is displayed as the filter parameters

#  @TST-1183 @haider @resetProfile @e2eSprint @sprint2
#  Scenario: User Profile
#    Given user lands on "Systems" page
#    Then check if role "WebV Test" exists and if not then create it
#    Then check if the current user has the role of "WebV Test" and if not then change it
#    Then check if the current user has the role of "WebV Admin" and if not then change it
#    Then user clicks on "Systems" in menu bar section
#    Then user clicks on profile from main menu
#    #Verify Profile Detail
#    Then user lands on "Profile" page
#
#     #Revert Back to Last Site
#    Then user clicks on the action icon
#    Then user clicks on the sub-navigation in profile menu "Change Site"
#    Then verify pop-up "Select Site"
#    Then user clicks on the pop-up option "Goole and District Hospital"
#    Then verify pop-up "Submission Status"
#    Then verify "Success" after completing the form
#    Then user clicks on tick-checkbox
#    Then wait for popup loading
#    Then user verify profile detail "SITE" with value "Goole and District Hospital"
#
#    #Revert Back to Last Role
#    Then user clicks on the action icon
#    Then user clicks on the sub-navigation in profile menu "Change Profile"
#    Then verify pop-up "Select Profile"
#    Then user clicks on the pop-up option "WebV Admin"
#    Then verify pop-up "Submission Status"
#    Then verify "Success" after completing the form
#    Then user clicks on tick-checkbox
#    Then wait for popup loading
#    Then user verify profile detail "ROLE" with value "WebV Admin"
#
#    Then user verify Profile Name "loginData|credentials.name"
#    Then user verify profile detail "ROLE" with value "WebV Admin"
#    Then user verify profile detail "SITE" with value "Goole and District Hospital"
#    Then user verify profile status "Available"
#    #Verify Diff Options
#    Then user clicks on the action icon
#    Then user verify action "Announcements" is available
#    Then user verify action "Change Profile" is available
#    Then user verify action "Change Site" is available
#    Then user verify action "Security" is available
#    #Verify Change Password in Security
#    Then user clicks on the sub-navigation in profile menu "Security"
#    Then verify pop-up "Security"
#    Then user enters password
#    Then user clicks on tick-checkbox
#    Then verify pop-up "Select Security Options"
#    Then user clicks on the option "Change Password"
#    Then verify pop-up "Set Password"
#    Then user clicks on back icon
#    Then user clicks on back icon
#    #Chnage Site
#    Then user clicks on the action icon
#    Then user clicks on the sub-navigation in profile menu "Change Site"
#    Then verify pop-up "Select Site"
#    Then user clicks on the pop-up option "Diana Princess of Wales Hospital"
#    Then verify pop-up "Submission Status"
#    Then verify "Success" after completing the form
#    Then user clicks on tick-checkbox
#    Then wait for popup loading
#    Then user verify profile detail "SITE" with value "Diana Princess of Wales Hospital"
#    #Chnage Role
#    Then user clicks on the action icon
#    Then user clicks on the sub-navigation in profile menu "Change Profile"
#    Then verify pop-up "Select Profile"
#    Then user clicks on the pop-up option "WebV Test"
#    Then verify pop-up "Submission Status"
#    Then verify "Success" after completing the form
#    Then user clicks on tick-checkbox
#    Then wait for popup loading
#    Then user verify profile detail "ROLE" with value "WebV Test"


  @TST-1179 @haider @Patient_facts_Jobs_Handover_Card_Missing @e2eSprint @sprint2
  Scenario: Patient Summary Screen
    Given user lands on "Systems" page
    Then user clicks on the option "Clinical Records"
    Then user lands on "Clinical Records" page
    Then verify pop-up "Patient Search"
    Then user clicks on the option "Patient Identifier"
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "webVCoreData|wardPatientSearch.nhsNumber1"
    Then user clicks on tick-checkbox
    #Searched Patient Verifications
    Then user lands on "Patient List" module
    Then verify the first row Patient Gender is "webVCoreData|wardPatientSearch.gender"
    Then verify the first row patient name "webVCoreData|wardPatientSearch.name"
    Then verify the first row patient age, dob "webVCoreData|wardPatientSearch.born"
    Then verify the first row patient NHS number "webVCoreData|wardPatientSearch.nhsNumber"
    Then user clicks patient record "webVCoreData|wardPatientSearch.nhsNumber"
    Then user lands on "Patient Summary" page
    #Patient Information Verification
    Then user verify patient detail "SURNAME" with value "webVCoreData|wardPatientSearch.surname"
    Then user verify patient detail "FORENAME(S)" with value "webVCoreData|wardPatientSearch.forename"
    Then user verify patient detail "GENDER" with value "webVCoreData|wardPatientSearch.gender"
    Then user verify patient detail "BORN" with value "webVCoreData|wardPatientSearch.born"
    Then user verify patient detail "NHS NUMBER" with value "webVCoreData|wardPatientSearch.nhsNumber"
    Then user verify patient detail "HOSPITAL NUMBER" with value "webVCoreData|wardPatientSearch.hospitalNumber"
#    Then user verify "contact details" "ADDRESS" with value "Not Known"
    Then user verify "contact details" "EMAIL" with value "webVCoreData|wardPatientSearch.email"
    Then user verify "contact details" "MOBILE" with value "webVCoreData|wardPatientSearch.mobileNumber"
#    Then user verify "contact details" "TELEPHONE" with value "Not Known"
    Then user verify "next of kin / carer details" "NAME" with value "Not Known"
    Then user verify "next of kin / carer details" "RELATIONSHIP" with value "Not Known"
    Then user verify "next of kin / carer details" "ADDRESS" with value "Not Known"
    Then user verify "next of kin / carer details" "TELEPHONE" with value "Not Known"
    Then user verify "other information" "ETHNICITY" with value "Not Known"
    Then user verify "other information" "RELIGION" with value "Not Known"
    #Admission Information Verification
    Then user verify admission information detail "SOURCE" with value "webVCoreData|wardPatientSearch.source"
    Then user verify admission information detail "ADMITTING CLINICIAN" with value "webVCoreData|wardPatientSearch.admittingClinician"
    Then user verify admission information detail "ADMITTING SPECIALTY" with value "webVCoreData|wardPatientSearch.admittingSpecialty"
    Then user verify detail "ADMISSION DATE & TIME" exists "false"
    Then user verify detail "CLINICIAN" exists "false"
    Then user verify detail "SPECIALTY" exists "false"
    Then user verify detail "SITE" exists "false"
    Then user verify detail "WARD / UNIT" exists "false"
    Then user verify detail "SINCE" exists "false"
#    Then user verify admission information detail "ADMISSION DATE & TIME" with value "Not Known"
#    Then user verify admission information detail "CLINICIAN" with value "Not Known"
#    Then user verify admission information detail "SPECIALTY" with value "Not Known"
#    Then user verify admission information detail "SITE" with value "Not Known"
#    Then user verify admission information detail "WARD / UNIT" with value "Not Known"
#    Then user verify admission information detail "SINCE" with value "Not Known"
    #General Practitioner Information Verification
    Then user verify "General Practitioner Information" detail "GENERAL PRACTITIONER" with value "webVCoreData|wardPatientSearch.generalPractitioner"
    Then user verify "General Practitioner Information" detail "PRACTICE" with value "webVCoreData|wardPatientSearch.generalPractitionerPractice"
    Then user verify "General Practitioner Information" detail "ADDRESS" with value "webVCoreData|wardPatientSearch.generalPractitionerAddress"
    Then user verify "General Practitioner Information" detail "ADDRESS" with value "webVCoreData|wardPatientSearch.generalPractitionerAddress2"
    Then user verify "General Practitioner Information" detail "TELEPHONE" with value "webVCoreData|wardPatientSearch.generalPractitionerTelephone"
    #Patient Information On Black Header Verification
    Then user verify Black header shows up with patient gender color "webVCoreData|wardPatientSearch.gender"
    Then user verify Black header shows up with patient name "webVCoreData|wardPatientSearch.name"
    Then user verify Black header shows up with patient DOB "webVCoreData|wardPatientSearch.born"
    Then user verify Black header shows up with patient gender "webVCoreData|wardPatientSearch.gender"
    Then user verify Black header shows up with patient NHS Number "webVCoreData|wardPatientSearch.nhsNumber"
    #Reports Acknowledgement Verification
    Then user verify "Reports Acknowledgement" List Size should not greater then "5" and in "asc" order

  @TST-1184 @safi @patientMerge @e2eSprint @sprint2
  Scenario: Patient Merge
    Given user lands on "Systems" page
    Then user clicks on "Utilities" in menu bar section
    Then user clicks on "Patient Merge" in Select Utility popup
    Then user clicks on magnifying glass on the left patient card
    Then user selects "Search Unconfirmed Patients"
    Then user enters patient name in the search bar
    Then user selects first patient in searched rows
    Then user verify Patient information, Admission information, GP information, Medication Information by navigating through them
    Then user clicks on the tick-checkbox
    Then user verify the patient information in the left hand card
    Then user clicks on "Patient Quick Search" in menu bar section
    Then user enters Patient Identifier NHS in search bar
    Then user clicks on the tick-checkbox
    Then user clicks "Continue" to navigate to Patient Summary page
    Then user clicks on "Systems" in menu bar section
    Then user clicks on "Clinical Records" card in Systems page
    Then user clicks on "Predefined Criteria" in Clinical Records Patient search popup
    Then user clicks on "Recently Viewed Patients" in Predefined criteria search popup
    Then user clicks on magnifying glass on the patient list
    Then user clicks on "Patient Identifier" in Patient search popup
    Then user enters Patient Identifier NHS in search bar
    Then user clicks on tick-checkbox
    Then user verify the patient record is present in recently viewed patients
    Then user clicks on "Utilities" in menu bar section
    Then user clicks on "Patient Merge" in Select Utility popup
    Then user clicks on magnifying glass on the left patient card
    Then user selects "Search Patients"
    Then user clicks on "Predefined Criteria" in Patient search popup
    Then user clicks on "Recently Viewed Patients" in Predefined criteria search popup
    Then user enters patient name in the search bar
    Then user selects first patient in searched rows
    Then user clicks on tick-checkbox
    Then user clicks on magnifying glass on the right patient card
    Then user selects "Search Patients"
    Then user clicks on "Patient Identifier" in Patient search popup
    Then user enters Patient Identifier NHS in search bar
    Then user clicks on tick-checkbox
    Then user clicks "Continue" to navigate to Patient Summary page
    Then user clicks the merge direction "Right into Left" to change it on middle card
    Then user clicks on "Electronically Sign Declaration" at the bottom of the middle card
    Then user clicks on tick-checkbox
    #Then user clicks on tick-checkbox on popup
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user clicks on magnifying glass on the left patient card
    Then user selects "Search Patients"
    Then user clicks on "Predefined Criteria" in Patient search popup
    Then user clicks on "Recently Viewed Patients" in Predefined criteria search popup
    Then user enters patient name in the search bar
    Then user verify whether patient exists in the search or not

  @TST-1248 @safi @personnel @e2eSprint @sprint2 #GP option not displayed
  Scenario: Personnel - Cannot filter by type when searching the personnel list by national code
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user clicks on "Personnel" card in Settings section
    Then user clicks on National code in personnel search
    Then user enters National code in search bar
    Then user clicks on tick-checkbox
    Then user clicks on filter Parameter
    Then user clicks on "Type" to select option
    Then user selects "General Practitioner" option
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user clicks on filter Parameter
    Then user clicks on "Type" to select option
    Then user selects "Consultant" option
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user clicks on magnifying glass on the patient list
    Then user clicks on "Display Name" in Personnel search popUp
    Then user enters Display name in Display search popUp
    Then user clicks on tick-checkbox
    Then user clicks on magnifying glass on the patient list
    Then user clicks on National code in personnel search
    Then user enters National code in search bar
    Then user clicks on tick-checkbox
    Then user clicks on filter Parameter
    Then user clicks on "Type" to select option
    Then user selects "General Practitioner" option
    Then user verify "General Practitioner" option in list

  @TST-1192 @safi @eventReport @e2eSprint @sprint2 #printing functionality is exempted from it
  Scenario: Action menu available for each event report
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then user enters Patient Identifier NHS in search bar
    Then user clicks on tick-checkbox
    Then user clicks "Continue" to navigate to Patient Summary page
    Then user clicks on patient menu in top right corner of the page
    Then user selects "Records" option from the dropdown
    Then user click on the result "Microbiology" within the event list
    Then user clicks on action menu on Event Report bar
    Then user selects "audit" option from Action popup
    Then user verify "Viewed" in Audit Data popUp

  @TST-1239 @safi @location @e2eSprint @sprint2
  Scenario: Integrate User Search Into Locations Config For Manager Property
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user clicks on "Organisations" card in Settings section
    Then user lands on "Organisation Settings" page
    Then user clicks on "Locations" radio bar
    Then user lands on "Location List" module
    Then user clicks on "Parameters" filter
    Then verify pop-up "Filter Parameters"
    Then user clicks on the action "Organisations"
    Then verify pop-up "Select Organisations"
    Then user clicks on the action "webVCoreData|organisation.locations.site"
  #  Then user enters "Name" , "Postcode" and selects "Status" type from filters popup
    Then user clicks on tick-checkbox
    Then user clicks on the action "Status"
    Then verify pop-up "Select Status"
    Then user clicks on the action "Active"
    Then user clicks on tick-checkbox
    Then user clicks on the action "Name"
    Then verify pop-up "Select Name"
    Then user clicks on the action "Acute Assessment Unit B"
    Then user clicks on tick-checkbox
    Then user clicks on the action "Postcode"
    Then verify pop-up "Select Postcode"
    Then user clicks on the action "DN15 7BH"
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user selects location from the filtered results
    Then user clicks on action menu on Location details popup
    Then user clicks on "Edit" in Location Actions
    Then user selects "Manager" from Edit Location popup
    Then user selects "Display Name" from User search option and enter value
    Then user clicks on tick-checkbox
    Then user selects Manager from the filtered results
    Then user clicks on tick-checkbox

  @TST-1188 @safi @account @e2eSprint @sprint2
  Scenario: Accounts Settings
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user clicks on "Accounts" card in Settings section
    Then user lands on "Account Settings" page
    Then user clicks on magnifying glass on Users list
    Then user selects "Display Name" from User search option and enter value
    Then user clicks on tick-checkbox
    Then user clicks on magnifying glass on Users list
    Then user selects "Username" from User search option and enter value in "username" input
    Then user clicks on tick-checkbox
    Then user clicks on "Applications" radio bar
    Then user lands on "Applications List" module
    Then user selects first Application in the list
    Then verify pop-up "Application Details"
    Then user clicks on the action icon
    Then user clicks on the action "Edit"
    Then user clicks on the action "Active"
    Then user clicks on the action "Active"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then user clicks on tick-checkbox
    Then verify pop-up "Application Details"

  @TST-1187 @safi @personnelSettings @e2eSprint @sprint2
  Scenario: Personnel Settings
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user clicks on "Personnel" card in Settings section
    Then user selects "Display Name" from User search option and enter value
    Then user clicks on tick-checkbox
    Then user clicks on filter Parameter
    Then user clicks on "Type" to select option
    Then user selects "Consultant" and "Nurse" option
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user clicks on filter Parameter
    Then user clicks on "National Code" to select option
    Then user selects three national code options
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user clicks on filter Parameter
    Then user clicks on "Type" to select option
    Then user clicks on "Clear" button at the bottom of popup
    Then user clicks on tick-checkbox
    Then user clicks on "National Code" to select option
    Then user selects three national code options
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user clicks on plus icon on top right corner of the page
    Then verify pop-up "Create Personnel"
    Then user clicks on "Type" to select option
    Then user selects "Consultant" option in Types popup
    Then user clicks on "Display Name" to enter
    Then user clicks on "Employment" to select option
    Then user selects "Locum" option in Employment popup
    Then user enters "National Code"
    Then user clicks on tick-checkbox
    Then verify pop-up "Personnel Details Summary"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then user clicks on tick-checkbox
    Then user clicks on magnifying glass on the Personnel list
    Then verify pop-up "Personnel Search"
    Then user selects "Display Name" from User search option and enter value
    Then verify pop-up "Display Name Search"
    Then user clicks on tick-checkbox
    Then user clicks on filter Parameter
    Then user clicks on "National Code" to select option
    Then verify pop-up "Select National Code"
    Then user selects National code from the list "patientData|patient1.nationalCode"
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user selects first Personnel in the list
    Then verify pop-up "Personnel Details"
    Then user clicks on the action icon
    Then verify pop-up "Personnel Actions"
    Then user clicks on the action "Edit"
    Then verify pop-up "Edit Personnel Details"
    Then user clicks on the action "References"
    Then verify pop-up "References"
    Then user clicks on the pop-up plus icon
    Then verify pop-up "Create Reference"
    Then user clicks on the action "System"
    Then verify pop-up "Select System"
    Then user clicks on the action "Apex"
    Then user clicks on the "Code" and enter value
    Then user clicks on tick-checkbox
    Then verify pop-up "Reference Summary"
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox

  @TST-1182 @safi @navigateSystemTabs @e2eSprint @sprint2
  Scenario: Navigation through the systems tabs
    Given user lands on "Systems" page
    Then user clicks on "Clinical Handover" card in Systems page
    Then user lands on "Clinical Handover" page
    Then user clicks on "Systems" in menu bar section
    Then user clicks on "Clinical Records" card in Systems page
    Then verify pop-up "Patient Search"
    Then user clicks on "Patient Identifier" in Clinical Records Patient search popup
    Then user enters Patient Identifier NHS in search bar
    Then user clicks on tick-checkbox
    Then user clicks on "Settings" in menu bar section
    Then user clicks on the "Systems" card in Settings section
    Then user lands on "Systems Settings" page
    Then user clicks on "Clinical Records" card in Systems page
    Then user lands on "Clinical Record Settings" page
    Then user clicks on "Systems" in menu bar section
    Then user clicks on "Clinics" card in Systems page
    Then user lands on "Clinics" page
    Then user clicks on "Systems" in menu bar section
    Then user clicks on "Infection Control" card in Systems page
    Then user lands on "Infection Control" page
    Then user clicks on "Systems" in menu bar section
    Then user clicks on "Reports" card in Systems page
    Then user clicks on cross icon
    Then user clicks on "Systems" in menu bar section
    Then user clicks on "Requests" card in Systems page
    Then user lands on "Requests" page
    Then user clicks on "Systems" in menu bar section
    Then user clicks on "Worklists" card in Systems page
    Then user lands on "Worklists" page

  @TST-1190 @safi @quickSearchRecords @e2eSprint @sprint2
  Scenario: View patient event list
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then user enters Patient Identifier NHS in search bar
    Then user clicks on tick-checkbox
    Then user clicks "Continue" to navigate to Patient Summary page
    Then user clicks on patient menu in top right corner of the page
    Then user selects "Records" option from the dropdown
    Then user click on the result "Microbiology" within the event list
    Then user clicks on action menu on Event Report bar
    Then verify pop-up "Actions"
    Then user verify action "Audit" is available
    Then user verify action "Clinical Notes" is available
    Then user verify action "hide" is available
    Then user verify action "print" is available

  @TST-1267 @safi @advisories @e2eSprint @sprint2
  Scenario: Advisories
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then user enters Patient Identifier NHS in search bar
    Then user clicks on tick-checkbox
    Then user clicks "Continue" to navigate to Patient Summary page
    Then user lands on "Patient Summary" page
    Then user clicks on patient menu in top right corner of the page
    Then user selects "Advisories" option from dropdown
    Then user clicks on "Parameters" filter
    Then verify pop-up "Filter Parameters"
    Then user clicks on the action "Status"
    Then verify pop-up "Select Status"
    Then user clicks on "Clear" option
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user selects first Advisory in the list
    Then user clicks on the action icon
    Then verify pop-up "Advisory Actions"
    Then user clicks on "Deactivate" option in Advisory Action popUp

  @TST-1180 @safi @patientSummary @e2eSprint @sprint2
  Scenario: Quick Search
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then user enters Patient Identifier NHS in search bar
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
