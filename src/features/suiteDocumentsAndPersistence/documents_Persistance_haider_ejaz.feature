@v3Documents @v3DocumentsHaiderEjaz @e2e
Feature: To check the V3 Documents

  @TST-637 @haiderejaz @e2eSprint @sprint3
  Scenario: V3 Documents : Navigate to Document Settings & Verify Package List
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on the option "Documents"
    Then user lands on "Document Settings" page
    Then user clicks on Document Settings Menu Option "Documents"
    Then user lands on "Documents List" module
    Then filter item "All Names" with value "Doc_TST-637_Name"
    Then create a document with Code "Doc_TST-637_Code" Name "Doc_TST-637_Name" Desc "Doc_TST-637_Description" Type "Standard" Ammendable "active" Ability To Save Draft "active" Summarisable "active" Abandonable "active" if not exist
    Then publish "Doc_TST-637_Name" if it is not published
    Then user clicks on Document Settings Menu Option "Packages"
    Then user lands on "Package List" module
    Then filter item "All Names" with value "TST-637 pack"
    Then create a Package with Code "TST-637" Name "TST-637 pack" Desc "Desc TST-637" and Origin "Documents" if not exist
    Then User Associates Document "Doc_TST-637_Name" to Package "TST-637 pack"
    Then publish "TST-637 pack" if it is not published
    Then clear filtered item "TST-637 pack"
    Then user verify detail "Table Parameters" exists "true"
    Then user verify detail "All Names" exists "true"
    Then user verify detail "All Codes" exists "true"
    Then user verify detail "All Categories" exists "true"
    Then user verify detail "All Specialties" exists "true"
    Then user verify detail "All Statuses" exists "true"
    Then user verify table header "Name" exists "true"
    Then user verify table header "Code" exists "true"
    Then user verify table header "Category" exists "true"
    Then user verify table header "Specialty" exists "true"
    Then user verify table header "Status" exists "true"
    Then user verify table header "Updated" exists "true"
    Then user verify table header with icon "Document" exists "true"
    Then user clicks on breadcrumb "All Names" filter
    Then user enters "TST-637 pack" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on breadcrumb "All Codes" filter
    Then user enters "TST-637" in the text-area
    Then user clicks on tick-checkbox
    Then verify column "Name" contains "TST-637 pack" value
    Then verify column "Code" contains "TST-637" value
    Then user clicks on Table first row "TST-637 pack"
    Then verify pop-up "Package Details"
    Then user verify detail "Status" with value "Published"
    Then user verify detail "Status" with value "Published"
    Then user verify detail "Updated On" exists "true"
    Then user verify detail "Updated BY" with value "K Kualitatem"
    Then user verify detail "Code" with value "TST-637"
    Then user verify detail "Name" with value "TST-637 pack"
    Then user verify detail "Revision" with value "1"
    Then user verify detail "Updated On" exists "true"
    Then user verify detail "Category" exists "true"
    Then user verify detail "Specialty" exists "true"
    Then user verify detail "Email Address(s)" exists "true"
    Then user verify detail "Linked Documents" exists "true"
    Then user verify item "Linked Documents" counter with value "1"

  @TST-639 @haiderejaz @e2eSprint @sprint6
  Scenario: V3 Documents : Edit a Package and Verify Package Details
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on "Documents" icon
    Then user lands on "Document Settings" page
    Then user lands on "Package List" module
    Then create a Package with Code "TST-639 code" Name "TST-639 Name" Desc "TST-639 Desc" and Origin "Documents" if not exist
    Then filter item "All Names" with value "TST-639 Name"
    Then user clicks on Table first row "TST-639 Name"
    Then wait for popup loading
    Then verify pop-up "Package Details"
    Then user verify detail "Status" with value "Unpublished"
    Then user verify detail "Updated On" exists "true"
    Then user verify detail "Updated BY" with value "K Kualitatem"
    Then user verify detail "Code" with value "TST-639 code"
    Then user verify detail "Name" with value "TST-639 Name"
    Then user verify detail "Description" with value "TST-639 Desc" contains
    Then user verify detail "Revision" exists "true"
#    Then user verify detail "Revision" with value "1"
    Then user verify detail "Category" exists "true"
    Then user verify detail "Specialty" exists "true"
    Then user verify detail "Origin" with value "Documents"
    Then user verify detail "Email Address(s)" exists "true"
    Then user verify detail "Linked Documents" exists "true"
    Then user verify item "Linked Documents" counter with value "0"
    Then user clicks on the action icon of "Package Details"
    Then user verify detail "Discard" exists "true"
    Then user verify detail "Edit" exists "true"
    Then user verify detail "Publish" exists "true"
    Then user clicks on "Edit" on popup
    Then verify pop-up "Edit Package"
    Then user verify detail "Code" exists "true"
    Then user verify detail "Name" exists "true"
    Then user verify detail "Description" exists "true"
    Then user verify detail "Category" exists "true"
    Then user verify detail "Specialty" exists "true"
    Then user verify detail "Origin" exists "true"
    Then user verify detail "Email Address(s)" exists "true"
    Then user clicks on "Description" on popup
    Then user clears the text-area
    Then user enters "TST-639 Desc Edited" in the text-area
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Submission Successful" after completing the form
    Then verify popup option "Link documents to package" is visible
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Package Details"
    Then user verify detail "Status" with value "Unpublished"
    Then user verify detail "Updated On" exists "true"
    Then user verify detail "Updated BY" with value "K Kualitatem"
    Then user verify detail "Code" with value "TST-639 code"
    Then user verify detail "Name" with value "TST-639 Name"
    Then user verify detail "Description" with value "TST-639 Desc Edited"
    Then user verify detail "Revision" exists "true"
#    Then user verify detail "Revision" with value "2"
    Then user verify detail "Category" exists "true"
    Then user verify detail "Specialty" exists "true"
    Then user verify detail "Origin" with value "Documents"
    Then user verify detail "Email Address(s)" exists "true"
    Then user verify detail "Linked Documents" exists "true"
    Then user verify item "Linked Documents" counter with value "0"

  @TST-640 @haiderejaz @e2eSprint @sprint5
  Scenario: V3 Documents : Revise a Package - Verify Package Details after revising a Package
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on "Documents" icon
    Then user lands on "Document Settings" page
    Then user lands on "Package List" module
    Then create a Package with Code "TST-640 code" Name "TST-640 Name" Desc "TST-640 Desc" and Origin "Documents" if not exist
    Then publish "TST-640 Name" if it is not published
    Then filter item "All Names" with value "TST-640 Name"
    Then user clicks on Table first row "TST-640 Name"
    Then wait for popup loading
    Then verify pop-up "Package Details"
    Then user verify detail "Status" with value "Published"
    Then user verify detail "Updated On" exists "true"
    Then user verify detail "Updated BY" with value "K Kualitatem"
    Then user verify detail "Code" with value "TST-640 code"
    Then user verify detail "Name" with value "TST-640 Name"
    Then user verify detail "Description" with value "TST-640 Desc"
    Then user verify detail "Revision" exists "true"
#    Then user verify detail "Revision" with value "1"
    Then user verify detail "Category" exists "true"
    Then user verify detail "Specialty" exists "true"
    Then user verify detail "Origin" with value "Documents"
    Then user verify detail "Email Address(s)" exists "true"
    Then user verify detail "Linked Documents" exists "true"
    Then user verify item "Linked Documents" counter with value "0"

    Then user clicks on the action icon of "Package Details"
    Then user verify detail "Revise" exists "true"
    Then user verify detail "Suspend" exists "true"
    Then user clicks on "Revise" on popup

    Then verify pop-up "Edit Package"
    Then user verify detail "Code" exists "true"
    Then user verify detail "Name" exists "true"
    Then user verify detail "Description" exists "true"
    Then user verify detail "Category" exists "true"
    Then user verify detail "Specialty" exists "true"
    Then user verify detail "Origin" exists "true"
    Then user verify detail "Email Address(s)" exists "true"

    Then user clicks on "Description" on popup
    Then user clears the text-area
    Then user enters "TST-640 Desc Edited" in the text-area
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Submission Successful" after completing the form
    Then verify popup option "Link documents to package" is visible
    Then user clicks on tick-checkbox

    Then wait for popup loading

    Then verify pop-up "Package Details"
    Then user verify detail "Status" with value "Unpublished"
    Then user verify detail "Updated On" exists "true"
    Then user verify detail "Updated BY" with value "K Kualitatem"
    Then user verify detail "Code" with value "TST-640 code"
    Then user verify detail "Name" with value "TST-640 Name"
    Then user verify detail "Description" with value "TST-640 Desc Edited"
    Then user verify detail "Revision" exists "true"
#    Then user verify detail "Revision" with value "2"
    Then user verify detail "Category" exists "true"
    Then user verify detail "Specialty" exists "true"
    Then user verify detail "Origin" with value "Documents"
    Then user verify detail "Email Address(s)" exists "true"
    Then user verify detail "Linked Documents" exists "true"
    Then user verify item "Linked Documents" counter with value "0"

    Then user clicks on the action icon of "Package Details"
    Then user verify detail "Discard" exists "true"
    Then user verify detail "Edit" exists "true"
    Then user verify detail "Publish" exists "true"
    Then user clicks on "Discard" on popup
    Then wait for popup loading
    Then verify pop-up "Discard Package"
    Then verify "Before Discarding" after completing the form
    Then verify "Please confirm that you wish to discard the selected package." after completing the form Description
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Submission Status"
    Then verify "Discard Successful" after completing the form
    Then user clicks on tick-checkbox
    Then user clicks on pop-up back icon

    Then user clicks on Table first row "TST-640 Name"
    Then wait for popup loading
    Then verify pop-up "Package Details"
    Then user verify detail "Status" with value "Published"
    Then user verify detail "Updated On" exists "true"
    Then user verify detail "Updated BY" with value "K Kualitatem"
    Then user verify detail "Code" with value "TST-640 code"
    Then user verify detail "Name" with value "TST-640 Name"
    Then user verify detail "Description" with value "TST-640 Desc"
    Then user verify detail "Revision" exists "true"
    Then user verify detail "Revision" with value "1"
    Then user verify detail "Category" exists "true"
    Then user verify detail "Specialty" exists "true"
    Then user verify detail "Origin" with value "Documents"
    Then user verify detail "Email Address(s)" exists "true"
    Then user verify detail "Linked Documents" exists "true"
    Then user verify item "Linked Documents" counter with value "0"

  @TST-641 @haiderejaz @e2eSprint @sprint5
  Scenario: V3 Documents : Create New Document by entering Document Info
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on "Documents" icon
    Then user lands on "Document Settings" page
    Then user clicks on Document Settings Menu Option "Documents"
    Then user lands on "Documents List" module
    Then change all "TST-641 DocName" named Document status to "Discard" from "Unpublished"
    Then user clicks on the plus icon
    #Create Document
    Then verify pop-up "Create Document"
    Then user input "Code" with value "TST-641"
    Then user input "Name" with value "TST-641 DocName"
    Then user clicks on "Description" on popup
    Then verify pop-up "Enter Description"
    Then user enters "Desc TST-641" in the text-area
    Then user clicks on tick-checkbox
    Then user change "Amendable" toggle "true"
    Then user change "Ability To Save Draft" toggle "true"
    Then user change "Summarisable" toggle "true"
    Then user change "Abandonable" toggle "true"
    Then user clicks on tick-checkbox
    #Verify Document
    Then user verify detail "Code" with value "TST-641"
    Then user verify detail "Name" with value "TST-641 DocName"
    Then user verify detail "Description" with value "Desc TST-641"
    Then user verify detail "Type" with value "Standard"
    Then user verify detail "Amendable" with value "Yes"
    Then user verify detail "Ability To Save Draft" with value "Yes"
    Then user verify detail "Summarisable" with value "Yes"
    Then user verify detail "Abandonable" with value "Yes"
    Then user clicks on tick-checkbox
    #Verify Submission
    Then verify pop-up "Submission Status"
    Then verify "Submission Successful" after completing the form
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Document Details"
    Then user verify detail "Status" with value "Unpublished"
    Then user verify detail "Updated On" exists "true"
    Then user verify detail "Updated BY" with value "K Kualitatem"
    Then user verify detail "Code" with value "TST-641"
    Then user verify detail "Name" with value "TST-641 DocName"
    Then user verify detail "Description" with value "Desc TST-641"
    Then user verify detail "Revision" exists "true"
#    Then user verify detail "Revision" with value "2"
    Then user verify detail "Type" with value "Standard"
    Then user verify detail "Amendable" with value "Yes"
    Then user verify detail "Ability To Save Draft" with value "Yes"
    Then user verify detail "Summarisable" with value "Yes"
    Then user verify detail "Abandonable" with value "Yes"
    Then user verify detail "Linked Packages" exists "true"
    Then user clicks on pop-up back icon
    Then wait for loading in "Documents List" section
#    Then filter item "All Names" with value "TST-641 DocName"
    Then verify value "TST-641 DocName" is present in the table

  @TST-642 @haiderejaz @e2eSprint @sprint5
  Scenario: V3 Documents : Select a Document and Create Document Sections
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on the option "Documents"
    Then user lands on "Document Settings" page
    Then user clicks on Document Settings Menu Option "Documents"
    Then user lands on "Documents List" module
    Then change all "TST-642 DocName" named Document status to "Discard" from "Unpublished"
    Then user clicks on the plus icon
    #Create Document
    Then verify pop-up "Create Document"
    Then user input "Code" with value "TST-642"
    Then user input "Name" with value "TST-642 Name"
    Then user clicks on "Description" on popup
    Then verify pop-up "Enter Description"
    Then user enters "Desc TST-642" in the text-area
    Then user clicks on tick-checkbox
    Then user change "Amendable" toggle "true"
    Then user change "Ability To Save Draft" toggle "true"
    Then user change "Summarisable" toggle "true"
    Then user change "Abandonable" toggle "true"
    Then user clicks on tick-checkbox
    #Verify Document
    Then user verify detail "Code" with value "TST-642"
    Then user verify detail "Name" with value "TST-642 Name"
    Then user verify detail "Description" with value "Desc TST-642"
    Then user verify detail "Type" with value "Standard"
    Then user verify detail "Amendable" with value "Yes"
    Then user verify detail "Ability To Save Draft" with value "Yes"
    Then user verify detail "Summarisable" with value "Yes"
    Then user verify detail "Abandonable" with value "Yes"
    Then user clicks on tick-checkbox
    #Verify Submission
    Then verify pop-up "Submission Status"
    Then verify "Submission Successful" after completing the form
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then user clicks on the action icon
    Then user clicks on "Configure" on popup
    Then verify "Document Sections" module exists "true"
    Then verify "Document Properties" module exists "true"
    Then user clicks on the action icon of "Document Sections"
    Then user clicks on "Create" on popup
    Then verify pop-up "Create Section"
    #Create Section
    Then user input "Code" with value "TST-642 Sec"
    Then user input "Name" with value "TST-642 SecName"
    Then user clicks on "Description" on popup
    Then verify pop-up "Enter Description"
    Then user enters "Sec Desc TST-642" in the text-area
    Then user clicks on tick-checkbox
    Then user change "Visible" toggle "true"
    Then user clicks on tick-checkbox
    Then user verify detail "Code" with value "TST-642 Sec"
    Then user verify detail "Name" with value "TST-642 SecName"
    Then user verify detail "Description" with value "Sec Desc TST-642"
    Then user verify detail "Visible" with value "Yes"
    Then user clicks on tick-checkbox
    Then verify "Success" after completing the form
    Then user clicks on "Create Another Section" on popup
    Then user input "Code" with value "TST-642 Sec2"
    Then user input "Name" with value "TST-642 SecName2"
    Then user clicks on "Description" on popup
    Then verify pop-up "Enter Description"
    Then user enters "Sec Desc2 TST-642" in the text-area
    Then user clicks on tick-checkbox
    Then user change "Visible" toggle "true"
    Then user clicks on tick-checkbox
    Then user verify detail "Code" with value "TST-642 Sec2"
    Then user verify detail "Name" with value "TST-642 SecName2"
    Then user verify detail "Description" with value "Sec Desc2 TST-642"
    Then user verify detail "Visible" with value "Yes"
    Then user clicks on tick-checkbox
    Then verify "Success" after completing the form

    Then user clicks on tick-checkbox
    Then user verify detail "Code" with value "TST-642 Sec2"
    Then user verify detail "Name" with value "TST-642 SecName2"
    Then user verify detail "Description" with value "Sec Desc2 TST-642"
    Then user verify detail "Visible" with value "Yes"
    Then user clicks on pop-up back icon
    Then user verify "TST-642 SecName" Visibility Icon "true"
    Then user verify "TST-642 SecName2" Visibility Icon "true"

  @TST-643 @haiderejaz @e2eSprint @sprint4
  Scenario: V3 Documents : Edit / Revise an existing Document
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on "Documents" icon
    Then user lands on "Document Settings" page
    Then user clicks on Document Settings Menu Option "Documents"
    Then user lands on "Documents List" module
    Then filter item "All Names" with value "Doc_TST-643_Name"
    Then create a document with Code "Doc_TST-643_Code" Name "Doc_TST-643_Name" Desc "Doc_TST-643_Description" Type "Standard" Ammendable "active" Ability To Save Draft "active" Summarisable "active" Abandonable "active" if not exist
    Then publish "Doc_TST-643_Name" if it is not published
    Then user clicks on Table first row "Doc_TST-643_Name"
    Then verify pop-up "Document Details"
    Then user clicks on the action icon of "Document Details"
    Then verify pop-up "Document Menu"
    Then user verify detail "Revise" exists "true"
    Then user verify detail "Suspend" exists "true"
    Then user clicks on "Revise" on popup
    Then wait for popup loading
    Then verify pop-up "Document Menu"
    Then verify "Before Revising" after completing the form
    Then verify "Any existing packages connected to the document will not be updated automatically. After revising you must manually synchronise the package(s)." after completing the form Description
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Edit Document"
    Then user clears the text-input "Code"
    Then user inputs "Code" with value "Edited_TST-643_Code"
    Then user clears the text-input "Name"
    Then user inputs "Name" with value "Edited_TST-643_Name"
    Then user clicks on "Type" on popup
    Then user clicks on "System" on popup
    Then user clicks on "Description" on popup
    Then user clears the text-area
    Then user enters "Edited_TST-643_Desc" in the text-area
    Then user clicks on tick-checkbox
    Then user change "Amendable" toggle "false"
    Then user change "Ability To Save Draft" toggle "false"
    Then user change "Summarisable" toggle "false"
    Then user change "Abandonable" toggle "false"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify "Submission Successful" after completing the form
    Then verify pop-up "Submission Status"
    Then user verify detail "Create Another Document" exists "true"
    Then user verify detail "Configure Document" exists "true"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then user verify detail "Status" with value "Unpublished"
    Then verify "Updated On" with "current" date
    Then user verify detail "Updated BY" with value "K Kualitatem"
    Then user verify detail "Code" with value "Edited_TST-643_Code"
    Then user verify detail "Revision" exists "true"
    Then user verify detail "Name" with value "Edited_TST-643_Name"
    Then user verify detail "Description" with value "Edited_TST-643_Desc"
    Then user verify detail "Type" with value "System"
    Then user verify detail "Amendable" with value "No"
    Then user verify detail "Ability To Save Draft" with value "No"
    Then user verify detail "Summarisable" with value "No"
    Then user verify detail "Abandonable" with value "No"
    Then user verify item "Linked Packages" counter with value "0"
    Then user clicks on the action icon of "Document Details"
    Then user clicks on "Discard" on popup
    Then verify pop-up "Discard Document"
    Then verify "Before Discarding" after completing the form
    Then verify "Please confirm that you wish to discard the selected document." after completing the form Description
    Then user verify detail "Code" with value "Edited_TST-643_Code"
    Then user verify detail "Name" with value "Edited_TST-643_Name"
    Then user verify detail "Description" with value "Edited_TST-643_Desc"
    Then user clicks on tick-checkbox
    Then user clicks on Table first row "Doc_TST-643_Name"
    Then wait for popup loading
    Then user verify detail "Status" with value "Published"
    Then user verify detail "Updated On" exists "true"
    Then user verify detail "Updated BY" with value "K Kualitatem"
    Then user verify detail "Code" with value "Doc_TST-643_Code"
    Then user verify detail "Revision" exists "true"
    Then user verify detail "Name" with value "Doc_TST-643_Name"
    Then user verify detail "Description" with value "Doc_TST-643_Description"
    Then user verify detail "Type" with value "Standard"
    Then user verify detail "Amendable" with value "Yes"
    Then user verify detail "Ability To Save Draft" with value "Yes"
    Then user verify detail "Summarisable" with value "Yes"
    Then user verify detail "Abandonable" with value "Yes"
    Then user verify item "Linked Packages" counter with value "0"

  @TST-650 @haiderejaz @e2eSprint @sprint4
  Scenario: V3 Documents : Unpublished Packages - Verify Publish option
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on "Documents" icon
    Then user lands on "Document Settings" page
    Then user lands on "Package List" module

     #Create Package
    Then user clicks on the plus icon
    Then verify pop-up "Create Package"
    Then user input "Code" with value "code650"
    Then user input "Name" with value "Name TST-650"
    Then user clicks on "Description" on popup
    Then verify pop-up "Enter Description"
    Then user enters "Description TST-650" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on the action "Category"
    Then verify pop-up "Select Category"
    Then user clicks on "Infection Control" on popup
    Then user clicks on tick-checkbox
    Then user clicks on the action "Specialty"
    Then verify pop-up "Select Specialty"
    Then user inputs "Infectious Diseases" in the filter option
    Then user clicks on "Infectious Diseases" on popup
    Then user clicks on tick-checkbox
    Then user clicks on the action "Origin"
    Then verify pop-up "Select Origin"
    Then user clicks on "Documents" on popup
    Then user clicks on tick-checkbox
    #Verify Package Summary
    Then verify pop-up "Package Summary"
    Then user verify detail "Code" with value "code650"
    Then user verify detail "Name" with value "Name TST-650"
    Then user verify detail "Description" with value "Description TST-650"
    Then user verify detail "Category" with value "Infection Control"
    Then user verify detail "Specialty" with value "Infectious Diseases"
    Then user verify detail "Origin" with value "Documents"
    Then user clicks on tick-checkbox
    Then verify "Submission Successful" after completing the form
    Then user clicks on tick-checkbox
    Then user clicks on the action icon of "Package Details"
    Then user verify detail "Discard" exists "true"
    Then user verify detail "Edit" exists "true"
    Then user verify detail "Publish" exists "true"
    Then user clicks on "Publish" on popup
    Then verify pop-up "Publish Package"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify "Publish Successful" after completing the form
    Then user clicks on tick-checkbox
    Then user verify detail "Status" with value "Published"

  @TST-654 @haiderejaz @e2eSprint @sprint5
  Scenario: V3 Documents : Images - Publish Images
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on "Documents" icon
    Then user lands on "Document Settings" page
    Then user clicks on Document Settings Menu Option "Images"
    Then user lands on "Images List" module
    Then user clicks on the plus icon
    Then user inputs "Code" with value "Image_TST-654_Code"
    Then user inputs "Name" with value "Image_TST-654_Name"
    Then user clicks on the action "Description"
    Then verify pop-up "Enter Description"
    Then user enters "Image_TST-654_Description" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on the action "Anatomical Site"
    Then verify pop-up "Select Site"
    Then user clicks on the action "Eyelid"
    Then user clicks on the action "Orientation"
    Then verify pop-up "Select Orientation"
    Then user clicks on the action "Portrait"
    Then user uploads file "uploadImage.jpg"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Image Summary"
    Then verify "Code" with value "Image_TST-654_Code" in the pop-up details
    Then verify "Name" with value "Image_TST-654_Name" in the pop-up details
    Then verify image is shown in pop-up details and saved as dataurl
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Submission Successful" after completing the form
    Then verify "Image succesfully created" after completing the form description
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify "Code" with value "Image_TST-654_Code" in the pop-up details
    Then verify "Name" with value "Image_TST-654_Name" in the pop-up details
    Then verify "Description" with value "Image_TST-654_Description" in the pop-up details
    Then verify "Status" with value "Unpublished" in the pop-up details
    Then verify "Revision" with value "1" in the pop-up details
    Then verify "Anatomical Site" with value "Eyelid" in the pop-up details
    Then verify "Orientation" with value "Portrait" in the pop-up details
    Then verify "Created By" with value "K Kualitatem" in the pop-up details
    Then user clicks on the action icon of "Image Details"
    Then user clicks on "Publish" on popup
    Then wait for popup loading
    Then verify pop-up "Publish Image"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Publish Successful" after completing the form
    Then verify "Image succesfully published" after completing the form description
    Then user clicks on tick-checkbox
    Then verify "Status" with value "Published" in the pop-up details

  @TST-655 @haiderejaz @Orientation_Information_is_missing_in_image_summary @e2eSprint @sprint4
  Scenario: V3 Documents : Revise Images - Update Image Details and Verify the Image list
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on "Documents" icon
    Then user lands on "Document Settings" page
    Then user clicks on Document Settings Menu Option "Images"
    Then user lands on "Images List" module
    Then filter item "All Names" with value "Image_TST-655_Name"
    Then create an image with code "Image_TST-655_Code" name "Image_TST-655_Name" desc "Image_TST-655_Description" anatomical site "Eyelid" orientation "Portrait" image "uploadImage.jpg" if not exist
    Then publish "Image_TST-655_Name" if it is not published

    Then user verify table header "Name" exists "true"
    Then user verify table header "Code" exists "true"
    Then user verify table header "Anatomical Site" exists "true"
    Then user verify table header "Status" exists "true"
    Then user verify table header "Updated" exists "true"

    Then verify value "Image_TST-655_Code" is present in the table
    Then verify value "Image_TST-655_Name" is present in the table
    Then verify value "Eyelid" is present in the table
    Then verify value "Published" is present in the table
    Then user verify table header "Updated" exists "true"

    Then user clicks on Table first row "Image_TST-655_Name"
    Then user clicks on the action icon of "Image Details"
    Then verify pop-up "Image Menu"
    Then user clicks on "Revise" on popup

    Then user clears the text-input "Code"
    Then user inputs "Code" with value "Edited_TST-655_Code"
    Then user clears the text-input "Name"
    Then user inputs "Name" with value "Edited_TST-655_Name"
    Then user clicks on "Description" on popup
    Then user clears the text-area
    Then user enters "Edited_TST-655_Desc" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on "Anatomical Site" on popup
    Then user clicks on "Left Ankle" on popup
    Then user clicks on "Orientation" on popup
    Then user clicks on "Landscape" on popup

    Then user verify detail "Change File" exists "true"
    Then user uploads file "uploadEditedImage.png"
    Then user clicks on tick-checkbox

    Then verify pop-up "Image Summary"
    Then user verify detail "Code" with value "Edited_TST-655_Code"
    Then user verify detail "Name" with value "Edited_TST-655_Name"
    Then user verify detail "Description" with value "Edited_TST-655_Desc"
    Then user verify detail "Anatomical Site" with value "Left Ankle"
#    Then user verify detail "Orientation" with value "Landscape"
    Then user verify detail "Image" exists "true"

    Then user clicks on tick-checkbox
    Then verify "Submission Successful" after completing the form
    Then verify pop-up "Submission Status"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then user verify detail "Created On" exists "true"
    Then user verify detail "Created By" with value "K Kualitatem"
    Then user verify detail "Code" with value "Edited_TST-655_Code"
    Then user verify detail "Name" with value "Edited_TST-655_Name"
    Then user verify detail "Description" with value "Edited_TST-655_Desc"
    Then user verify detail "STATUS" with value "Unpublished"
    Then user verify detail "Revision" exists "true"
    Then user verify detail "Anatomical Site" with value "Left Ankle"
#    Then user verify detail "Orientation" with value "Landscape"
    Then user verify detail "Image" exists "true"

    Then user clicks on the action icon of "Image Details"
    Then verify pop-up "Image Menu"
    Then user clicks on "Edit" on popup

    Then user clears the text-input "Code"
    Then user inputs "Code" with value "Image_TST-655_Code"
    Then user inputs "Name" with value "Image_TST-655_Name"
    Then user clicks on "Description" on popup
    Then user clears the text-area
    Then user enters "Image_TST-655_Description" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on "Anatomical Site" on popup
    Then user clicks on "Eyelid" on popup
    Then user clicks on "Orientation" on popup
    Then user clicks on "Portrait" on popup

    Then user verify detail "Change File" exists "true"
    Then user uploads file "uploadImage.jpg"
    Then user clicks on tick-checkbox
    Then verify pop-up "Image Summary"
    Then user verify detail "Code" with value "Image_TST-655_Code"
    Then user verify detail "Name" with value "Image_TST-655_Name"
    Then user verify detail "Description" with value "Image_TST-655_Description"
    Then user verify detail "Anatomical Site" with value "Eyelid"
#    Then user verify detail "Orientation" with value "Portrait"
    Then user verify detail "Image" exists "true"

    Then user clicks on tick-checkbox
    Then verify "Submission Successful" after completing the form
    Then verify pop-up "Submission Status"
    Then user clicks on tick-checkbox
    Then user clicks on pop-up back icon
    Then publish "Image_TST-655_Name" if it is not published

  @TST-657 @haiderejaz @e2eSprint @sprint5
  Scenario: V3 Documents : Revise a Published Image Property
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on "Documents" icon
    Then user lands on "Document Settings" page
    Then user clicks on Document Settings Menu Option "Images"
    Then user lands on "Images List" module
    Then filter item "All Names" with value "Image_TST-657_Name"
    Then create an image with code "Image_TST-657_Code" name "Image_TST-657_Name" desc "Image_TST-657_Description" anatomical site "Eyelid" orientation "Portrait" image "uploadImage.jpg" if not exist
    Then publish "Image_TST-657_Name" if it is not published

    Then user clicks on Table first row "Image_TST-657_Name"
    Then user clicks on the action icon of "Image Details"
    Then verify pop-up "Image Menu"
    Then user clicks on "Revise" on popup

    Then user clears the text-input "Code"
    Then user inputs "Code" with value "Edited_TST-657_Code"
    Then user clears the text-input "Name"
    Then user inputs "Name" with value "Edited_TST-657_Name"
    Then user clicks on "Description" on popup
    Then user clears the text-area
    Then user enters "Edited_TST-657_Desc" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on "Anatomical Site" on popup
    Then user clicks on "Left Ankle" on popup
    Then user clicks on "Orientation" on popup
    Then user clicks on "Landscape" on popup

    Then user verify detail "Change File" exists "true"
    Then user uploads file "uploadEditedImage.png"
    Then user clicks on tick-checkbox

    Then verify pop-up "Image Summary"
    Then user verify detail "Code" with value "Edited_TST-657_Code"
    Then user verify detail "Name" with value "Edited_TST-657_Name"
    Then user verify detail "Description" with value "Edited_TST-657_Desc"
    Then user verify detail "Anatomical Site" with value "Left Ankle"
#    Then user verify detail "Orientation" with value "Landscape"
    Then user verify detail "Image" exists "true"

    Then user clicks on tick-checkbox
    Then verify "Submission Successful" after completing the form
    Then verify pop-up "Submission Status"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then user verify detail "Created On" exists "true"
    Then user verify detail "Created By" with value "K Kualitatem"
    Then user verify detail "Code" with value "Edited_TST-657_Code"
    Then user verify detail "Name" with value "Edited_TST-657_Name"
    Then user verify detail "Description" with value "Edited_TST-657_Desc"
    Then user verify detail "STATUS" with value "Unpublished"
    Then user verify detail "Revision" exists "true"
    Then user verify detail "Anatomical Site" with value "Left Ankle"
#    Then user verify detail "Orientation" with value "Landscape"
    Then user verify detail "Image" exists "true"

    Then user clicks on the action icon of "Image Details"
    Then verify pop-up "Image Menu"
    Then user clicks on "Edit" on popup

    Then user clears the text-input "Code"
    Then user inputs "Code" with value "Image_TST-657_Code"
    Then user inputs "Name" with value "Image_TST-657_Name"
    Then user clicks on "Description" on popup
    Then user clears the text-area
    Then user enters "Image_TST-657_Description" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on "Anatomical Site" on popup
    Then user clicks on "Eyelid" on popup
    Then user clicks on "Orientation" on popup
    Then user clicks on "Portrait" on popup

    Then user verify detail "Change File" exists "true"
    Then user uploads file "uploadImage.jpg"
    Then user clicks on tick-checkbox
    Then verify pop-up "Image Summary"
    Then user verify detail "Code" with value "Image_TST-657_Code"
    Then user verify detail "Name" with value "Image_TST-657_Name"
    Then user verify detail "Description" with value "Image_TST-657_Description"
    Then user verify detail "Anatomical Site" with value "Eyelid"
#    Then user verify detail "Orientation" with value "Portrait"
    Then user verify detail "Image" exists "true"

    Then user clicks on tick-checkbox
    Then verify "Submission Successful" after completing the form
    Then verify pop-up "Submission Status"
    Then user clicks on tick-checkbox
    Then user clicks on pop-up back icon
    Then publish "Image_TST-657_Name" if it is not published

  @TST-659 @haiderejaz @e2eSprint @sprint4
  Scenario: V3 Documents : Publish an Image Property after adding an Image
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on "Documents" icon
    Then user lands on "Document Settings" page
    Then user clicks on Document Settings Menu Option "Images"
    Then user lands on "Images List" module
    Then filter item "All Names" with value "Image_TST-659_Name"
    Then create an image with code "Image_TST-659_Code" name "Image_TST-659_Name" desc "Image_TST-659_Description" anatomical site "Eyelid" orientation "Portrait" image "uploadImage.jpg" if not exist
    Then publish "Image_TST-659_Name" if it is not published
    Then clear filtered item "Image_TST-659_Name"

    Then user clicks on Document Settings Menu Option "Properties"
    Then user lands on "Properties List" module
    Then change all "Selection TST-673" named properties status to "Suspend" from "Published"

    #Create Property
    Then user clicks on the plus icon
    Then verify pop-up "Create Property"
    Then user input "Code" with value "ImageCode659"
    Then user clicks on the action "Name"
    Then verify pop-up "Enter Name"
    Then user enters "Image TST-659" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on "Description" on popup
    Then verify pop-up "Enter Description"
    Then user enters "Description TST-659" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on "Type" on popup
    Then verify pop-up "Select Type"
    Then user clicks on "Image" on popup
    Then user clicks on "Add Image" on popup
    Then verify pop-up "Image Search"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then user inputs "Image_TST-659_Name" in the filter option
    Then user clicks on "Image_TST-659_Name" on popup
    Then wait for popup loading
    Then verify pop-up "Selected Image Summary"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Create Property"
    Then user clicks on tick-checkbox
    Then verify pop-up "Property Summary"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Submission Status"
    Then verify "Submission Successful" after completing the form
    Then user clicks on tick-checkbox
    Then wait for popup loading

    #Verify Property
    Then verify pop-up "Property Details"
    Then user verify detail "STATUS" with value "Unpublished"
    Then user verify detail "Updated On" exists "true"
    Then user verify detail "Updated By" with value "K Kualitatem"
    #Property Information
    Then user verify detail "Code" with value "ImageCode659"
    Then user verify detail "Name" with value "Image TST-659"
    Then user verify detail "Description" with value "Description TST-659"
    Then user verify detail "Persistence" with value "Never"
    Then user verify detail "Searchable" with value "Yes"
    #Property Interaction
    Then user verify detail "Type" with value "Image"
    Then user verify detail "Linked Documents" exists "true"
    Then user verify detail "Image" exists "true"
    Then user verify "Image" thumbnail exist "true"

    Then user clicks on the action icon of "Property Details"
    Then user clicks on "Publish" on popup
    Then wait for popup loading
    Then verify "Publish Property" after completing the form
    Then verify pop-up "Property Menu"
    Then user clicks on tick-checkbox
    Then verify "Success" after completing the form
    Then verify pop-up "Property Menu"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then user verify detail "STATUS" with value "Published"

  @TST-660 @haiderejaz @e2eSprint @sprint5
  Scenario: V3 Documents : Create a New Property of Type Signature
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on the option "Documents"
    Then user lands on "Document Settings" page
    Then user clicks on Document Settings Menu Option "Properties"
    Then user lands on "Properties List" module
    Then user clicks on the plus icon
    #Create Property
    Then verify pop-up "Create Property"
    Then user input "Code" with value "code660"
    Then user clicks on the action "Name"
    Then verify pop-up "Enter Name"
    Then user enters "Name TST-660" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on "Description" on popup
    Then verify pop-up "Enter Description"
    Then user enters "Description TST-660" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on "Type" on popup
    Then verify pop-up "Select Type"
    Then user clicks on "Signature" on popup
    Then user verify detail "Persistence" exists "false"
    Then user clicks on tick-checkbox
    #Verify Property Before Save
    Then verify pop-up "Property Summary"
    Then user verify detail "Code" with value "code660"
    Then user verify detail "Name" with value "Name TST-660"
    Then user verify detail "Description" with value "Description TST-660"
    Then user verify detail "Type" with value "Signature"
    Then user verify detail "Persistence" with value "Never"
    Then user verify detail "Searchable" with value "Yes"
    Then user clicks on tick-checkbox
    Then verify "Submission Successful" after completing the form
    Then verify popup option "Create Another Property" is visible
    Then verify popup option "View Property" is visible

  @TST-661 @haiderejaz  @e2eSprint @sprint3
  Scenario: V3 Documents : Create  a New Property of Type Selection (Single) / Selection (Multiple) & Add values
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on the option "Documents"
    Then user lands on "Document Settings" page
    Then user clicks on Document Settings Menu Option "Properties"
    Then user lands on "Properties List" module
    Then user clicks on the plus icon
    #Create Property
    Then verify pop-up "Create Property"
    Then user input "Code" with value "code661"
    Then user clicks on the action "Name"
    Then verify pop-up "Enter Name"
    Then user enters "Name TST-661" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on "Description" on popup
    Then verify pop-up "Enter Description"
    Then user enters "Description TST-661" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on "Type" on popup
    Then verify pop-up "Select Type"
    Then user clicks on "Selection" on popup
    Then user clicks on tick-checkbox
    #Verify Property Before Save
    Then verify pop-up "Property Summary"
    Then user verify detail "Code" with value "code661"
    Then user verify detail "Name" with value "Name TST-661"
    Then user verify detail "Description" with value "Description TST-661"
    Then user verify detail "Type" with value "Selection"
    Then user verify detail "Persistence" with value "Never"
    Then user verify detail "Searchable" with value "Yes"
    Then user clicks on tick-checkbox
    Then verify "Submission Successful" after completing the form
    Then verify popup option "Create Another Property" is visible
    Then verify popup option "Configure Values" is visible
    Then verify popup option "View Property" is visible
    Then user clicks on "Configure Values" on popup
    Then verify "No Values" after completing the form
    Then verify "No data values have been added." after completing the form Description
    Then user clicks on the action icon
    Then user clicks on "Add Value" on popup
    #Add Value in Property
    Then user clicks on the action "Display"
    Then verify pop-up "Add Name Value"
    Then user enters "Name TST-661" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on "Value" on popup
    Then verify pop-up "Add Value"
    Then user enters "Value TST-661" in the text-area
    Then user clicks on tick-checkbox
    Then user input "ICD10 Code" with value "TST-661"
    Then user input "Read Code" with value "TST@661"
    Then user input "Snomed Code" with value "snomedcode"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Submission Successful" after completing the form
    Then user clicks on tick-checkbox
    Then user clicks on "Values" on popup
    Then verify pop-up "Property Values"
    Then user clicks on "Name TST-661" on popup
    #Verify Properties Values
    Then verify pop-up "Property Values"
    Then wait for "5" seconds
    Then user verify detail "Display" with value "Name TST-661"
    Then user verify detail "Value" with value "Value TST-661"
    Then user verify detail "ICD10 Code" with value "TST-661"
    Then user verify detail "Read Code" with value "TST@661"
    Then user verify detail "Snomed Code" with value "snomedcode"
    Then user verify detail "Enabled" with value "Yes"

  @TST-662 @haiderejaz @e2eSprint @sprint6
  Scenario: V3 Documents : Document Configuration - Create Document sections
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on the option "Documents"
    Then user lands on "Document Settings" page
    Then user clicks on Document Settings Menu Option "Documents"
    Then user lands on "Documents List" module
    Then change all "TST-662 DocName" named Document status to "Discard" from "Unpublished"
    Then user clicks on the plus icon
    #Create Document
    Then verify pop-up "Create Document"
    Then user input "Code" with value "TST-662"
    Then user input "Name" with value "TST-662 Name"
    Then user clicks on "Description" on popup
    Then verify pop-up "Enter Description"
    Then user enters "Desc TST-662" in the text-area
    Then user clicks on tick-checkbox
    Then user change "Amendable" toggle "true"
    Then user change "Ability To Save Draft" toggle "true"
    Then user change "Summarisable" toggle "true"
    Then user change "Abandonable" toggle "true"
    Then user clicks on tick-checkbox
    #Verify Document
    Then user verify detail "Code" with value "TST-662"
    Then user verify detail "Name" with value "TST-662 Name"
    Then user verify detail "Description" with value "Desc TST-662"
    Then user verify detail "Type" with value "Standard"
    Then user verify detail "Amendable" with value "Yes"
    Then user verify detail "Ability To Save Draft" with value "Yes"
    Then user verify detail "Summarisable" with value "Yes"
    Then user verify detail "Abandonable" with value "Yes"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Submission Status"
    Then verify "Submission Successful" after completing the form
    Then user clicks on tick-checkbox
    Then wait for the page to load

     #Verify Document
    Then verify pop-up "Document Details"
    Then user verify detail "STATUS" with value "Unpublished"
    Then user verify detail "Updated On" exists "true"
    Then user verify detail "Updated By" with value "K Kualitatem"
    Then user verify detail "Code" with value "TST-662"
    Then user verify detail "Name" with value "TST-662 Name"
    Then user verify detail "Description" with value "Desc TST-662"
    Then user verify detail "Type" with value "Standard"
    Then user verify detail "Amendable" with value "Yes"
    Then user verify detail "Ability To Save Draft" with value "Yes"
    Then user verify detail "Summarisable" with value "Yes"
    Then user verify detail "Abandonable" with value "Yes"

  @TST-664 @haiderejaz @e2eSprint @sprint5
  Scenario: V3 Documents : Revise a Published Document
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on the option "Documents"
    Then user lands on "Document Settings" page
    Then user clicks on Document Settings Menu Option "Documents"
    Then user lands on "Documents List" module
    Then filter item "All Names" with value "Doc_TST-664_Name"
    Then create a document with Code "Doc_TST-664_Code" Name "Doc_TST-664_Name" Desc "Doc_TST-664_Description" Type "Standard" Ammendable "active" Ability To Save Draft "active" Summarisable "active" Abandonable "active" if not exist
    Then publish "Doc_TST-664_Name" if it is not published
    Then wait for popup loading
    Then user clicks on Table first row "Doc_TST-664_Name"
    Then wait for popup loading
    Then verify pop-up "Document Details"
    Then user clicks on the action icon of "Document Details"
    Then verify pop-up "Document Menu"
    Then user verify detail "Revise" exists "true"
    Then user verify detail "Suspend" exists "true"
    Then user clicks on "Revise" on popup
    Then wait for popup loading
    Then verify pop-up "Document Menu"
    Then verify "Before Revising" after completing the form
    Then verify "Any existing packages connected to the document will not be updated automatically. After revising you must manually synchronise the package(s)." after completing the form Description
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Edit Document"
    Then user clears the text-input "Code"
    Then user inputs "Code" with value "Edited_TST-664_Code"
    Then user clears the text-input "Name"
    Then user inputs "Name" with value "Edited_TST-664_Name"
    Then user clicks on "Type" on popup
    Then user clicks on "System" on popup
    Then user clicks on "Description" on popup
    Then user clears the text-area
    Then user enters "Edited_TST-664_Desc" in the text-area
    Then user clicks on tick-checkbox
    Then user change "Amendable" toggle "false"
    Then user change "Ability To Save Draft" toggle "false"
    Then user change "Summarisable" toggle "false"
    Then user change "Abandonable" toggle "false"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify "Submission Successful" after completing the form
    Then verify pop-up "Submission Status"
    Then user verify detail "Create Another Document" exists "true"
    Then user verify detail "Configure Document" exists "true"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then user verify detail "Status" with value "Unpublished"
    Then verify "Updated On" with "current" date
    Then user verify detail "Updated BY" with value "K Kualitatem"
    Then user verify detail "Code" with value "Edited_TST-664_Code"
    Then user verify detail "Revision" exists "true"
    Then user verify detail "Name" with value "Edited_TST-664_Name"
    Then user verify detail "Description" with value "Edited_TST-664_Desc"
    Then user verify detail "Type" with value "System"
    Then user verify detail "Amendable" with value "No"
    Then user verify detail "Ability To Save Draft" with value "No"
    Then user verify detail "Summarisable" with value "No"
    Then user verify detail "Abandonable" with value "No"
    Then user verify item "Linked Packages" counter with value "0"
    Then user clicks on the action icon of "Document Details"
    Then wait for popup loading
    Then user clicks on "Discard" on popup
    Then verify pop-up "Discard Document"
    Then verify "Before Discarding" after completing the form
    Then verify "Please confirm that you wish to discard the selected document." after completing the form Description
    Then user verify detail "Code" with value "Edited_TST-664_Code"
    Then user verify detail "Name" with value "Edited_TST-664_Name"
    Then user verify detail "Description" with value "Edited_TST-664_Desc"
    Then user clicks on tick-checkbox
    Then user clicks on Table first row "Doc_TST-664_Name"
    Then wait for popup loading
    Then user verify detail "Status" with value "Published"
    Then user verify detail "Updated On" exists "true"
#    Then verify "Updated On" with "current" date
    Then user verify detail "Updated BY" with value "K Kualitatem"
    Then user verify detail "Code" with value "Doc_TST-664_Code"
    Then user verify detail "Revision" exists "true"
    Then user verify detail "Name" with value "Doc_TST-664_Name"
    Then user verify detail "Description" with value "Doc_TST-664_Description"
    Then user verify detail "Type" with value "Standard"
    Then user verify detail "Amendable" with value "Yes"
    Then user verify detail "Ability To Save Draft" with value "Yes"
    Then user verify detail "Summarisable" with value "Yes"
    Then user verify detail "Abandonable" with value "Yes"
    Then user verify item "Linked Packages" counter with value "0"

  @TST-665 @haiderejaz @e2eSprint @sprint5
  Scenario: V3 Documents : Document Configuration - Create Document sections
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on the option "Documents"
    Then user lands on "Document Settings" page
    Then user clicks on Document Settings Menu Option "Documents"
    Then user lands on "Documents List" module
    Then change all "TST-665 DocName" named Document status to "Discard" from "Unpublished"
    Then user clicks on the plus icon
    #Create Document
    Then verify pop-up "Create Document"
    Then user input "Code" with value "TST-665"
    Then user input "Name" with value "TST-665 Name"
    Then user clicks on "Description" on popup
    Then verify pop-up "Enter Description"
    Then user enters "Desc TST-665" in the text-area
    Then user clicks on tick-checkbox
    Then user change "Amendable" toggle "true"
    Then user change "Ability To Save Draft" toggle "true"
    Then user change "Summarisable" toggle "true"
    Then user change "Abandonable" toggle "true"
    Then user clicks on tick-checkbox
    #Verify Document
    Then user verify detail "Code" with value "TST-665"
    Then user verify detail "Name" with value "TST-665 Name"
    Then user verify detail "Description" with value "Desc TST-665"
    Then user verify detail "Type" with value "Standard"
    Then user verify detail "Amendable" with value "Yes"
    Then user verify detail "Ability To Save Draft" with value "Yes"
    Then user verify detail "Summarisable" with value "Yes"
    Then user verify detail "Abandonable" with value "Yes"
    Then user clicks on tick-checkbox
    #Verify Submission
    Then verify pop-up "Submission Status"
    Then verify "Submission Successful" after completing the form
    Then user clicks on tick-checkbox
    Then user clicks on the action icon
    Then wait for popup loading
    Then user clicks on "Configure" on popup
    Then verify "Document Sections" module exists "true"
    Then verify "Document Properties" module exists "true"
    Then user clicks on the action icon of "Document Sections"
    Then user clicks on "Create" on popup
    Then verify pop-up "Create Section"
    #Create Section
    Then user input "Code" with value "TST-665 Sec"
    Then user input "Name" with value "TST-665 SecName"
    Then user clicks on "Description" on popup
    Then verify pop-up "Enter Description"
    Then user enters "Sec Desc TST-665" in the text-area
    Then user clicks on tick-checkbox
    Then user change "Visible" toggle "true"
    Then user clicks on tick-checkbox
    Then user verify detail "Code" with value "TST-665 Sec"
    Then user verify detail "Name" with value "TST-665 SecName"
    Then user verify detail "Description" with value "Sec Desc TST-665"
    Then user verify detail "Visible" with value "Yes"
    Then user clicks on tick-checkbox
    Then verify "Success" after completing the form
    Then user clicks on "Create Another Section" on popup
    Then user input "Code" with value "TST-665 Sec2"
    Then user input "Name" with value "TST-665 SecName2"
    Then user clicks on "Description" on popup
    Then verify pop-up "Enter Description"
    Then user enters "Sec Desc2 TST-665" in the text-area
    Then user clicks on tick-checkbox
    Then user change "Visible" toggle "true"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then user verify detail "Code" with value "TST-665 Sec2"
    Then user verify detail "Name" with value "TST-665 SecName2"
    Then user verify detail "Description" with value "Sec Desc2 TST-665"
    Then user verify detail "Visible" with value "Yes"
    Then user clicks on tick-checkbox
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then user verify detail "Code" with value "TST-665 Sec2"
    Then user verify detail "Name" with value "TST-665 SecName2"
    Then user verify detail "Description" with value "Sec Desc2 TST-665"
    Then user verify detail "Visible" with value "Yes"
    Then user clicks on pop-up back icon
    Then user verify "TST-665 SecName" Visibility Icon "true"
    Then user verify "TST-665 SecName2" Visibility Icon "true"

  @TST-666 @haiderejaz @e2eSprint @sprint6
  Scenario: V3 Documents : Edit a Document Section & Verify the Section Details
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on the option "Documents"
    Then user lands on "Document Settings" page
    Then user clicks on Document Settings Menu Option "Documents"
    Then user lands on "Documents List" module
    Then change all "TST-666 DocName" named Document status to "Discard" from "Unpublished"
    Then user clicks on the plus icon
    #Create Document
    Then verify pop-up "Create Document"
    Then user input "Code" with value "TST-666"
    Then user input "Name" with value "TST-666 Name"
    Then user clicks on "Description" on popup
    Then verify pop-up "Enter Description"
    Then user enters "Desc TST-666" in the text-area
    Then user clicks on tick-checkbox
    Then user change "Amendable" toggle "true"
    Then user change "Ability To Save Draft" toggle "true"
    Then user change "Summarisable" toggle "true"
    Then user change "Abandonable" toggle "true"
    Then user clicks on tick-checkbox
    #Verify Document
    Then user verify detail "Code" with value "TST-666"
    Then user verify detail "Name" with value "TST-666 Name"
    Then user verify detail "Description" with value "Desc TST-666"
    Then user verify detail "Type" with value "Standard"
    Then user verify detail "Amendable" with value "Yes"
    Then user verify detail "Ability To Save Draft" with value "Yes"
    Then user verify detail "Summarisable" with value "Yes"
    Then user verify detail "Abandonable" with value "Yes"
    Then user clicks on tick-checkbox
    #Verify Submission
    Then verify pop-up "Submission Status"
    Then verify "Submission Successful" after completing the form
    Then user clicks on tick-checkbox
    Then user clicks on the action icon
    Then wait for popup loading
    Then user clicks on "Configure" on popup
    Then verify "Document Sections" module exists "true"
    Then verify "Document Properties" module exists "true"
    Then user clicks on the action icon of "Document Sections"
    Then user clicks on "Create" on popup
    Then verify pop-up "Create Section"
    #Create Section
    Then user input "Code" with value "TST-666 Sec"
    Then user input "Name" with value "TST-666 SecName"
    Then user clicks on "Description" on popup
    Then verify pop-up "Enter Description"
    Then user enters "Sec Desc TST-666" in the text-area
    Then user clicks on tick-checkbox
    Then user change "Visible" toggle "true"
    Then user clicks on tick-checkbox
    Then user verify detail "Code" with value "TST-666 Sec"
    Then user verify detail "Name" with value "TST-666 SecName"
    Then user verify detail "Description" with value "Sec Desc TST-666"
    Then user verify detail "Visible" with value "Yes"
    Then user clicks on tick-checkbox
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then user clicks on pop-up back icon
    Then user clicks on meatballs icon "TST-666 SecName"
    Then wait for popup loading
    Then user clicks on the action icon of "Section Details"
    Then user clicks on "Edit" on popup
    Then user clicks on "Description" on popup
    Then verify pop-up "Enter Description"
    Then user clears the text-area
    Then user enters "EditedDescription TST-666" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then user verify detail "STATUS" with value "Published"

  @TST-667 @haiderejaz @e2eSprint @sprint6
  Scenario: V3 Documents : Document  Config - Add existing properties to a Document Section
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on the option "Documents"
    Then user lands on "Document Settings" page
    Then user clicks on Document Settings Menu Option "Properties"
    Then user lands on "Properties List" module
    Then filter item "All Names" with value "TST-667_prop1"
    Then create a property with Code "code1_TST-667" Name "TST-667_prop1" Desc "Desc1 TST-667" and Type "Text-Input-Inline" if not exist
    Then publish "TST-667_prop1" if it is not published
    Then clear filtered item "TST-667_prop1"

    Then user clicks on Document Settings Menu Option "Documents"
    Then user lands on "Documents List" module
    Then change all "TST-667 DocName" named Document status to "Discard" from "Unpublished"
    Then user clicks on the plus icon
    #Create Document
    Then verify pop-up "Create Document"
    Then user input "Code" with value "TST-667"
    Then user input "Name" with value "TST-667 Name"
    Then user clicks on "Description" on popup
    Then verify pop-up "Enter Description"
    Then user enters "Desc TST-667" in the text-area
    Then user clicks on tick-checkbox
    Then user change "Amendable" toggle "true"
    Then user change "Ability To Save Draft" toggle "true"
    Then user change "Summarisable" toggle "true"
    Then user change "Abandonable" toggle "true"
    Then user clicks on tick-checkbox
    #Verify Document
    Then user verify detail "Code" with value "TST-667"
    Then user verify detail "Name" with value "TST-667 Name"
    Then user verify detail "Description" with value "Desc TST-667"
    Then user verify detail "Type" with value "Standard"
    Then user verify detail "Amendable" with value "Yes"
    Then user verify detail "Ability To Save Draft" with value "Yes"
    Then user verify detail "Summarisable" with value "Yes"
    Then user verify detail "Abandonable" with value "Yes"
    Then user clicks on tick-checkbox
    #Verify Submission
    Then verify pop-up "Submission Status"
    Then verify "Submission Successful" after completing the form
    Then user clicks on tick-checkbox
    Then user clicks on the action icon
    Then user clicks on "Configure" on popup
    Then verify "Document Sections" module exists "true"
    Then verify "Document Properties" module exists "true"
    Then user clicks on the action icon of "Document Sections"
    Then user clicks on "Create" on popup
    Then verify pop-up "Create Section"
    #Create Section
    Then user input "Code" with value "TST-667 Sec"
    Then user input "Name" with value "TST-667 SecName"
    Then user clicks on "Description" on popup
    Then verify pop-up "Enter Description"
    Then user enters "Sec Desc TST-667" in the text-area
    Then user clicks on tick-checkbox
    Then user change "Visible" toggle "true"
    Then user clicks on tick-checkbox
    Then user verify detail "Code" with value "TST-667 Sec"
    Then user verify detail "Name" with value "TST-667 SecName"
    Then user verify detail "Description" with value "Sec Desc TST-667"
    Then user verify detail "Visible" with value "Yes"
    Then user clicks on tick-checkbox
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then user clicks on pop-up back icon

    Then user clicks on the action icon of "Document Properties"
    Then verify pop-up "Property Menu"
    Then user clicks on "Add Property" on popup
    Then verify pop-up "Property Search"
    Then user clicks on "Use Existing Property" on popup
    Then verify pop-up "Existing Property Search"
    Then user clicks on tick-checkbox
    Then wait for 10 seconds
    Then user inputs "TST-667_prop1" in the filter option
    Then user clicks on "TST-667_prop1" on popup with respect to "Published"
    Then wait for "3" seconds
    Then user clicks on tick-checkbox
    Then user verify items order of "Document Properties" with values "TST-667_prop1Desc1 TST-667"
    Then user clicks on meatballs icon "TST-667_prop1"
    Then wait for popup loading
    Then verify "Success" after completing
    Then user clicks on tick-checkbox
    Then user clicks on meatballs icon "TST-667_prop1"
    Then wait for popup loading
    Then user verify detail "STATUS" with value "Published"
    Then user verify detail "Updated On" exists "true"
    Then user verify detail "Updated By" with value "K Kualitatem"
    #Property Information
    Then user verify detail "Code" with value "code1_TST-667"
    Then user verify detail "Name" with value "TST-667_prop1"
    Then user verify detail "Description" with value "Desc1 TST-667"
    Then user verify detail "Persistence" with value "Never"
    Then user verify detail "Searchable" with value "Yes"
    #Property Interaction
    Then user verify detail "Type" with value "Text-Input-Inline"
    Then user verify detail "Linked Documents" exists "true"
    #Property Logic
    Then user verify detail "Mandatory" with value "No"
    Then user verify detail "Visible" with value "Yes"
    Then user verify detail "Rules" exists "true"

  @TST-668 @haiderejaz @e2eSprint @sprint3
  Scenario: V3 Documents : Document Configuration - Edit a Document Property (Selection)
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on the option "Documents"
    Then user lands on "Document Settings" page
    Then user clicks on Document Settings Menu Option "Properties"
    Then user lands on "Properties List" module
    Then change all "Name TST-668" named properties status to "Suspend" from "Published"
 #Create Property
    Then user clicks on the plus icon
    Then verify pop-up "Create Property"
    Then user input "Code" with value "code668"
    Then user clicks on the action "Name"
    Then verify pop-up "Enter Name"
    Then user enters "Name TST-668" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on "Description" on popup
    Then verify pop-up "Enter Description"
    Then user enters "Description TST-668" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on "Type" on popup
    Then verify pop-up "Select Type"
    Then user clicks on "Selection" on popup
    Then user clicks on tick-checkbox
    Then verify pop-up "Property Summary"
    #Verify Property
    Then user verify detail "Code" with value "code668"
    Then user verify detail "Name" with value "Name TST-668"
    Then user verify detail "Description" with value "Description TST-668"
    Then user verify detail "Type" with value "Selection"
    Then user verify detail "Persistence" with value "Never"
    Then user verify detail "Searchable" with value "Yes"
    Then user clicks on tick-checkbox
    Then verify "Submission Successful" after completing the form
    Then user clicks on tick-checkbox
    Then verify pop-up "Property Details"
    Then wait for popup loading
    Then user verify detail "STATUS" with value "Unpublished"
    Then user verify detail "Updated On" exists "true"
    Then user verify detail "Updated By" with value "K Kualitatem"
    #Property Information
    Then user verify detail "Code" with value "code668"
    Then user verify detail "Name" with value "Name TST-668"
    Then user verify detail "Description" with value "Description TST-668"
    Then user verify detail "Persistence" with value "Never"
    Then user verify detail "Searchable" with value "Yes"
    #Property Interaction
    Then user verify detail "Type" with value "Selection"
    Then user verify detail "Linked Documents" exists "true"
    Then user verify detail "Values" exists "true"
    Then user clicks on "Values" on popup
    Then user clicks on the action icon
    Then user clicks on "Add Value" on popup
    #Add Value in Property
    Then user clicks on the action "Display"
    Then verify pop-up "Add Name Value"
    Then user enters "Name TST-668" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on "Value" on popup
    Then verify pop-up "Add Value"
    Then user enters "Value TST-668" in the text-area
    Then user clicks on tick-checkbox
    Then user input "ICD10 Code" with value "TST-668"
    Then user input "Read Code" with value "TST@668"
    Then user input "Snomed Code" with value "snomedcode"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Submission Successful" after completing the form
    Then user clicks on tick-checkbox
    Then user clicks on "Values" on popup
    Then verify pop-up "Property Values"
    Then user clicks on "Name TST-668" on popup
    #Verify Properties Values
    Then verify pop-up "Property Values"
    Then wait for "5" seconds
    Then user verify detail "Display" with value "Name TST-668"
    Then user verify detail "Value" with value "Value TST-668"
    Then user verify detail "ICD10 Code" with value "TST-668"
    Then user verify detail "Read Code" with value "TST@668"
    Then user verify detail "Snomed Code" with value "snomedcode"
    Then user verify detail "Enabled" with value "Yes"
    Then user clicks on pop-up back icon
    Then user clicks on pop-up back icon
    Then user clicks on the action icon of "Property Details"
    Then user clicks on "Publish" on popup
    Then verify "Publish Property" after completing the form
    Then user clicks on tick-checkbox
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then user clicks on pop-up back icon

    Then user clicks on Document Settings Menu Option "Documents"
    Then user lands on "Documents List" module

    Then user clicks on the plus icon
    #Create Document
    Then verify pop-up "Create Document"
    Then user input "Code" with value "TST-668"
    Then user input "Name" with value "TST-668 Name"
    Then user clicks on "Description" on popup
    Then verify pop-up "Enter Description"
    Then user enters "Desc TST-668" in the text-area
    Then user clicks on tick-checkbox
    Then user change "Amendable" toggle "true"
    Then user change "Ability To Save Draft" toggle "true"
    Then user change "Summarisable" toggle "true"
    Then user change "Abandonable" toggle "true"
    Then user clicks on tick-checkbox
    #Verify Document
    Then user verify detail "Code" with value "TST-668"
    Then user verify detail "Name" with value "TST-668 Name"
    Then user verify detail "Description" with value "Desc TST-668"
    Then user verify detail "Type" with value "Standard"
    Then user verify detail "Amendable" with value "Yes"
    Then user verify detail "Ability To Save Draft" with value "Yes"
    Then user verify detail "Summarisable" with value "Yes"
    Then user verify detail "Abandonable" with value "Yes"
    Then user clicks on tick-checkbox
    #Verify Submission
    Then verify pop-up "Submission Status"
    Then verify "Submission Successful" after completing the form
    Then user clicks on "Configure Document" on popup

    Then verify "Document Sections" module exists "true"
    Then verify "Document Properties" module exists "true"
    #Document Section Creation
    Then user clicks on the action icon of "Document Sections"
    Then user clicks on "Create" on popup
    Then verify pop-up "Create Section"
    #Create Section
    Then user input "Code" with value "TST-668 Sec"
    Then user input "Name" with value "TST-668 SecName"
    Then user clicks on "Description" on popup
    Then verify pop-up "Enter Description"
    Then user enters "Sec Desc TST-668" in the text-area
    Then user clicks on tick-checkbox
    Then user change "Visible" toggle "true"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then user verify detail "Code" with value "TST-668 Sec"
    Then user verify detail "Name" with value "TST-668 SecName"
    Then user verify detail "Description" with value "Sec Desc TST-668"
    Then user verify detail "Visible" with value "Yes"
    Then user clicks on tick-checkbox
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then user verify detail "Code" with value "TST-668 Sec"
    Then user verify detail "Name" with value "TST-668 SecName"
    Then user verify detail "Description" with value "Sec Desc TST-668"
    Then user verify detail "Visible" with value "Yes"
    Then user clicks on pop-up back icon

    Then user clicks on the action icon of "Document Properties"
    Then verify pop-up "Property Menu"
    Then user clicks on "Add Property" on popup
    Then verify pop-up "Property Search"
    Then user clicks on "Use Existing Property" on popup
    Then verify pop-up "Existing Property Search"
    Then user clicks on tick-checkbox
    Then wait for 10 seconds
    Then user inputs "Name TST-668" in the filter option
    Then user clicks on "Name TST-668" on popup with respect to "Published"
    Then wait for "3" seconds
    Then user clicks on tick-checkbox
    Then user verify items order of "Document Properties" with values "Name TST-668Description TST-668"
    Then user clicks on meatballs icon "Name TST-668"
    Then wait for popup loading
    Then verify "Success" after completing
    Then user clicks on tick-checkbox
    Then user clicks on meatballs icon "Name TST-668"
    Then wait for popup loading
    Then user verify detail "STATUS" with value "Published"
    Then user verify detail "Updated On" exists "true"
    Then user verify detail "Updated By" with value "K Kualitatem"
    #Property Information
    Then user verify detail "Code" with value "code668"
    Then user verify detail "Name" with value "Name TST-668"
    Then user verify detail "Description" with value "Description TST-668"
    Then user verify detail "Persistence" with value "Never"
    Then user verify detail "Searchable" with value "Yes"
    #Property Interaction
    Then user verify detail "Type" with value "Selection"
    Then user verify detail "Linked Documents" exists "true"
    #Property Logic
    Then user verify detail "Mandatory" with value "No"
    Then user verify detail "Visible" with value "Yes"
    Then user verify detail "Rules" exists "true"

    Then user clicks on the action icon of "Property Details"
    Then user clicks on "Revise" on popup

    Then wait for popup loading
    Then verify pop-up "Revise Property"
    Then user clears the text-input "Code"
    Then user input "Code" with value "Editedcode668"
    Then user clicks on the action "Name"
    Then verify pop-up "Enter Name"
    Then user clears the text-area
    Then user enters "EditedName TST-668" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on "Description" on popup
    Then verify pop-up "Enter Description"
    Then user clears the text-area
    Then user enters "EditedDescription TST-668" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on "Type" on popup
    Then verify pop-up "Enter Type"
    Then user clicks on "Selection" on popup

    Then user verify detail "Mandatory" exists "true"
    Then user verify detail "Visible" exists "true"

    Then user clicks on tick-checkbox
    Then verify "Success" after completing the form
    Then user verify detail "Return To Document" exists "true"
    Then user clicks on tick-checkbox

    Then wait for popup loading

    Then user verify detail "STATUS" with value "Unpublished"
    Then user verify detail "Updated On" exists "true"
    Then user verify detail "Updated By" with value "K Kualitatem"
    #Property Information
    Then user verify detail "Code" with value "Editedcode668"
    Then user verify detail "Name" with value "EditedName TST-668"
    Then user verify detail "Description" with value "EditedDescription TST-668"
    Then user verify detail "Persistence" with value "Never"
    Then user verify detail "Searchable" with value "Yes"
    #Property Interaction
    Then user verify detail "Type" with value "Selection"
    Then user verify detail "Linked Documents" exists "true"
    #Property Logic
    Then user verify detail "Mandatory" with value "No"
    Then user verify detail "Visible" with value "Yes"
    Then user verify detail "Rules" exists "true"

    Then user clicks on the action icon of "Property Details"
    Then user clicks on "Edit" on popup

    Then wait for popup loading
    Then verify pop-up "Edit Property"
    Then user clears the text-input "Code"
    Then user input "Code" with value "code668"
    Then user clicks on the action "Name"
    Then verify pop-up "Enter Name"
    Then user clears the text-area
    Then user enters "Name TST-668" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on "Description" on popup
    Then verify pop-up "Enter Description"
    Then user clears the text-area
    Then user enters "Description TST-668" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on "Type" on popup
    Then verify pop-up "Enter Type"
    Then user clicks on "Selection" on popup

    Then user verify detail "Mandatory" exists "true"
    Then user verify detail "Visible" exists "true"

    Then user clicks on tick-checkbox
    Then verify "Success" after completing the form
    Then user verify detail "Return To Document" exists "true"
    Then user clicks on tick-checkbox

    Then wait for popup loading

    Then user verify detail "STATUS" with value "Unpublished"
    Then user verify detail "Updated On" exists "true"
    Then user verify detail "Updated By" with value "K Kualitatem"
    #Property Information
    Then user verify detail "Code" with value "code668"
    Then user verify detail "Name" with value "Name TST-668"
    Then user verify detail "Description" with value "Description TST-668"
    Then user verify detail "Persistence" with value "Never"
    Then user verify detail "Searchable" with value "Yes"
    #Property Interaction
    Then user verify detail "Type" with value "Selection"
    Then user verify detail "Linked Documents" exists "true"
    #Property Logic
    Then user verify detail "Mandatory" with value "No"
    Then user verify detail "Visible" with value "Yes"
    Then user verify detail "Rules" exists "true"

    Then user clicks on "Values" on popup
    Then wait for popup loading
    Then verify pop-up "Property Values"
    Then user verify detail "Name TST-668" exists "true"
    Then user verify Popup Adjacent Item "Name TST-668" with value "Enabled"
    Then user clicks on the action icon of "Property Values"
    Then user verify detail "Add Value" exists "true"
    Then user verify detail "Re-Order Values" exists "true"
    Then user clicks on "Add Value" on popup

    Then verify pop-up "Add Property Value"

    #Add Value in Property
    Then user clicks on the action "Display"
    Then verify pop-up "Add Name Value"
    Then user enters "Name2 TST-668" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on "Value" on popup
    Then verify pop-up "Add Value"
    Then user enters "Value2 TST-668" in the text-area
    Then user clicks on tick-checkbox
    Then user input "ICD10 Code" with value "TST-668"
    Then user input "Read Code" with value "TST@668"
    Then user input "Snomed Code" with value "snomedcode"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Submission Successful" after completing the form
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then user verify detail "Name2 TST-668" exists "true"
    Then user verify Popup Adjacent Item "Name2 TST-668" with value "Enabled"
    Then user clicks on "Name2 TST-668" on popup
    #Verify Properties Values
    Then verify pop-up "Property Values"
    Then wait for popup loading
    Then user verify detail "Display" with value "Name2 TST-668"
    Then user verify detail "Value" with value "Value2 TST-668"
    Then user verify detail "ICD10 Code" with value "TST-668"
    Then user verify detail "Read Code" with value "TST@668"
    Then user verify detail "Snomed Code" with value "snomedcode"
    Then user verify detail "Enabled" with value "Yes"

  @TST-670 @haiderejaz @e2eSprint @sprint5
  Scenario: V3 Documents : Document Configuration - Reorder Document Sections
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on the option "Documents"
    Then user lands on "Document Settings" page
    Then user clicks on Document Settings Menu Option "Documents"
    Then user lands on "Documents List" module
    Then change all "TST-670 DocName" named Document status to "Discard" from "Unpublished"
    Then user clicks on the plus icon
    #Create Document
    Then verify pop-up "Create Document"
    Then user input "Code" with value "TST-670"
    Then user input "Name" with value "TST-670 Name"
    Then user clicks on "Description" on popup
    Then verify pop-up "Enter Description"
    Then user enters "Desc TST-670" in the text-area
    Then user clicks on tick-checkbox
    Then user change "Amendable" toggle "true"
    Then user change "Ability To Save Draft" toggle "true"
    Then user change "Summarisable" toggle "true"
    Then user change "Abandonable" toggle "true"
    Then user clicks on tick-checkbox
    #Verify Document
    Then user verify detail "Code" with value "TST-670"
    Then user verify detail "Name" with value "TST-670 Name"
    Then user verify detail "Description" with value "Desc TST-670"
    Then user verify detail "Type" with value "Standard"
    Then user verify detail "Amendable" with value "Yes"
    Then user verify detail "Ability To Save Draft" with value "Yes"
    Then user verify detail "Summarisable" with value "Yes"
    Then user verify detail "Abandonable" with value "Yes"
    Then user clicks on tick-checkbox
    #Verify Submission
    Then verify pop-up "Submission Status"
    Then verify "Submission Successful" after completing the form
    Then user clicks on tick-checkbox
    Then user clicks on the action icon
    Then wait for popup loading
    Then user clicks on "Configure" on popup
    Then verify "Document Sections" module exists "true"
    Then verify "Document Properties" module exists "true"
    Then user clicks on the action icon of "Document Sections"
    Then user clicks on "Create" on popup
    Then verify pop-up "Create Section"
    #Create Section
    Then user input "Code" with value "TST-670 Sec"
    Then user input "Name" with value "TST-670 SecName"
    Then user clicks on "Description" on popup
    Then verify pop-up "Enter Description"
    Then user enters "Sec Desc TST-670" in the text-area
    Then user clicks on tick-checkbox
    Then user change "Visible" toggle "true"
    Then user clicks on tick-checkbox
    Then user verify detail "Code" with value "TST-670 Sec"
    Then user verify detail "Name" with value "TST-670 SecName"
    Then user verify detail "Description" with value "Sec Desc TST-670"
    Then user verify detail "Visible" with value "Yes"
    Then user clicks on tick-checkbox
    Then verify "Success" after completing the form
    Then user clicks on "Create Another Section" on popup
    Then user input "Code" with value "TST-670 Sec2"
    Then user input "Name" with value "TST-670 SecName2"
    Then user clicks on "Description" on popup
    Then verify pop-up "Enter Description"
    Then user enters "Sec Desc2 TST-670" in the text-area
    Then user clicks on tick-checkbox
    Then user change "Visible" toggle "true"
    Then user clicks on tick-checkbox
    Then user verify detail "Code" with value "TST-670 Sec2"
    Then user verify detail "Name" with value "TST-670 SecName2"
    Then user verify detail "Description" with value "Sec Desc2 TST-670"
    Then user verify detail "Visible" with value "Yes"
    Then user clicks on tick-checkbox
    Then verify "Success" after completing the form

    Then user clicks on tick-checkbox
    Then user verify detail "Code" with value "TST-670 Sec2"
    Then user verify detail "Name" with value "TST-670 SecName2"
    Then user verify detail "Description" with value "Sec Desc2 TST-670"
    Then user verify detail "Visible" with value "Yes"
    Then user clicks on pop-up back icon
    Then user verify "TST-670 SecName" Visibility Icon "true"
    Then user verify "TST-670 SecName2" Visibility Icon "true"

    Then user verify items order of "Document Sections" with values "TST-670 SecName,TST-670 SecName2"
    Then user clicks on the action icon of "Document Sections"
    Then user clicks on "Reorder" on popup
    Then verify pop-up "Reorder Sections"
    Then wait for popup loading
    Then user moves item down "TST-670 SecName"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then user verify items order of "Document Sections" with values "TST-670 SecName2,TST-670 SecName"

  @TST-671 @haiderejaz @e2eSprint @sprint4
  Scenario: V3 Documents : Remove a Document Section
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on "Documents" icon
    Then user lands on "Document Settings" page
    Then user clicks on Document Settings Menu Option "Documents"
    Then user lands on "Documents List" module
    Then filter item "All Names" with value "Doc_TST-671_Name"
    Then create a document with Code "Doc_TST-671_Code" Name "Doc_TST-671_Name" Desc "Doc_TST-671_Description" Type "Standard" Ammendable "active" Ability To Save Draft "active" Summarisable "active" Abandonable "active" if not exist
    Then user clicks on Table first row "Doc_TST-671_Name"
    Then wait for popup loading
    Then user clicks on the action icon of "Document Details"
    Then wait for popup loading
    Then user clicks on "Configure" on popup
    Then verify "Document Sections" module exists "true"
    Then verify "Document Properties" module exists "true"
    #Document Section Creation
    Then user clicks on the action icon of "Document Sections"
    Then user clicks on "Create" on popup
    Then verify pop-up "Create Section"
    #Create Section
    Then user input "Code" with value "TST-671 Sec"
    Then user input "Name" with value "TST-671 SecName"
    Then user clicks on "Description" on popup
    Then verify pop-up "Enter Description"
    Then user enters "Sec Desc TST-671" in the text-area
    Then user clicks on tick-checkbox
    Then user change "Visible" toggle "true"
    Then user clicks on tick-checkbox
    Then user verify detail "Code" with value "TST-671 Sec"
    Then user verify detail "Name" with value "TST-671 SecName"
    Then user verify detail "Description" with value "Sec Desc TST-671"
    Then user verify detail "Visible" with value "Yes"
    Then user clicks on tick-checkbox
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then user verify detail "Code" with value "TST-671 Sec"
    Then user verify detail "Name" with value "TST-671 SecName"
    Then user verify detail "Description" with value "Sec Desc TST-671"
    Then user verify detail "Visible" with value "Yes"
    Then user clicks on pop-up back icon
    Then user clicks on meatballs icon "TST-671 SecName"
    Then wait for popup loading
    Then user clicks on the action icon of "Section Details"
    Then verify pop-up "Section Actions"
    Then user clicks on "Remove" on popup
    Then wait for popup loading
    Then verify pop-up "Remove Section"
    Then verify "Confirm Removal" after completing the form
    Then verify "Are you sure you wish to remove the following section. Please note this cannot be reversed" after completing the form Description
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Remove Section"
    Then verify "Success" after completing the form
    Then verify "Your changes were saved successfully." after completing the form Description
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then reload page
    Then wait for popup loading
    Then verify "Document Sections" found "Nothing Here" is Exist "true"
    Then verify "Document Sections" found "No sections." is Exist "true"

  @TST-673 @haiderejaz @e2eSprint @sprint4
  Scenario: V3 Documents : Selection Property - Verify Selection Property value length (character limits)
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on "Documents" icon
    Then user lands on "Document Settings" page
    Then user clicks on Document Settings Menu Option "Properties"
    Then user lands on "Properties List" module
    Then change all "Selection TST-673" named properties status to "Suspend" from "Published"

    #Create Property
    Then user clicks on the plus icon
    Then verify pop-up "Create Property"
    Then user input "Code" with value "SelectionCode673"
    Then user clicks on the action "Name"
    Then verify pop-up "Enter Name"
    Then user enters "Selection TST-673" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on "Description" on popup
    Then verify pop-up "Enter Description"
    Then user enters "Description TST-673" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on "Type" on popup
    Then verify pop-up "Select Type"
    Then user clicks on "Selection" on popup
    Then user clicks on tick-checkbox
    Then verify pop-up "Property Summary"
    #Verify Property
    Then user verify detail "Code" with value "SelectionCode673"
    Then user verify detail "Name" with value "Selection TST-673"
    Then user verify detail "Description" with value "Description TST-673"
    Then user verify detail "Type" with value "Selection"
    Then user verify detail "Persistence" with value "Never"
    Then user clicks on tick-checkbox
    Then verify "Submission Successful" after completing the form
    Then user clicks on "Configure Values" on popup
    Then wait for popup loading
    Then user clicks on the action icon
    Then user clicks on "Add Value" on popup
    #Add Value in Property
    Then user clicks on the action "Display"
    Then verify pop-up "Add Name Value"
    Then user enters "Name1 TST-673 val" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on "Value" on popup
    Then verify pop-up "Add Value"
    Then user enters "Value1 TST-673" in the text-area
    Then user clicks on tick-checkbox
    Then user input "ICD10 Code" with value "TST-673"
    Then user input "Read Code" with value "TST@673"
    Then user input "Snomed Code" with value "snomedcode"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Submission Successful" after completing the form
    Then user clicks on "Create Another Value" on popup
#    Then user clicks on pop-up back icon
#    Then user clicks on "Values" on popup
 #Add Value in Property
    Then user clicks on the action "Display"
    Then verify pop-up "Add Name Value"
    Then user enters "Name2 TST-673 val" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on "Value" on popup
    Then verify pop-up "Add Value"
    Then user enters "Value2 TST-673" in the text-area
    Then user clicks on tick-checkbox
    Then user input "ICD10 Code" with value "TST-673"
    Then user input "Read Code" with value "TST@673"
    Then user input "Snomed Code" with value "snomedcode"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Submission Successful" after completing the form
    Then user clicks on tick-checkbox
    Then user verify detail "STATUS" with value "Unpublished"
    #Property Publishing
    Then user clicks on the action icon
    Then wait for "3" seconds
    Then user clicks on "Publish" on popup
    Then wait for "3" seconds
    Then verify "Publish Property" after completing the form
#    Then verify "Are you sure you want to publish the selected property? Click the 'Tick' to confirm, or return to the property's details." after completing the form Description
    Then user clicks on tick-checkbox
    Then wait for "3" seconds
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then user verify detail "STATUS" with value "Published"
    Then user clicks on pop-up back icon
    Then user clicks on Document Settings Menu Option "Documents"
    Then user lands on "Documents List" module
    Then change all "TST-673 DocName" named Document status to "Discard" from "Unpublished"
    Then user clicks on the plus icon
    Then wait for popup loading
    #Create Document
    Then verify pop-up "Create Document"
    Then user input "Code" with value "TST-673"
    Then user input "Name" with value "TST-673 DocName"
    Then user clicks on "Description" on popup
    Then verify pop-up "Enter Description"
    Then user enters "Desc TST-673" in the text-area
    Then user clicks on tick-checkbox
    Then user change "Amendable" toggle "true"
    Then user change "Ability To Save Draft" toggle "true"
    Then user change "Summarisable" toggle "true"
    Then user change "Abandonable" toggle "true"
    Then user clicks on tick-checkbox
    #Verify Document
    Then user verify detail "Code" with value "TST-673"
    Then user verify detail "Name" with value "TST-673 DocName"
    Then user verify detail "Description" with value "Desc TST-673"
    Then user verify detail "Type" with value "Standard"
    Then user verify detail "Amendable" with value "Yes"
    Then user verify detail "Ability To Save Draft" with value "Yes"
    Then user verify detail "Summarisable" with value "Yes"
    Then user verify detail "Abandonable" with value "Yes"
    Then user clicks on tick-checkbox
    #Verify Submission
    Then verify pop-up "Submission Status"
    Then verify "Submission Successful" after completing the form
    Then user clicks on tick-checkbox
    Then user clicks on the action icon
    Then user clicks on "Configure" on popup
    Then verify "Document Sections" module exists "true"
    Then verify "Document Properties" module exists "true"
    #Document Section Creation
    Then user clicks on the action icon of "Document Sections"
    Then user clicks on "Create" on popup
    Then wait for popup loading
    Then verify pop-up "Create Section"
    #Create Section
    Then user input "Code" with value "TST-673 Sec"
    Then user input "Name" with value "TST-673 SecName"
    Then user clicks on "Description" on popup
    Then verify pop-up "Enter Description"
    Then user enters "Sec Desc TST-673" in the text-area
    Then user clicks on tick-checkbox
    Then user change "Visible" toggle "true"
    Then user clicks on tick-checkbox
    Then user verify detail "Code" with value "TST-673 Sec"
    Then user verify detail "Name" with value "TST-673 SecName"
    Then user verify detail "Description" with value "Sec Desc TST-673"
    Then user verify detail "Visible" with value "Yes"
    Then user clicks on tick-checkbox
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then user verify detail "Code" with value "TST-673 Sec"
    Then user verify detail "Name" with value "TST-673 SecName"
    Then user verify detail "Description" with value "Sec Desc TST-673"
    Then user verify detail "Visible" with value "Yes"
    Then user clicks on pop-up back icon
    #Document Properties selection
    Then user clicks on the action icon of "Document Properties"
    Then verify pop-up "Property Menu"
    Then user clicks on "Add Property" on popup
    Then verify pop-up "Property Search"
    Then user clicks on "Use Existing Property" on popup
    Then verify pop-up "Existing Property Search"
    Then user clicks on tick-checkbox
    Then wait for 10 seconds
    Then user inputs "Selection TST-673" in the filter option
    Then user clicks on "Selection TST-673" on popup with respect to "Published"
    Then wait for "3" seconds
    Then user clicks on tick-checkbox
    Then user clicks on meatballs icon "Selection TST-673"
    Then wait for popup loading
    Then verify "Success" after completing
    Then user clicks on tick-checkbox
    Then user clicks on meatballs icon "Selection TST-673"
    Then wait for popup loading
    Then verify pop-up "Property Details"
    Then user verify detail "STATUS" with value "Published"
    Then user verify detail "Updated On" exists "true"
    Then user verify detail "Updated By" with value "K Kualitatem"
    #Property Information
    Then user verify detail "Code" with value "SelectionCode673"
    Then user verify detail "Name" with value "Selection TST-673"
    Then user verify detail "Description" with value "Description TST-673"
    Then user verify detail "Searchable" with value "Yes"
    Then user verify detail "Persistence" with value "Never"
    #Property Interaction
    Then user verify detail "Type" with value "Selection"
    Then user verify detail "Linked Documents" exists "true"
    Then user verify item "Linked Documents" counter with value "1"
    Then user verify detail "Values" exists "true"
    Then user verify item "Values" counter with value "2"
    #Property Logic
    Then user verify detail "Mandatory" with value "No"
    Then user verify detail "Visible" with value "Yes"
    Then user verify detail "Rules" exists "true"
    Then user verify item "Rules" counter with value "0"

      #Revise Property
    Then user clicks on the action icon of "Property Details"
    Then user verify detail "Remove" exists "true"
    Then user verify detail "Revise" exists "true"
    Then user verify detail "Suspend" exists "true"
    Then user clicks on "Revise" on popup
    Then wait for popup loading
    Then verify pop-up "Revise Property"
    Then user clears the text-input "Code"
    Then user input "Code" with value "EditSelectionCode673"
    Then user clicks on "Description" on popup
    Then verify pop-up "Enter Description"
    Then user clears the text-area
    Then user enters "Description TST-673 edited" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then wait for "3" seconds
    Then verify pop-up "Property Details"
    Then user verify detail "STATUS" with value "Unpublished"


    Then user clicks on "Values" on popup
    Then wait for popup loading
    Then verify pop-up "Property Values"
    Then user verify Popup Adjacent Item "Name1 TST-673 val" with value "Enabled"
    Then user verify Popup Adjacent Item "Name2 TST-673 val" with value "Enabled"
    Then user clicks on the action icon of "Property Values"
    Then verify pop-up "Value Menu"
    Then user verify detail "Add Value" exists "true"
    Then user verify detail "Re-Order Values" exists "true"
    Then user clicks on "Add Value" on popup

    Then user clicks on the action "Display"
    Then verify pop-up "Add Name Value"
#    Then verify textArea maxlength "250"
    Then user enters "Add Name Value User should be able to enter value of the selection Property up to 250 characters (maximum character length 250) for Display filed and value field. System should allow value length up to 250 characters when editing an existing value too" in the text-area
    Then wait for popup loading
    Then verify textArea Characters length "250"
    Then user clicks on tick-checkbox
    Then user clicks on "Value" on popup
    Then verify pop-up "Add Value"
    Then user enters "Value3 TST-673" in the text-area
    Then user clicks on tick-checkbox
    Then user input "ICD10 Code" with value "TST-673"
    Then user input "Read Code" with value "TST@673"
    Then user input "Snomed Code" with value "snomedcode"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Submission Successful" after completing the form
    Then user verify detail "Create Another Value" exists "true"
    Then user clicks on tick-checkbox
    Then user verify Popup Adjacent Item "Add Name Value User should be able to enter value of the selection Property up to 250 characters (maximum character length 250) for Display filed and value field. System should allow value length up to 250 characters when editing an existing value to" with value "Enabled"
    Then user clicks on "Add Name Value User should be able to enter value of the selection Property up to 250 characters (maximum character length 250) for Display filed and value field. System should allow value length up to 250 characters when editing an existing value to" on popup
    Then user clicks on the action icon of "Property Values"

  @TST-674 @haiderejaz @e2eSprint @sprint5
  Scenario: V3 Documents : Document Configuration -  Add / Verify Property rules
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on the option "Documents"
    Then user lands on "Document Settings" page
    Then user clicks on Document Settings Menu Option "Properties"
    Then user lands on "Properties List" module

    Then filter item "All Names" with value "Selection TST-674_prop"
    Then create a property with Code "code1_TST-674" Name "Selection TST-674_prop" Desc "Desc TST-674" and Type "Selection" if not exist
    Then Add a value in property "Selection TST-674_prop" with Display Name "TST-674 ValName1" Value "TST-674 Val1" ICD10 Code "TST-674" Read Code "TST-674" Snommed Code "TST-674" and isEnabled "Yes" if not exist
    Then Add a value in property "Selection TST-674_prop" with Display Name "TST-674 ValName2" Value "TST-674 Val2" ICD10 Code "TST-674" Read Code "TST-674" Snommed Code "TST-674" and isEnabled "Yes" if not exist
    Then publish "Selection TST-674_prop" if it is not published

    Then filter item "Selection TST-674_prop" with value "InputInline TST-674_prop"
    Then create a property with Code "code2_TST-674" Name "InputInline TST-674_prop" Desc "Desc TST-674" and Type "Text-Input-Inline" if not exist
    Then publish "InputInline TST-674_prop" if it is not published

    Then user clicks on Document Settings Menu Option "Documents"
    Then user lands on "Documents List" module
    Then change all "TST-674 DocName" named Document status to "Discard" from "Unpublished"
    Then user clicks on the plus icon
    #Create Document
    Then verify pop-up "Create Document"
    Then user input "Code" with value "TST-674"
    Then user input "Name" with value "TST-674 DocName"
    Then user clicks on "Description" on popup
    Then verify pop-up "Enter Description"
    Then user enters "Desc TST-674" in the text-area
    Then user clicks on tick-checkbox
    Then user change "Amendable" toggle "true"
    Then user change "Ability To Save Draft" toggle "true"
    Then user change "Summarisable" toggle "true"
    Then user change "Abandonable" toggle "true"
    Then user clicks on tick-checkbox
    #Verify Document
    Then user verify detail "Code" with value "TST-674"
    Then user verify detail "Name" with value "TST-674 DocName"
    Then user verify detail "Description" with value "Desc TST-674"
    Then user verify detail "Type" with value "Standard"
    Then user verify detail "Amendable" with value "Yes"
    Then user verify detail "Ability To Save Draft" with value "Yes"
    Then user verify detail "Summarisable" with value "Yes"
    Then user verify detail "Abandonable" with value "Yes"
    Then user clicks on tick-checkbox
    #Verify Submission
    Then verify pop-up "Submission Status"
    Then verify "Submission Successful" after completing the form
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then user clicks on the action icon
    Then user clicks on "Configure" on popup
    Then verify "Document Sections" module exists "true"
    Then verify "Document Properties" module exists "true"
    Then user clicks on the action icon of "Document Sections"
    Then user clicks on "Create" on popup
    Then verify pop-up "Create Section"
    #Create Section
    Then user input "Code" with value "TST-674 Sec"
    Then user input "Name" with value "TST-674 SecName"
    Then user clicks on "Description" on popup
    Then verify pop-up "Enter Description"
    Then user enters "Sec Desc TST-674" in the text-area
    Then user clicks on tick-checkbox
    Then user change "Visible" toggle "true"
    Then user clicks on tick-checkbox
    Then user verify detail "Code" with value "TST-674 Sec"
    Then user verify detail "Name" with value "TST-674 SecName"
    Then user verify detail "Description" with value "Sec Desc TST-674"
    Then user verify detail "Visible" with value "Yes"
    Then user clicks on tick-checkbox
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then user clicks on pop-up back icon
    #Document Properties Creation
    Then user clicks on the action icon of "Document Properties"
    Then verify pop-up "Property Menu"
    Then user clicks on "Add Property" on popup
    Then verify pop-up "Property Search"
    Then user clicks on "Use Existing Property" on popup
    Then verify pop-up "Existing Property Search"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then user inputs "Selection TST-674_prop" in the filter option
    Then user clicks on "Selection TST-674_prop" on popup
    Then wait for popup loading
    Then user clicks on tick-checkbox
   #Document Properties Creation
    Then wait for popup loading
    Then user clicks on the action icon of "Document Properties"
#    Then user clicks on meatballs icon "Selection TST-674_prop"
#    Then wait for popup loading
#    Then verify "Success" after completing
#    Then user clicks on tick-checkbox
    Then user clicks on the action icon for tab "Document Properties"
    Then wait for popup loading
    Then verify pop-up "Property Menu"
    Then user clicks on "Add Property" on popup
    Then verify pop-up "Property Search"
    Then user clicks on "Use Existing Property" on popup
    Then verify pop-up "Existing Property Search"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then user inputs "InputInline TST-674_prop" in the filter option
    Then user clicks on "InputInline TST-674_prop" on popup
    Then wait for popup loading
    Then user clicks on tick-checkbox
#    Then wait for popup loading
#    Then user clicks on meatballs icon "InputInline TST-674_prop"
    Then wait for popup loading
    Then verify "Success" after completing
    Then user clicks on tick-checkbox
    Then user clicks on meatballs icon "InputInline TST-674_prop"
    Then user clicks on "Rules" on popup
    Then verify pop-up "Property Rules"
    Then user clicks on the pop-up plus icon
    Then verify pop-up "Configure Rule"
    Then user clicks on "Property" on popup
    Then wait for popup loading
    Then verify pop-up "Select Section"
    Then user clicks on "TST-674 SecName" on popup
    Then wait for "3" seconds
    Then verify pop-up "Select Property"
    Then user clicks on "Selection TST-674_prop" on popup
    Then wait for "3" seconds
    Then verify pop-up "Select Value"
    Then user clicks on "TST-674 ValName2" on popup
    Then user clicks on tick-checkbox
    Then wait for "3" seconds
    Then user clicks on "Make property not visible" on popup
    Then user clicks on tick-checkbox
    Then verify pop-up "Rule Summary"
    Then user verify detail "Type" with value "Property"
    Then user verify detail "Name" with value "InputInline TST-674_prop"
    Then user verify detail "Property" with value "Selection TST-674_prop"
    Then user verify detail "Value" with value "TST-674 ValName2"
    Then user verify detail "Mandatory" with value "No"
    Then user verify detail "Not Visible" with value "Yes"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Submission Successful" after completing the form
    Then user clicks on tick-checkbox
    Then user verify item "Rules" counter with value "1"
    Then user clicks on pop-up back icon
    Then user verify "InputInline TST-674_prop" Rules Available Icon "true"
    Then user clicks on back icon
    Then publish "TST-674 DocName" if it is not published

    Then user clicks on Document Settings Menu Option "Packages"
    Then user lands on "Package List" module
    Then filter item "All Names" with value "TST-674 pack"
    Then create a Package with Code "TST-674 code" Name "TST-674 pack" Desc "Desc TST-674" and Origin "Documents" if not exist
    Then User Associates Document "TST-674 DocName" to Package "TST-674 pack"
    Then publish "TST-674 pack" if it is not published
    Then user clicks on "Patient Quick Search" in menu bar section
    Then wait for popup loading
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "9999999999"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then wait for "3" seconds
    Then user clicks on the plus icon of "Document Information"
    Then wait for "3" seconds
    Then verify pop-up "Search Documents"
    Then user clicks on "Search All Documents" on popup
    Then wait for popup loading
#    Then verify pop-up "Document Search"
    Then user clicks on "Document Name" on popup
    Then user input "Document Name" with value "TST-674 pack"
    Then user clicks on tick-checkbox
    Then user clicks on "TST-674 pack" on popup
    Then wait for popup loading
    Then user clicks on "Start" on popup
    Then wait for loading in "Document Properties" section
    Then user verify items order of "Document Properties" with values "Selection TST-674_propDesc TST-674,InputInline TST-674_propDesc TST-674"
    Then user clicks on "Selection TST-674_prop" span
    Then wait for loading in "Document Properties" section
    Then user clicks on "TST-674 ValName2" span
    Then user verify items order of "Document Properties" with values "Selection TST-674_propDesc TST-674"
    Then user clicks on "Selection TST-674_prop" span
    Then user clicks on "TST-674 ValName1" span
    Then user verify items order of "Document Properties" with values "Selection TST-674_propDesc TST-674,InputInline TST-674_propDesc TST-674"

  @TST-675 @haiderejaz @e2eSprint @sprint5
  Scenario: V3 Documents : Create a Signature Property
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on the option "Documents"
    Then user lands on "Document Settings" page
    Then user clicks on Document Settings Menu Option "Properties"
    Then user lands on "Properties List" module
    Then user clicks on the plus icon
    #Create Property
    Then verify pop-up "Create Property"
    Then user input "Code" with value "code675"
    Then user clicks on the action "Name"
    Then verify pop-up "Enter Name"
    Then user enters "Name TST-675" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on "Description" on popup
    Then verify pop-up "Enter Description"
    Then user enters "Description TST-675" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on "Type" on popup
    Then verify pop-up "Select Type"
    Then user clicks on "Signature" on popup
    Then user verify detail "Persistence" exists "false"
    Then user clicks on tick-checkbox
    #Verify Property Before Save
    Then verify pop-up "Property Summary"
    Then user verify detail "Code" with value "code675"
    Then user verify detail "Name" with value "Name TST-675"
    Then user verify detail "Description" with value "Description TST-675"
    Then user verify detail "Type" with value "Signature"
    Then user verify detail "Persistence" with value "Never"
    Then user verify detail "Searchable" with value "Yes"
    Then user clicks on tick-checkbox
    Then verify "Submission Successful" after completing the form
    Then verify popup option "Create Another Property" is visible
    Then verify popup option "View Property" is visible
    Then user clicks on "View Property" on popup
    Then wait for popup loading
    Then verify pop-up "Property Details"

  @TST-676 @haiderejaz @e2eSprint @sprint5
  Scenario: V3 documents : Patient documents - Add a Document Package and mark it as favourite
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on the option "Documents"
    Then user lands on "Document Settings" page
#    Then user clicks on Document Settings Menu Option "Properties"
#    Then user lands on "Properties List" module
#    Then filter item "All Names" with value "TST-676_prop"
#    Then create a property with Code "code1_TST-676" Name "TST-676_prop" Desc "Desc TST-676" and Type "Text-Input-Inline" if not exist
#    Then edit property "TST-676_prop" persistance to "Always"
#    Then publish "TST-676_prop" if it is not published
    Then user clicks on Document Settings Menu Option "Documents"
    Then user lands on "Documents List" module
    Then filter item "All Names" with value "Doc_TST-676_Name"
    Then create a document with Code "Doc_TST-676_Code" Name "Doc_TST-676_Name" Desc "Doc_TST-676_Description" Type "Standard" Ammendable "active" Ability To Save Draft "active" Summarisable "active" Abandonable "active" if not exist
#    Then configure a document "Doc_TST-676_Name" with sec name "TST-676_sec" code "TST-676 code" and existing property "TST-676_prop" if not published
    Then publish "Doc_TST-676_Name" if it is not published
    Then user clicks on Document Settings Menu Option "Packages"
    Then user lands on "Package List" module
    Then filter item "All Names" with value "TST-676 pack"
    Then create a Package with Code "TST-676 code" Name "TST-676 pack" Desc "Desc TST-676" and Origin "Documents" if not exist
    Then User Associates Document "Doc_TST-676_Name" to Package "TST-676 pack"
    Then publish "TST-676 pack" if it is not published
    Then user clicks on "Patient Quick Search" in menu bar section
    Then wait for popup loading
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "9999999999"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then user clicks on the action icon of "Patient Summary"
    Then user clicks on "Documents" on popup
    Then user lands on "Patient Documents" page
    Then user lands on "Document List" module
    Then user clicks on the plus icon of "Document List"
    Then verify pop-up "Search Documents"
    Then user clicks on "Search All Documents" on popup
    Then wait for popup loading
#    Then verify pop-up "Document Search"
    Then user clicks on "Document Name" on popup
    Then user input "Document Name" with value "TST-676 pack"
    Then user clicks on tick-checkbox
    Then user clicks on "TST-676 pack" on popup
    Then wait for popup loading
    Then verify pop-up "Add Package Confirmation"
    Then user clicks on tick-checkbox
    Then verify "Success" after completing the form
    Then verify pop-up "Submission Status"
    Then user clicks on tick-checkbox
    Then filter item "All Names" with value "TST-676 pack"
    Then click favourite icon document "TST-676 pack" and make it "active" and verify
    Then wait for popup loading
    Then user clicks on the plus icon of "Document List"
    Then wait for popup loading
    Then user verify detail "TST-676 pack" exists "true"
    Then user clicks on cross icon
    Then click favourite icon document "TST-676 pack" and make it "inactive" and verify
    Then wait for popup loading
    Then user clicks on the plus icon of "Document List"
    Then wait for popup loading
    Then user verify detail "TST-676 pack" not exists "true"
    Then user clicks on cross icon
    Then user clicks on Table first row "TST-676 pack"
    Then wait for popup loading
    Then user clicks on "Remove" on popup
    Then wait for popup loading
    Then user clicks on tick-checkbox
    Then verify "Removed" after completing the form
    Then user clicks on tick-checkbox

  @TST-677 @haiderejaz @e2eSprint @sprint4
  Scenario: V3 Documents : Document Configuration -  Edit a Selection Property
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on "Documents" icon
    Then user lands on "Document Settings" page
    Then user clicks on Document Settings Menu Option "Properties"
    Then user lands on "Properties List" module
    Then change all "Selection TST-677" named properties status to "Suspend" from "Published"

    #Create Property
    Then user clicks on the plus icon
    Then verify pop-up "Create Property"
    Then user input "Code" with value "SelectionCode677"
    Then user clicks on the action "Name"
    Then verify pop-up "Enter Name"
    Then user enters "Selection TST-677" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on "Description" on popup
    Then verify pop-up "Enter Description"
    Then user enters "Description TST-677" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on "Type" on popup
    Then verify pop-up "Select Type"
    Then user clicks on "Selection" on popup
    Then user clicks on tick-checkbox
    Then verify pop-up "Property Summary"
    #Verify Property
    Then user verify detail "Code" with value "SelectionCode677"
    Then user verify detail "Name" with value "Selection TST-677"
    Then user verify detail "Description" with value "Description TST-677"
    Then user verify detail "Type" with value "Selection"
    Then user verify detail "Persistence" with value "Never"
    Then user clicks on tick-checkbox
    Then verify "Submission Successful" after completing the form
    Then wait for popup loading
    Then user clicks on "Configure Values" on popup
    Then wait for popup loading
    Then user clicks on the action icon
    Then user clicks on "Add Value" on popup
    #Add Value in Property
    Then user clicks on the action "Display"
    Then verify pop-up "Add Name Value"
    Then user enters "Name1 TST-677 val" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on "Value" on popup
    Then verify pop-up "Add Value"
    Then user enters "Value1 TST-677" in the text-area
    Then user clicks on tick-checkbox
    Then user input "ICD10 Code" with value "TST-677"
    Then user input "Read Code" with value "TST@677"
    Then user input "Snomed Code" with value "snomedcode"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Submission Successful" after completing the form
    Then user clicks on "Create Another Value" on popup
 #Add Value in Property
    Then user clicks on the action "Display"
    Then verify pop-up "Add Name Value"
    Then user enters "Name2 TST-677 val" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on "Value" on popup
    Then verify pop-up "Add Value"
    Then user enters "Value2 TST-677" in the text-area
    Then user clicks on tick-checkbox
    Then user input "ICD10 Code" with value "TST-677"
    Then user input "Read Code" with value "TST@677"
    Then user input "Snomed Code" with value "snomedcode"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Submission Successful" after completing the form
    Then user clicks on tick-checkbox
    Then user verify detail "STATUS" with value "Unpublished"
    #Property Publishing
    Then user clicks on the action icon
    Then wait for "3" seconds
    Then user clicks on "Publish" on popup
    Then wait for "3" seconds
    Then verify "Publish Property" after completing the form
#    Then verify "Are you sure you want to publish the selected property? Click the 'Tick' to confirm, or return to the property's details." after completing the form Description
    Then user clicks on tick-checkbox
    Then wait for "3" seconds
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then user verify detail "STATUS" with value "Published"
    Then user clicks on pop-up back icon
    Then user clicks on Document Settings Menu Option "Documents"
    Then user lands on "Documents List" module
    Then change all "TST-677 DocName" named Document status to "Discard" from "Unpublished"
    Then user clicks on the plus icon
    Then wait for popup loading
    #Create Document
    Then verify pop-up "Create Document"
    Then user input "Code" with value "TST-677"
    Then user input "Name" with value "TST-677 DocName"
    Then user clicks on "Description" on popup
    Then verify pop-up "Enter Description"
    Then user enters "Desc TST-677" in the text-area
    Then user clicks on tick-checkbox
    Then user change "Amendable" toggle "true"
    Then user change "Ability To Save Draft" toggle "true"
    Then user change "Summarisable" toggle "true"
    Then user change "Abandonable" toggle "true"
    Then user clicks on tick-checkbox
    #Verify Document
    Then user verify detail "Code" with value "TST-677"
    Then user verify detail "Name" with value "TST-677 DocName"
    Then user verify detail "Description" with value "Desc TST-677"
    Then user verify detail "Type" with value "Standard"
    Then user verify detail "Amendable" with value "Yes"
    Then user verify detail "Ability To Save Draft" with value "Yes"
    Then user verify detail "Summarisable" with value "Yes"
    Then user verify detail "Abandonable" with value "Yes"
    Then user clicks on tick-checkbox
    #Verify Submission
    Then verify pop-up "Submission Status"
    Then verify "Submission Successful" after completing the form
    Then user clicks on tick-checkbox
    Then user clicks on the action icon
    Then wait for popup loading
    Then user clicks on "Configure" on popup
    Then verify "Document Sections" module exists "true"
    Then verify "Document Properties" module exists "true"
    #Document Section Creation
    Then user clicks on the action icon of "Document Sections"
    Then user clicks on "Create" on popup
    Then verify pop-up "Create Section"
    #Create Section
    Then user input "Code" with value "TST-677 Sec"
    Then user input "Name" with value "TST-677 SecName"
    Then user clicks on "Description" on popup
    Then verify pop-up "Enter Description"
    Then user enters "Sec Desc TST-677" in the text-area
    Then user clicks on tick-checkbox
    Then user change "Visible" toggle "true"
    Then user clicks on tick-checkbox
    Then user verify detail "Code" with value "TST-677 Sec"
    Then user verify detail "Name" with value "TST-677 SecName"
    Then user verify detail "Description" with value "Sec Desc TST-677"
    Then user verify detail "Visible" with value "Yes"
    Then user clicks on tick-checkbox
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then user verify detail "Code" with value "TST-677 Sec"
    Then user verify detail "Name" with value "TST-677 SecName"
    Then user verify detail "Description" with value "Sec Desc TST-677"
    Then user verify detail "Visible" with value "Yes"
    Then user clicks on pop-up back icon
    #Document Properties selection
    Then user clicks on the action icon of "Document Properties"
    Then verify pop-up "Property Menu"
    Then user clicks on "Add Property" on popup
    Then verify pop-up "Property Search"
    Then user clicks on "Use Existing Property" on popup
    Then verify pop-up "Existing Property Search"
    Then user clicks on tick-checkbox
    Then wait for 10 seconds
    Then user inputs "Selection TST-677" in the filter option
    Then user clicks on "Selection TST-677" on popup with respect to "Published"
    Then wait for "3" seconds
    Then user clicks on tick-checkbox
    Then user clicks on meatballs icon "Selection TST-677"
    Then wait for popup loading
    Then verify "Success" after completing
    Then user clicks on tick-checkbox
    Then user clicks on meatballs icon "Selection TST-677"
    Then wait for popup loading
    Then verify pop-up "Property Details"
    Then user verify detail "STATUS" with value "Published"
    Then user verify detail "Updated On" exists "true"
    Then user verify detail "Updated By" with value "K Kualitatem"
    #Property Information
    Then user verify detail "Code" with value "SelectionCode677"
    Then user verify detail "Name" with value "Selection TST-677"
    Then user verify detail "Description" with value "Description TST-677"
    Then user verify detail "Searchable" with value "Yes"
    Then user verify detail "Persistence" with value "Never"
    #Property Interaction
    Then user verify detail "Type" with value "Selection"
    Then user verify detail "Linked Documents" exists "true"
    Then user verify item "Linked Documents" counter with value "1"
    Then user verify detail "Values" exists "true"
    Then user verify item "Values" counter with value "2"
    #Property Logic
    Then user verify detail "Mandatory" with value "No"
    Then user verify detail "Visible" with value "Yes"
    Then user verify detail "Rules" exists "true"
    Then user verify item "Rules" counter with value "0"
    #Revise Property
    Then user clicks on the action icon of "Property Details"
    Then user verify detail "Remove" exists "true"
    Then user verify detail "Revise" exists "true"
    Then user verify detail "Suspend" exists "true"
    Then user clicks on "Revise" on popup
    Then wait for popup loading
    Then verify pop-up "Revise Property"
    Then user clears the text-input "Code"
    Then user input "Code" with value "EditSelectionCode677"
    Then user clicks on "Description" on popup
    Then verify pop-up "Enter Description"
    Then user clears the text-area
    Then user enters "Description TST-677 edited" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then wait for "3" seconds
    Then verify pop-up "Property Details"
    Then user verify detail "STATUS" with value "Unpublished"
    Then user clicks on "Values" on popup
    Then wait for popup loading
    Then verify pop-up "Property Values"
    Then user verify Popup Adjacent Item "Name1 TST-677 val" with value "Enabled"
    Then user verify Popup Adjacent Item "Name2 TST-677 val" with value "Enabled"
    Then user clicks on the action icon of "Property Values"
    Then verify pop-up "Value Menu"
    Then user verify detail "Add Value" exists "true"
    Then user verify detail "Re-Order Values" exists "true"
    Then user clicks on "Add Value" on popup

    Then user clicks on the action "Display"
    Then verify pop-up "Add Name Value"
    Then user enters "Name3 TST-677 val" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on "Value" on popup
    Then verify pop-up "Add Value"
    Then user enters "Value3 TST-677" in the text-area
    Then user clicks on tick-checkbox
    Then user input "ICD10 Code" with value "TST-677"
    Then user input "Read Code" with value "TST@677"
    Then user input "Snomed Code" with value "snomedcode"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Submission Successful" after completing the form
    Then user verify detail "Create Another Value" exists "true"
    Then user clicks on tick-checkbox
    Then user verify Popup Adjacent Item "Name3 TST-677 val" with value "Enabled"
    Then user clicks on pop-up back icon
    Then user verify detail "STATUS" with value "Unpublished"
    Then user verify item "Values" counter with value "3"

  @TST-678 @haiderejaz @e2eSprint @sprint3
  Scenario: V3 Documents : Revise a Package - Remove Linked Documents
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on the option "Documents"
    Then user lands on "Document Settings" page
    Then user clicks on Document Settings Menu Option "Documents"
    Then user lands on "Documents List" module
    Then user clicks on the plus icon
    #Create Document
    Then verify pop-up "Create Document"
    Then user input "Code" with value "TST-678"
    Then user input "Name" with value "TST-678 Name"
    Then user clicks on "Description" on popup
    Then verify pop-up "Enter Description"
    Then user enters "Desc TST-678" in the text-area
    Then user clicks on tick-checkbox
    Then user change "Amendable" toggle "true"
    Then user change "Ability To Save Draft" toggle "true"
    Then user change "Summarisable" toggle "true"
    Then user change "Abandonable" toggle "true"
    Then user clicks on tick-checkbox
    #Verify Document
    Then user verify detail "Code" with value "TST-678"
    Then user verify detail "Name" with value "TST-678 Name"
    Then user verify detail "Description" with value "Desc TST-678"
    Then user verify detail "Type" with value "Standard"
    Then user verify detail "Amendable" with value "Yes"
    Then user verify detail "Ability To Save Draft" with value "Yes"
    Then user verify detail "Summarisable" with value "Yes"
    Then user verify detail "Abandonable" with value "Yes"
    Then user clicks on tick-checkbox
    #Verify Submission
    Then verify pop-up "Submission Status"
    Then verify "Submission Successful" after completing the form
    Then user clicks on tick-checkbox
    Then user clicks on the action icon of "Document Details"
    Then wait for popup loading
    Then user clicks on "Publish" on popup
    Then user clicks on tick-checkbox
 #Verify Submission
    Then verify pop-up "Submission Status"
    Then verify "Publish Successful" after completing the form
    Then user clicks on tick-checkbox
#Then wait for "5" seconds
#    Then verify "Status" with value "Published" in the pop-up
    Then user clicks on pop-up back icon
    Then user clicks on Document Settings Menu Option "Packages"
    Then user lands on "Package List" module
    #Create Package
    Then user clicks on the plus icon
    Then verify pop-up "Create Package"
    Then user input "Code" with value "code678"
    Then user input "Name" with value "Name TST-678"
    Then user clicks on "Description" on popup
    Then verify pop-up "Enter Description"
    Then user enters "Description TST-678" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on the action "Category"
    Then verify pop-up "Select Category"
    Then user clicks on "Infection Control" on popup
    Then user clicks on tick-checkbox
    Then user clicks on the action "Specialty"
    Then verify pop-up "Select Specialty"
    Then user inputs "Infectious Diseases" in the filter option
    Then user clicks on "Infectious Diseases" on popup
    Then user clicks on tick-checkbox
    Then user clicks on the action "Origin"
    Then verify pop-up "Select Origin"
    Then user clicks on "Documents" on popup
    Then user clicks on tick-checkbox
    #Verify Package Summary
    Then verify pop-up "Package Summary"
    Then user verify detail "Code" with value "code678"
    Then user verify detail "Name" with value "Name TST-678"
    Then user verify detail "Description" with value "Description TST-678"
    Then user verify detail "Category" with value "Infection Control"
    Then user verify detail "Specialty" with value "Infectious Diseases"
    Then user verify detail "Origin" with value "Documents"
    Then user clicks on tick-checkbox
    Then verify "Submission Successful" after completing the form
    Then user clicks on "Link documents to package" on popup
    Then wait for "2" seconds
    Then user clicks on the action icon of "Linked Documents List"
    Then user clicks on "Add Documents" on popup
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then user inputs "TST-678 Name" in the filter option
    Then user clicks on "TST-678 Name" on popup
    Then user clicks on tick-checkbox
    Then user verify detail "TST-678 Name" exists "true"
    Then user clicks on pop-up back icon
    Then wait for "5" seconds
    Then user verify item "Linked Documents" counter with value "1"
    Then user clicks on "Linked Documents" on popup
    Then user clicks on the action icon of "Linked Documents List"
    Then user verify detail "Add Documents" exists "true"
    Then user verify detail "Remove Documents" exists "true"
    Then user clicks on "Remove Documents" on popup
    Then user verify detail "TST-678 Name" exists "true"
    Then user verify remove icon "TST-678 Name" exists "true"
    Then user clicks on "TST-678 Name" on popup
    Then verify pop-up "Remove Linked Documents"
    Then verify "Nothing Here" after completing the form
    Then user clicks on pop-up back icon
    Then user clicks on pop-up back icon
    Then wait for "5" seconds
    Then user verify item "Linked Documents" counter with value "0"

  @TST-679 @haiderejaz @e2eSprint @sprint3
  Scenario: V3 Documents : Document Config - Revise a Section and make it Hidden
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on the option "Documents"
    Then user lands on "Document Settings" page
    Then user clicks on Document Settings Menu Option "Documents"
    Then user lands on "Documents List" module
    Then user clicks on the plus icon
    #Create Document
    Then verify pop-up "Create Document"
    Then user input "Code" with value "TST-679"
    Then user input "Name" with value "TST-679 Name"
    Then user clicks on "Description" on popup
    Then verify pop-up "Enter Description"
    Then user enters "Desc TST-679" in the text-area
    Then user clicks on tick-checkbox
    Then user change "Amendable" toggle "true"
    Then user change "Ability To Save Draft" toggle "true"
    Then user change "Summarisable" toggle "true"
    Then user change "Abandonable" toggle "true"
    Then user clicks on tick-checkbox
    #Verify Document
    Then user verify detail "Code" with value "TST-679"
    Then user verify detail "Name" with value "TST-679 Name"
    Then user verify detail "Description" with value "Desc TST-679"
    Then user verify detail "Type" with value "Standard"
    Then user verify detail "Amendable" with value "Yes"
    Then user verify detail "Ability To Save Draft" with value "Yes"
    Then user verify detail "Summarisable" with value "Yes"
    Then user verify detail "Abandonable" with value "Yes"
    Then user clicks on tick-checkbox
    #Verify Submission
    Then verify pop-up "Submission Status"
    Then verify "Submission Successful" after completing the form
    Then user clicks on tick-checkbox
    Then user clicks on the action icon
    Then user clicks on "Configure" on popup
    Then verify "Document Sections" module exists "true"
    Then verify "Document Properties" module exists "true"
    Then user clicks on the action icon of "Document Sections"
    Then user clicks on "Create" on popup
    Then verify pop-up "Create Section"
    #Create Section
    Then user input "Code" with value "TST-679 Sec"
    Then user input "Name" with value "TST-679 SecName"
    Then user clicks on "Description" on popup
    Then verify pop-up "Enter Description"
    Then user enters "Sec Desc TST-679" in the text-area
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then user change "Visible" toggle "true"
    Then user clicks on tick-checkbox
    Then user verify detail "Code" with value "TST-679 Sec"
    Then user verify detail "Name" with value "TST-679 SecName"
    Then user verify detail "Description" with value "Sec Desc TST-679"
    Then wait for popup loading
    Then user verify the detail "Visible" with value "Yes"
    Then user clicks on tick-checkbox
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then user verify detail "Code" with value "TST-679 Sec"
    Then user verify detail "Name" with value "TST-679 SecName"
    Then user verify detail "Description" with value "Sec Desc TST-679"
    Then user verify the detail "Visible" with value "Yes"
    Then user clicks on pop-up back icon
    Then user verify "TST-679 SecName" Visibility Icon "true"
    Then user clicks on meatballs icon "TST-679 SecName"
    Then wait for "3" seconds
    Then user clicks on the action icon of "Section Details"
    Then wait for "3" seconds
    #Edit Section
    Then user clicks on "Edit" on popup
    Then verify pop-up "Edit Section"
    Then user clears the text-input "Code"
    Then user input "Code" with value "TST-679 SecEdit"
    Then user clears the text-input "Name"
    Then user input "Name" with value "TST-679 SecNameEdit"
    Then user clicks on "Description" on popup
    Then verify pop-up "Enter Description"
    Then user clears the text-area
    Then user enters "Sec Desc TST-679 Edit" in the text-area
    Then user clicks on tick-checkbox
    Then user change "Visible" toggle "false"
    Then user clicks on tick-checkbox
    #Verify Edited Section
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then user verify detail "Code" with value "TST-679 SecEdit"
    Then user verify detail "Name" with value "TST-679 SecNameEdit"
    Then user verify detail "Description" with value "Sec Desc TST-679 Edit"
    Then user verify detail "Visible" with value "No"
    Then user clicks on pop-up back icon
    Then wait for "3" seconds
    Then user verify "TST-679 SecNameEdit" Visibility Icon "false"

  @TST-681 @haiderejaz @e2eSprint @sprint4
  Scenario: V3 Documents : Document Config - Edit/Revise  a Property with added Rules
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on "Documents" icon
    Then user lands on "Document Settings" page
    Then user clicks on Document Settings Menu Option "Properties"
    Then user lands on "Properties List" module
    Then change all "Selection TST-681" named properties status to "Suspend" from "Published"
    Then change all "TextInline TST-681" named properties status to "Suspend" from "Published"

 #Create Property
    Then user clicks on the plus icon
    Then wait for popup loading
    Then verify pop-up "Create Property"
    Then user input "Code" with value "TextInlineCode681"
    Then user clicks on the action "Name"
    Then verify pop-up "Enter Name"
    Then user enters "TextInline TST-681" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on "Description" on popup
    Then verify pop-up "Enter Description"
    Then user enters "Description TST-681" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on "Type" on popup
    Then verify pop-up "Select Type"
    Then user clicks on "Text-Input-Inline" on popup
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Property Summary"
    #Verify Property
    Then user verify detail "Code" with value "TextInlineCode681"
    Then user verify detail "Name" with value "TextInline TST-681"
    Then user verify detail "Description" with value "Description TST-681"
    Then user verify detail "Type" with value "Text-Input-Inline"
    Then user verify detail "Persistence" with value "Never"
    Then user verify detail "Searchable" with value "Yes"
    Then user clicks on tick-checkbox
    Then verify "Submission Successful" after completing the form
    Then user clicks on tick-checkbox
    Then user verify detail "STATUS" with value "Unpublished"
    #Property Publishing
    Then user clicks on the action icon
    Then wait for "3" seconds
    Then user clicks on "Publish" on popup
    Then wait for "3" seconds
    Then verify "Publish Property" after completing the form
#    Then verify "Are you sure you want to publish the selected property? Click the 'Tick' to confirm, or return to the property's details." after completing the form Description
    Then user clicks on tick-checkbox
    Then wait for "3" seconds
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then user verify detail "STATUS" with value "Published"
    Then user clicks on pop-up back icon
    #Create Property
    Then user clicks on the plus icon
    Then verify pop-up "Create Property"
    Then user input "Code" with value "SelectionCode681"
    Then user clicks on the action "Name"
    Then verify pop-up "Enter Name"
    Then user enters "Selection TST-681" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on "Description" on popup
    Then verify pop-up "Enter Description"
    Then user enters "Description TST-681" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on "Type" on popup
    Then verify pop-up "Select Type"
    Then user clicks on "Selection" on popup
    Then user clicks on tick-checkbox
    Then verify pop-up "Property Summary"
    #Verify Property
    Then user verify detail "Code" with value "SelectionCode681"
    Then user verify detail "Name" with value "Selection TST-681"
    Then user verify detail "Description" with value "Description TST-681"
    Then user verify detail "Type" with value "Selection"
    Then user verify detail "Persistence" with value "Never"
    Then user clicks on tick-checkbox
    Then verify "Submission Successful" after completing the form
    Then user clicks on "Configure Values" on popup
    Then user clicks on the action icon
    Then user clicks on "Add Value" on popup
    #Add Value in Property
    Then user clicks on the action "Display"
    Then verify pop-up "Add Name Value"
    Then user enters "Name1 TST-681 val" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on "Value" on popup
    Then verify pop-up "Add Value"
    Then user enters "Value1 TST-681" in the text-area
    Then user clicks on tick-checkbox
    Then user input "ICD10 Code" with value "TST-681"
    Then user input "Read Code" with value "TST@681"
    Then user input "Snomed Code" with value "snomedcode"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Submission Successful" after completing the form
    Then user clicks on "Create Another Value" on popup
 #Add Value in Property
    Then user clicks on the action "Display"
    Then verify pop-up "Add Name Value"
    Then user enters "Name2 TST-681 val" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on "Value" on popup
    Then verify pop-up "Add Value"
    Then user enters "Value2 TST-681" in the text-area
    Then user clicks on tick-checkbox
    Then user input "ICD10 Code" with value "TST-681"
    Then user input "Read Code" with value "TST@681"
    Then user input "Snomed Code" with value "snomedcode"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Submission Successful" after completing the form
    Then user clicks on tick-checkbox
    Then user verify detail "STATUS" with value "Unpublished"
    #Property Publishing
    Then user clicks on the action icon
    Then wait for "3" seconds
    Then user clicks on "Publish" on popup
    Then wait for "3" seconds
    Then verify "Publish Property" after completing the form
#    Then verify "Are you sure you want to publish the selected property? Click the 'Tick' to confirm, or return to the property's details." after completing the form Description
    Then user clicks on tick-checkbox
    Then wait for "3" seconds
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then user verify detail "STATUS" with value "Published"
    Then user clicks on pop-up back icon
    Then user clicks on Document Settings Menu Option "Documents"
    Then user lands on "Documents List" module
    Then change all "TST-681 DocName" named Document status to "Discard" from "Unpublished"
    Then user clicks on the plus icon
    Then wait for popup loading
    #Create Document
    Then verify pop-up "Create Document"
    Then user input "Code" with value "TST-681"
    Then user input "Name" with value "TST-681 DocName"
    Then user clicks on "Description" on popup
    Then verify pop-up "Enter Description"
    Then user enters "Desc TST-681" in the text-area
    Then user clicks on tick-checkbox
    Then user change "Amendable" toggle "true"
    Then user change "Ability To Save Draft" toggle "true"
    Then user change "Summarisable" toggle "true"
    Then user change "Abandonable" toggle "true"
    Then user clicks on tick-checkbox
    #Verify Document
    Then user verify detail "Code" with value "TST-681"
    Then user verify detail "Name" with value "TST-681 DocName"
    Then user verify detail "Description" with value "Desc TST-681"
    Then user verify detail "Type" with value "Standard"
    Then user verify detail "Amendable" with value "Yes"
    Then user verify detail "Ability To Save Draft" with value "Yes"
    Then user verify detail "Summarisable" with value "Yes"
    Then user verify detail "Abandonable" with value "Yes"
    Then user clicks on tick-checkbox
    #Verify Submission
    Then verify pop-up "Submission Status"
    Then verify "Submission Successful" after completing the form
    Then user clicks on tick-checkbox
    Then user clicks on the action icon
    Then user clicks on "Configure" on popup
    Then verify "Document Sections" module exists "true"
    Then verify "Document Properties" module exists "true"
    #Document Section Creation
    Then user clicks on the action icon of "Document Sections"
    Then user clicks on "Create" on popup
    Then wait for popup loading
    Then verify pop-up "Create Section"
    #Create Section
    Then user input "Code" with value "TST-681 Sec"
    Then user input "Name" with value "TST-681 SecName"
    Then user clicks on "Description" on popup
    Then verify pop-up "Enter Description"
    Then user enters "Sec Desc TST-681" in the text-area
    Then user clicks on tick-checkbox
    Then user change "Visible" toggle "true"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then user verify detail "Code" with value "TST-681 Sec"
    Then user verify detail "Name" with value "TST-681 SecName"
    Then user verify detail "Description" with value "Sec Desc TST-681"
    Then user verify the detail "Visible" with value "Yes"
    Then user clicks on tick-checkbox
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then user verify detail "Code" with value "TST-681 Sec"
    Then user verify detail "Name" with value "TST-681 SecName"
    Then user verify detail "Description" with value "Sec Desc TST-681"
    Then user verify the detail "Visible" with value "Yes"
    Then user clicks on pop-up back icon
    #Document Properties Creation
    Then user clicks on the action icon of "Document Properties"
    Then wait for popup loading
    Then verify pop-up "Property Menu"
    Then user clicks on "Add Property" on popup
    Then verify pop-up "Property Search"
    Then user clicks on "Use Existing Property" on popup
    Then verify pop-up "Existing Property Search"
    Then user clicks on tick-checkbox
    Then wait for 10 seconds
    Then user inputs "TextInline TST-681" in the filter option
    Then user clicks on "TextInline TST-681" on popup
    Then wait for "3" seconds
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then user clicks on the action icon of "Document Properties"
    Then wait for popup loading
    Then verify pop-up "Property Menu"
    Then user clicks on "Add Property" on popup
    Then verify pop-up "Property Search"
    Then user clicks on "Use Existing Property" on popup
    Then verify pop-up "Existing Property Search"
    Then user clicks on tick-checkbox
    Then wait for 10 seconds
    Then user inputs "Selection TST-681" in the filter option
    Then user clicks on "Selection TST-681" on popup
    Then wait for "3" seconds
    Then user clicks on tick-checkbox
    Then user clicks on meatballs icon "TextInline TST-681"
    Then user clicks on "Rules" on popup
    Then verify pop-up "Property Rules"
    Then user clicks on the pop-up plus icon
    Then verify pop-up "Configure Rule"
    Then user clicks on "Property" on popup
    Then wait for "3" seconds
    Then verify pop-up "Select Section"
    Then user clicks on "TST-681 SecName" on popup
    Then wait for "3" seconds
    Then verify pop-up "Select Property"
    Then user clicks on "Selection TST-681" on popup
    Then wait for "3" seconds
    Then verify pop-up "Select Value"
    Then user clicks on "Name2 TST-681 val" on popup
    Then user clicks on tick-checkbox
    Then wait for "3" seconds
    Then user clicks on tick-checkbox
    Then verify pop-up "Rule Summary"
    Then user verify detail "Type" with value "Property"
    Then user verify detail "Name" with value "TextInline TST-681"
    Then user verify detail "Property" with value "Selection TST-681"
    Then user verify detail "Value" with value "Name2 TST-681 val"
    Then user verify detail "Mandatory" with value "No"
    Then user verify detail "Not Visible" with value "No"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Submission Successful" after completing the form
    Then user clicks on tick-checkbox
    Then user verify item "Rules" counter with value "1"
    Then user clicks on pop-up back icon
    Then user verify "TextInline TST-681" Rules Available Icon "true"
    Then user clicks on meatballs icon "TextInline TST-681"
    Then verify pop-up "Property Details"
    Then user clicks on the action icon of "Property Details"
    Then user verify detail "Remove" exists "true"
    Then user verify detail "Revise" exists "true"
    Then user verify detail "Suspend" exists "true"
    Then user clicks on "Revise" on popup
    Then wait for popup loading
    Then verify pop-up "Revise Property"
    Then user clears the text-input "Code"
    Then user input "Code" with value "EditTextInlineCode681"

    Then user clicks on "Description" on popup
    Then verify pop-up "Enter Description"
    Then user clears the text-area
    Then user enters "Description TST-681 edited" in the text-area
    Then user clicks on tick-checkbox

    Then user clicks on tick-checkbox

    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox

    Then wait for "3" seconds
    Then verify pop-up "Property Details"
    Then user verify detail "STATUS" with value "Unpublished"
    Then user clicks on the action icon of "Property Details"
    Then verify pop-up "Property Menu"
    Then user clicks on "Publish" on popup
    Then user clicks on tick-checkbox
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then user verify item "Rules" counter with value "1"
    Then user clicks on "Rules" on popup
    Then verify pop-up "Property Rules"
    Then user clicks on "Selection TST-681" on popup
    Then wait for popup loading
    Then verify pop-up "Configure Rule"
    Then user verify detail "Property" with value "Selection TST-681"
    Then user verify detail "Value" with value "Name2 TST-681 val"
    Then user verify detail "Active" with value "Yes"
    Then user verify the detail "Visible" with value "Yes"
    Then user verify detail "Mandatory" with value "No"
    Then user clicks on pop-up back icon
    Then verify pop-up "Property Rules"
    Then user clicks on the pop-up plus icon
    Then verify pop-up "Configure Rule"
    Then user clicks on "Property" on popup
    Then wait for "3" seconds
    Then verify pop-up "Select Section"
    Then user clicks on "TST-681 SecName" on popup
    Then wait for "3" seconds
    Then verify pop-up "Select Property"
    Then user clicks on "Selection TST-681" on popup
    Then wait for "3" seconds
    Then verify pop-up "Select Value"
    Then user clicks on "Name1 TST-681 val" on popup
    Then user clicks on tick-checkbox
    Then wait for "3" seconds
    Then user clicks on tick-checkbox
    Then verify pop-up "Rule Summary"
    Then user verify detail "Type" with value "Property"
    Then user verify detail "Name" with value "TextInline TST-681"
    Then user verify detail "Property" with value "Selection TST-681"
    Then user verify detail "Value" with value "Name1 TST-681 val"
    Then user verify detail "Mandatory" with value "No"
    Then user verify detail "Not Visible" with value "No"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Submission Successful" after completing the form
    Then user clicks on tick-checkbox
    Then user verify item "Rules" counter with value "2"

  @TST-682 @haiderejaz @e2eSprint @sprint3
  Scenario: V3 Documents : Document Config - Synchronise a Superseded Property and verify Property Details
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on the option "Documents"
    Then user lands on "Document Settings" page
    Then user clicks on Document Settings Menu Option "Properties"
    Then user lands on "Properties List" module
    Then change all "Name TST-682" named properties status to "Suspend" from "Published"
 #Create Property
    Then user clicks on the plus icon
    Then verify pop-up "Create Property"
    Then user input "Code" with value "code682"
    Then user clicks on the action "Name"
    Then verify pop-up "Enter Name"
    Then user enters "Name TST-682" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on "Description" on popup
    Then verify pop-up "Enter Description"
    Then user enters "Description TST-682" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on "Type" on popup
    Then verify pop-up "Select Type"
    Then user clicks on "Text-Input-Inline" on popup
    Then user clicks on tick-checkbox
    Then verify pop-up "Property Summary"
    #Verify Property
    Then user verify detail "Code" with value "code682"
    Then user verify detail "Name" with value "Name TST-682"
    Then user verify detail "Description" with value "Description TST-682"
    Then user verify detail "Type" with value "Text-Input-Inline"
    Then user verify detail "Persistence" with value "Never"
    Then user verify detail "Searchable" with value "Yes"
    Then user clicks on tick-checkbox
    Then verify "Submission Successful" after completing the form
    Then user clicks on tick-checkbox
    Then user verify detail "STATUS" with value "Unpublished"
    #Property Publishing
    Then user clicks on the action icon
    Then wait for "3" seconds
    Then user clicks on "Publish" on popup
    Then wait for "3" seconds
    Then verify "Publish Property" after completing the form
#    Then verify "Are you sure you want to publish the selected property? Click the 'Tick' to confirm, or return to the property's details." after completing the form Description
    Then user clicks on tick-checkbox
    Then wait for "3" seconds
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then user verify detail "STATUS" with value "Published"
    Then user clicks on pop-up back icon
    Then user clicks on Document Settings Menu Option "Documents"
    Then user lands on "Documents List" module
    Then change all "TST-682 Name" named Document status to "Discard" from "Unpublished"
    Then user clicks on the plus icon
    Then wait for popup loading
    #Create Document
    Then verify pop-up "Create Document"
    Then user input "Code" with value "TST-682"
    Then user input "Name" with value "TST-682 Name"
    Then user clicks on "Description" on popup
    Then verify pop-up "Enter Description"
    Then user enters "Desc TST-682" in the text-area
    Then user clicks on tick-checkbox
    Then user change "Amendable" toggle "true"
    Then user change "Ability To Save Draft" toggle "true"
    Then user change "Summarisable" toggle "true"
    Then user change "Abandonable" toggle "true"
    Then user clicks on tick-checkbox
    #Verify Document
    Then user verify detail "Code" with value "TST-682"
    Then user verify detail "Name" with value "TST-682 Name"
    Then user verify detail "Description" with value "Desc TST-682"
    Then user verify detail "Type" with value "Standard"
    Then user verify detail "Amendable" with value "Yes"
    Then user verify detail "Ability To Save Draft" with value "Yes"
    Then user verify detail "Summarisable" with value "Yes"
    Then user verify detail "Abandonable" with value "Yes"
    Then user clicks on tick-checkbox
    #Verify Submission
    Then verify pop-up "Submission Status"
    Then verify "Submission Successful" after completing the form
    Then user clicks on tick-checkbox
    Then user clicks on the action icon
    Then wait for popup loading
    Then user clicks on "Configure" on popup
    Then wait for popup loading
    Then verify "Document Sections" module exists "true"
    Then verify "Document Properties" module exists "true"
    #Document Section Creation
    Then user clicks on the action icon of "Document Sections"
    Then user clicks on "Create" on popup
    Then verify pop-up "Create Section"
    #Create Section
    Then user input "Code" with value "TST-682 Sec"
    Then user input "Name" with value "TST-682 SecName"
    Then user clicks on "Description" on popup
    Then verify pop-up "Enter Description"
    Then user enters "Sec Desc TST-682" in the text-area
    Then user clicks on tick-checkbox
    Then user change "Visible" toggle "true"
    Then user clicks on tick-checkbox
    Then user verify detail "Code" with value "TST-682 Sec"
    Then user verify detail "Name" with value "TST-682 SecName"
    Then user verify detail "Description" with value "Sec Desc TST-682"
    Then user verify detail "Visible" with value "Yes"
    Then user clicks on tick-checkbox
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then user verify detail "Code" with value "TST-682 Sec"
    Then user verify detail "Name" with value "TST-682 SecName"
    Then user verify detail "Description" with value "Sec Desc TST-682"
    Then user verify detail "Visible" with value "Yes"
    Then user clicks on pop-up back icon
    #Document Properties Creation
    Then user clicks on the action icon of "Document Properties"
    Then verify pop-up "Property Menu"
    Then user clicks on "Add Property" on popup
    Then verify pop-up "Property Search"
    Then user clicks on "Use Existing Property" on popup
    Then verify pop-up "Existing Property Search"
    Then user clicks on tick-checkbox
    Then wait for 10 seconds
    Then user inputs "Name TST-682" in the filter option
    Then user clicks on "Name TST-682" on popup
    Then wait for "3" seconds
    Then user clicks on tick-checkbox
    Then user verify items order of "Document Properties" with values "Name TST-682Description TST-682"
    Then user clicks on back icon
    #Properties Edit
    Then user clicks on Document Settings Menu Option "Properties"
    Then user lands on "Properties List" module
    Then wait for "3" seconds
    Then user clicks on breadcrumb "All Names" filter
    Then verify pop-up "Enter Name"
    Then user enters "Name TST-682" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on breadcrumb "All Statuses" filter
#    Then user clicks on breadcrumb "All Statuses" filter
    Then verify pop-up "Select Status"
    Then user clicks on "Published" on popup
    Then user clicks on tick-checkbox
    Then user clicks on Table first row "Name TST-682"
    Then wait for "3" seconds
    Then verify pop-up "Property Details"
    Then user clicks on the action icon of "Property Details"
    Then verify pop-up "Property Menu"
    Then user clicks on "Revise" on popup
    Then wait for "3" seconds
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Complete"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then wait for "3" seconds
    Then verify pop-up "Property Details"
    Then user clicks on the action icon of "Property Details"
    Then verify pop-up "Property Menu"
    Then user clicks on "Publish" on popup
    Then user clicks on tick-checkbox
    Then wait for "3" seconds
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then user verify detail "STATUS" with value "Published"
    Then user clicks on pop-up back icon
    Then user clicks on Document Settings Menu Option "Documents"
#    Then user lands on "Documents List" module
#    Then user clicks on breadcrumb "All Names" filter
#    Then verify pop-up "Enter Name"
#    Then user enters "TST-682 Name" in the text-area
#    Then user clicks on tick-checkbox
    Then wait for "3" seconds
    Then user clicks on Table first row "TST-682 Name"
    Then wait for "10" seconds
    Then user clicks on the action icon of "Document Details"
    Then verify pop-up "Document Menu"
    Then user clicks on "Configure" on popup
    Then user clicks on meatballs icon "Name TST-682"
    Then wait for "3" seconds
    Then verify pop-up "Property Details"
    Then user verify detail "STATUS" with value "Superseded"
    Then user clicks on the action icon of "Property Details"
    Then user verify detail "Remove" exists "true"
    Then user verify detail "Synchronise" exists "true"
    Then user clicks on "Synchronise" on popup
    Then wait for "3" seconds
    Then verify pop-up "Synchronise Summary"
    Then user verify detail "STATUS" with value "Published"
    Then user verify detail "Updated On" exists "true"
#    Then user verify detail "Updated On" with value "K Kualitatem"
    #Property Information
    Then user verify detail "Code" with value "code682"
    Then user verify detail "Name" with value "Name TST-682"
    Then user verify detail "Description" with value "Description TST-682"
    Then user verify detail "Type" with value "Text-Input-Inline"
    Then user verify detail "Mandatory" with value "No"
    Then user verify detail "Visible" with value "Yes"
    Then user clicks on tick-checkbox
    Then wait for "5" seconds
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then user clicks on pop-up back icon
    Then user clicks on meatballs icon "Name TST-682"
    Then wait for "3" seconds
    Then verify pop-up "Property Details"
    Then user verify detail "STATUS" with value "Published"
    Then user verify detail "Updated On" exists "true"
    Then user verify detail "Updated BY" with value "K Kualitatem"
    Then user verify detail "Code" with value "code682"
    Then user verify detail "Name" with value "Name TST-682"
    Then user verify detail "Description" with value "Description TST-682"
    Then user verify detail "Type" with value "Text-Input-Inline"
    Then user verify detail "Mandatory" with value "No"
    Then user verify detail "Visible" with value "Yes"
    Then wait for "5" seconds
    Then user verify item "Linked Documents" counter with value "1"
    Then user clicks on "Linked Documents" on popup
    Then user verify detail "TST-682 Name" exists "true"

  @TST-683 @haiderejaz @e2eSprint @sprint5
  Scenario: V3 Documents : Synchronise a Superseded property with added rules & Verify Property Info
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on the option "Documents"
    Then user lands on "Document Settings" page
    Then user clicks on Document Settings Menu Option "Properties"
    Then user lands on "Properties List" module

    Then filter item "All Names" with value "Selection TST-683_prop"
    Then create a property with Code "code1_TST-683" Name "Selection TST-683_prop" Desc "Desc TST-683" and Type "Selection" if not exist
    Then Add a value in property "Selection TST-683_prop" with Display Name "TST-683 ValName1" Value "TST-683 Val1" ICD10 Code "TST-683" Read Code "TST-683" Snommed Code "TST-683" and isEnabled "Yes" if not exist
    Then Add a value in property "Selection TST-683_prop" with Display Name "TST-683 ValName2" Value "TST-683 Val2" ICD10 Code "TST-683" Read Code "TST-683" Snommed Code "TST-683" and isEnabled "Yes" if not exist
    Then publish "Selection TST-683_prop" if it is not published

    Then filter item "Selection TST-683_prop" with value "InputInline TST-683_prop"
    Then create a property with Code "code2_TST-683" Name "InputInline TST-683_prop" Desc "Desc TST-683" and Type "Text-Input-Inline" if not exist
    Then publish "InputInline TST-683_prop" if it is not published

    Then clear filtered item "InputInline TST-683_prop"

    Then user clicks on Document Settings Menu Option "Documents"
    Then user lands on "Documents List" module
    Then change all "TST-683 DocName" named Document status to "Discard" from "Unpublished"
    Then user clicks on the plus icon
    Then wait for popup loading
    #Create Document
    Then verify pop-up "Create Document"
    Then user input "Code" with value "TST-683"
    Then user input "Name" with value "TST-683 DocName"
    Then user clicks on "Description" on popup
    Then verify pop-up "Enter Description"
    Then user enters "Desc TST-683" in the text-area
    Then user clicks on tick-checkbox
    Then user change "Amendable" toggle "true"
    Then user change "Ability To Save Draft" toggle "true"
    Then user change "Summarisable" toggle "true"
    Then user change "Abandonable" toggle "true"
    Then user clicks on tick-checkbox
    #Verify Document
    Then user verify detail "Code" with value "TST-683"
    Then user verify detail "Name" with value "TST-683 DocName"
    Then user verify detail "Description" with value "Desc TST-683"
    Then user verify detail "Type" with value "Standard"
    Then user verify detail "Amendable" with value "Yes"
    Then user verify detail "Ability To Save Draft" with value "Yes"
    Then user verify detail "Summarisable" with value "Yes"
    Then user verify detail "Abandonable" with value "Yes"
    Then user clicks on tick-checkbox
    #Verify Submission
    Then verify pop-up "Submission Status"
    Then verify "Submission Successful" after completing the form
    Then user clicks on tick-checkbox
    Then user clicks on the action icon
    Then wait for popup loading
    Then user clicks on "Configure" on popup
    Then verify "Document Sections" module exists "true"
    Then verify "Document Properties" module exists "true"
    Then user clicks on the action icon of "Document Sections"
    Then user clicks on "Create" on popup
    Then verify pop-up "Create Section"
    #Create Section
    Then user input "Code" with value "TST-683 Sec"
    Then user input "Name" with value "TST-683 SecName"
    Then user clicks on "Description" on popup
    Then verify pop-up "Enter Description"
    Then user enters "Sec Desc TST-683" in the text-area
    Then user clicks on tick-checkbox
    Then user change "Visible" toggle "true"
    Then user clicks on tick-checkbox
    Then user verify detail "Code" with value "TST-683 Sec"
    Then user verify detail "Name" with value "TST-683 SecName"
    Then user verify detail "Description" with value "Sec Desc TST-683"
    Then user verify detail "Visible" with value "Yes"
    Then user clicks on tick-checkbox
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then user clicks on pop-up back icon
    #Document Properties Creation
    Then user clicks on the action icon of "Document Properties"
    Then wait for popup loading
    Then verify pop-up "Property Menu"
    Then user clicks on "Add Property" on popup
    Then verify pop-up "Property Search"
    Then user clicks on "Use Existing Property" on popup
    Then verify pop-up "Existing Property Search"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then user inputs "Selection TST-683_prop" in the filter option
    Then user clicks on "Selection TST-683_prop" on popup
    Then wait for popup loading
    Then user clicks on tick-checkbox
   #Document Properties Creation
#    Then user clicks on the action icon of "Document Properties"
#    Then wait for popup loading
#    Then wait for popup loading
#    Then user clicks on the action icon of "Document Properties"
#    Then wait for popup loading
#    Then user clicks on meatballs icon "Selection TST-683_prop"
    Then wait for popup loading
    Then user clicks on the action icon of "Document Properties"
#    Then user clicks on meatballs icon "Selection TST-674_prop"
#    Then wait for popup loading
#    Then verify "Success" after completing
#    Then user clicks on tick-checkbox
    Then user clicks on the action icon for tab "Document Properties"
    Then wait for popup loading
    Then verify pop-up "Property Menu"
    Then user clicks on "Add Property" on popup
    Then verify pop-up "Property Search"
    Then user clicks on "Use Existing Property" on popup
    Then verify pop-up "Existing Property Search"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then user inputs "InputInline TST-683_prop" in the filter option
    Then user clicks on "InputInline TST-683_prop" on popup
    Then wait for popup loading
    Then user clicks on tick-checkbox
    Then user clicks on meatballs icon "InputInline TST-683_prop"
    Then wait for popup loading
    Then verify "Success" after completing
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then user clicks on meatballs icon "InputInline TST-683_prop"
    Then wait for popup loading
    Then user clicks on "Rules" on popup
    Then verify pop-up "Property Rules"
    Then user clicks on the pop-up plus icon
    Then verify pop-up "Configure Rule"
    Then user clicks on "Property" on popup
    Then wait for popup loading
    Then verify pop-up "Select Section"
    Then user clicks on "TST-683 SecName" on popup
    Then wait for "3" seconds
    Then verify pop-up "Select Property"
    Then user clicks on "Selection TST-683_prop" on popup
    Then wait for "3" seconds
    Then verify pop-up "Select Value"
    Then user clicks on "TST-683 ValName2" on popup
    Then user clicks on tick-checkbox
    Then wait for "3" seconds
    Then user clicks on "Make property not visible" on popup
    Then user clicks on tick-checkbox
    Then verify pop-up "Rule Summary"
    Then user verify detail "Type" with value "Property"
    Then user verify detail "Name" with value "InputInline TST-683_prop"
    Then user verify detail "Property" with value "Selection TST-683_prop"
    Then user verify detail "Value" with value "TST-683 ValName2"
    Then user verify detail "Mandatory" with value "No"
    Then user verify detail "Not Visible" with value "Yes"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Submission Successful" after completing the form
    Then user clicks on tick-checkbox
    Then user verify item "Rules" counter with value "1"
    Then user clicks on pop-up back icon
    Then user verify "InputInline TST-683_prop" Rules Available Icon "true"
    Then user clicks on back icon
    #Edit Property
    Then user clicks on Document Settings Menu Option "Properties"
    Then user lands on "Properties List" module
    Then filter item "All Names" with value "InputInline TST-683_prop"
    Then user clicks on Table first row "InputInline TST-683_prop"
    Then wait for popup loading
    Then user clicks on the action icon of "Property Details"
    Then wait for popup loading
    Then user clicks on "Revise" on popup
    Then user clears the text-input "Code"
    Then user input "Code" with value "code_TST-683 Edited"
    Then user clicks on tick-checkbox
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then user clicks on the action icon of "Property Details"
    Then user clicks on "Publish" on popup
    Then wait for popup loading
    Then user clicks on tick-checkbox
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then user verify detail "Status" with value "Published"
    Then user clicks on pop-up back icon
    Then user clicks on Document Settings Menu Option "Documents"

#    Then filter item "All Names" with value "TST-683 DocName"
    Then user clicks on Table first row "TST-683 DocName"
    Then wait for popup loading
    Then user clicks on the action icon of "Document Details"
    Then user clicks on "Configure" on popup
    Then wait for popup loading
    Then user clicks on meatballs icon "InputInline TST-683_prop"
    Then wait for popup loading
    Then user verify detail "Status" with value "Superseded"
    Then user clicks on the action icon of "Property Details"
    Then wait for popup loading
    Then user verify detail "Synchronise" exists "true"
    Then user clicks on "Synchronise" on popup
    Then wait for popup loading
    Then verify pop-up "Synchronise Summary"
    Then user verify detail "Status" with value "Published"
    Then user clicks on tick-checkbox
    Then verify "Success" after completing the form
    Then verify pop-up "Synchronise Summary"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then user verify item "Rules" counter with value "1"
    Then user clicks on "Rules" on popup
    Then verify pop-up "Property Rules"
    Then user clicks on "Selection TST-683_prop" on popup
    Then wait for popup loading
    Then verify pop-up "Configure Rule"
    Then user verify detail "Property" with value "Selection TST-683_prop"
    Then user verify detail "Value" with value "TST-683 ValName2"
    Then user verify detail "Active" with value "Yes"
    Then user verify detail "Visible" with value "No"
    Then user verify detail "Mandatory" with value "No"

  @TST-684 @haiderejaz @e2eSprint @sprint5
  Scenario: V3 Documents : Document Config -  Add / Verify Rules associated to a Document Section
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on the option "Documents"
    Then user lands on "Document Settings" page
    Then user clicks on Document Settings Menu Option "Properties"
    Then user lands on "Properties List" module

    Then filter item "All Names" with value "Selection TST-684_prop"
    Then create a property with Code "code1_TST-684" Name "Selection TST-684_prop" Desc "Desc TST-684" and Type "Selection" if not exist
    Then Add a value in property "Selection TST-684_prop" with Display Name "TST-684 ValName1" Value "TST-684 Val1" ICD10 Code "TST-684" Read Code "TST-684" Snommed Code "TST-684" and isEnabled "Yes" if not exist
    Then Add a value in property "Selection TST-684_prop" with Display Name "TST-684 ValName2" Value "TST-684 Val2" ICD10 Code "TST-684" Read Code "TST-684" Snommed Code "TST-684" and isEnabled "Yes" if not exist
    Then publish "Selection TST-684_prop" if it is not published

    Then filter item "Selection TST-684_prop" with value "InputInline TST-684_prop"
    Then create a property with Code "code2_TST-684" Name "InputInline TST-684_prop" Desc "Desc TST-684" and Type "Text-Input-Inline" if not exist
    Then publish "InputInline TST-684_prop" if it is not published

    Then clear filtered item "InputInline TST-684_prop"

    Then user clicks on Document Settings Menu Option "Documents"
    Then user lands on "Documents List" module
    Then change all "TST-684 DocName" named Document status to "Discard" from "Unpublished"
    Then user clicks on the plus icon
    Then wait for popup loading
    #Create Document
    Then verify pop-up "Create Document"
    Then user input "Code" with value "TST-684"
    Then user input "Name" with value "TST-684 DocName"
    Then user clicks on "Description" on popup
    Then verify pop-up "Enter Description"
    Then user enters "Desc TST-684" in the text-area
    Then user clicks on tick-checkbox
    Then user change "Amendable" toggle "true"
    Then user change "Ability To Save Draft" toggle "true"
    Then user change "Summarisable" toggle "true"
    Then user change "Abandonable" toggle "true"
    Then user clicks on tick-checkbox
    #Verify Document
    Then user verify detail "Code" with value "TST-684"
    Then user verify detail "Name" with value "TST-684 DocName"
    Then user verify detail "Description" with value "Desc TST-684"
    Then user verify detail "Type" with value "Standard"
    Then user verify detail "Amendable" with value "Yes"
    Then user verify detail "Ability To Save Draft" with value "Yes"
    Then user verify detail "Summarisable" with value "Yes"
    Then user verify detail "Abandonable" with value "Yes"
    Then user clicks on tick-checkbox
    #Verify Submission
    Then verify pop-up "Submission Status"
    Then verify "Submission Successful" after completing the form
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then user clicks on the action icon
    Then wait for popup loading
    Then user clicks on "Configure" on popup
    Then wait for popup loading
    Then verify "Document Sections" module exists "true"
    Then verify "Document Properties" module exists "true"
    Then user clicks on the action icon of "Document Sections"
    Then user clicks on "Create" on popup
    Then verify pop-up "Create Section"
    #Create Section
    Then user input "Code" with value "TST-684 Sec"
    Then user input "Name" with value "TST-684 SecName"
    Then user clicks on "Description" on popup
    Then verify pop-up "Enter Description"
    Then user enters "Sec Desc TST-684" in the text-area
    Then user clicks on tick-checkbox
    Then user change "Visible" toggle "true"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then user verify detail "Code" with value "TST-684 Sec"
    Then user verify detail "Name" with value "TST-684 SecName"
    Then user verify detail "Description" with value "Sec Desc TST-684"
    Then user verify detail "Visible" with value "Yes"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then user clicks on pop-up back icon
    #Document Properties Creation
    Then user clicks on the action icon of "Document Properties"
    Then verify pop-up "Property Menu"
    Then user clicks on "Add Property" on popup
    Then verify pop-up "Property Search"
    Then user clicks on "Use Existing Property" on popup
    Then verify pop-up "Existing Property Search"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then user inputs "Selection TST-684_prop" in the filter option
    Then user clicks on "Selection TST-684_prop" on popup
    Then wait for popup loading
    Then user clicks on tick-checkbox
     #Create Section
    Then user clicks on the action icon of "Document Sections"
    Then wait for popup loading
    Then verify "Success" after completing
    Then user clicks on tick-checkbox
    Then user clicks on the action icon of "Document Sections"
    Then wait for popup loading
    Then user clicks on "Create" on popup
    Then verify pop-up "Create Section"
    Then user input "Code" with value "TST-684 Sec2"
    Then user input "Name" with value "TST-684 SecName2"
    Then user clicks on "Description" on popup
    Then verify pop-up "Enter Description"
    Then user enters "Sec Desc2 TST-684" in the text-area
    Then user clicks on tick-checkbox
    Then user change "Visible" toggle "true"
    Then user clicks on tick-checkbox
    Then user verify detail "Code" with value "TST-684 Sec2"
    Then user verify detail "Name" with value "TST-684 SecName2"
    Then user verify detail "Description" with value "Sec Desc2 TST-684"
    Then user verify detail "Visible" with value "Yes"
    Then user clicks on tick-checkbox
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then user clicks on pop-up back icon
    #Document Properties Creation
    Then user clicks on the action icon of "Document Properties"
    Then verify pop-up "Property Menu"
    Then user clicks on "Add Property" on popup
    Then verify pop-up "Property Search"
    Then user clicks on "Use Existing Property" on popup
    Then verify pop-up "Existing Property Search"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then wait for popup loading
    Then user inputs "InputInline TST-684_prop" in the filter option
    Then user clicks on "InputInline TST-684_prop" on popup
    Then wait for popup loading
    Then user clicks on tick-checkbox
    #Section Rule
    Then user clicks on meatballs icon "TST-684 SecName2"
    Then wait for popup loading
    Then verify "Success" after completing
    Then user clicks on tick-checkbox
    Then user clicks on meatballs icon "TST-684 SecName2"
    Then wait for popup loading
    Then user clicks on "Rules" on popup
    Then wait for popup loading
    Then verify "Nothing Found" after completing the form
    Then verify pop-up "Applied Section Rules"
    Then user clicks on the pop-up plus icon
    Then user clicks on "TST-684 SecName" on popup
    Then wait for popup loading
    Then verify pop-up "Select Property"
    Then user clicks on "Selection TST-684_prop" on popup
    Then wait for popup loading
    Then verify pop-up "Select Value"
    Then user clicks on "TST-684 ValName1" on popup
    Then user clicks on tick-checkbox
    Then verify pop-up "Create Rule"
    Then user clicks on "Make section not visible" on popup
    Then user clicks on tick-checkbox
    Then verify pop-up "Rule Summary"
    Then user verify detail "Type" with value "Section"
    Then user verify detail "Name" with value "TST-684 SecName2"
    Then user verify detail "Property" with value "Selection TST-684_prop"
    Then user verify detail "Value" with value "TST-684 ValName1"
    Then user verify detail "Not Visible" with value "Yes"
    Then user clicks on tick-checkbox
    Then verify "Success" after completing the form
    Then verify popup option "Create Another Rule" is visible
    Then verify popup option "Return to Document" is visible
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Applied Section Rules"
    Then user verify detail "Selection TST-684_prop" exists "true"
    Then user clicks on pop-up back icon
    Then user verify item "Rules" counter with value "1"

  @TST-685 @haiderejaz @e2eSprint @sprint4
  Scenario: V3 Documents : Filter Package List by selecting Table Parameters (Filter Lozenge buttons)
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on "Documents" icon
    Then user lands on "Document Settings" page
    Then user lands on "Package List" module
    Then user clicks on Document Settings Menu Option "Packages"
    Then user lands on "Package List" module
    Then filter item "All Names" with value "TST-685 pack"
    Then create a Package with Code "TST-685 code" Name "TST-685 pack" Desc "Desc TST-685" and Origin "Documents" if not exist
    Then clear filtered item "TST-685 pack"
    Then user verify detail "Table Parameters" exists "true"
    Then user verify detail "All Names" exists "true"
    Then user verify detail "All Codes" exists "true"
    Then user verify detail "All Categories" exists "true"
    Then user verify detail "All Specialties" exists "true"
    Then user verify detail "All Statuses" exists "true"
    Then user verify table header "Name" exists "true"
    Then user verify table header "Code" exists "true"
    Then user verify table header "Category" exists "true"
    Then user verify table header "Specialty" exists "true"
    Then user verify table header "Status" exists "true"
    Then user verify table header "Updated" exists "true"
    Then user verify table header with icon "Document" exists "true"
    Then user clicks on breadcrumb "All Names" filter
    Then user enters "Image_TST-685_Name" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on breadcrumb "All Codes" filter
    Then user enters "Image_TST-685_Code" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on breadcrumb "All Statuses" filter
    Then user clicks on "Unpublished" on popup
    Then verify column "Name" contains "Image_TST-685_Name" value
    Then verify column "Code" contains "Image_TST-685_Code" value
    Then verify column "Category" contains "Not Known" value
    Then verify column "Specialty" contains "Not Known" value
    Then verify column "Status" equals "Unpublished" value

  @TST-687 @haiderejaz @e2eSprint @sprint3
  Scenario: V3 Documents : Filter Properties List by selecting Table Parameters
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on the option "Documents"
    Then user lands on "Document Settings" page
    Then user clicks on Document Settings Menu Option "Properties"
    Then user lands on "Properties List" module
    Then filter item "All Names" with value "TST-687 prop"
    Then create a property with Code "TST-687" Name "TST-687 prop" Desc "Desc TST-687" and Type "Text-Input-Inline" if not exist
    Then clear filtered item "TST-687 prop"
    Then user verify detail "Table Parameters" exists "true"
    Then user verify detail "All Names" exists "true"
    Then user verify detail "All Codes" exists "true"
    Then user verify detail "All Types" exists "true"
    Then user verify detail "All Statuses" exists "true"
    Then user verify table header "Name" exists "true"
    Then user verify table header "Code" exists "true"
    Then user verify table header "Type" exists "true"
    Then user verify table header "Status" exists "true"
    Then user verify table header "Updated" exists "true"
    Then user clicks on breadcrumb "All Names" filter
    Then user enters "TST-687 prop" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on breadcrumb "All Codes" filter
    Then user enters "TST-687" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on breadcrumb "All Types" filter
    Then user clicks on "Text-Input-Inline" on popup
    Then user clicks on tick-checkbox
    Then user clicks on breadcrumb "All Statuses" filter
    Then user clicks on "Unpublished" on popup
    Then verify column "Name" contains "TST-687 prop" value
    Then verify column "Code" contains "TST-687" value
    Then verify column "Type" contains "Text-Input-Inline" value
    Then verify column "Status" equals "Unpublished" value

  @TST-688 @haiderejaz @e2eSprint @sprint4
  Scenario: V3 Documents : Images -  Filter Image List by selecting Table Parameters
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on "Documents" icon
    Then user lands on "Document Settings" page
    Then user lands on "Package List" module
    Then user clicks on Document Settings Menu Option "Images"
    Then user lands on "Images List" module
    Then filter item "All Names" with value "Image_TST-688_Name"
    Then create an image with code "Image_TST-688_Code" name "Image_TST-688_Name" desc "Image_TST-688_Description" anatomical site "Eyelid" orientation "Portrait" image "uploadImage.jpg" if not exist
    Then clear filtered item "Image_TST-688_Name"
    Then user verify detail "Table Parameters" exists "true"
    Then user verify detail "All Names" exists "true"
    Then user verify detail "All Codes" exists "true"
    Then user verify detail "All Anatomical Sites" exists "true"
    Then user verify detail "All Statuses" exists "true"
    Then user verify table header "Name" exists "true"
    Then user verify table header "Code" exists "true"
    Then user verify table header "Anatomical Site" exists "true"
    Then user verify table header "Status" exists "true"
    Then user verify table header "Updated" exists "true"
    Then user clicks on breadcrumb "All Names" filter
    Then user enters "Image_TST-688_Name" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on breadcrumb "All Codes" filter
    Then user enters "Image_TST-688_Code" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on breadcrumb "All Anatomical Sites" filter
    Then user clicks on "Eyelid" on popup
    Then user clicks on tick-checkbox
    Then user clicks on breadcrumb "All Statuses" filter
    Then user clicks on "Unpublished" on popup
    Then verify column "Name" contains "Image_TST-688_Name" value
    Then verify column "Code" contains "Image_TST-688_Code" value
    Then verify column "Anatomical Site" contains "Eyelid" value
    Then verify column "Status" equals "Unpublished" value

  @TST-689 @haiderejaz @e2eSprint @sprint5
  Scenario: V3 Documents : Reinstate a suspended Package
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on the option "Documents"
    Then user lands on "Document Settings" page
    Then user clicks on Document Settings Menu Option "Packages"
    Then user lands on "Package List" module
    #Create Package
    Then user clicks on the plus icon
    Then verify pop-up "Create Package"
    Then user input "Code" with value "code689"
    Then user input "Name" with value "Name TST-689"
    Then user clicks on "Description" on popup
    Then verify pop-up "Enter Description"
    Then user enters "Description TST-689" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on the action "Category"
    Then verify pop-up "Select Category"
    Then user clicks on "Infection Control" on popup
    Then user clicks on tick-checkbox
    Then user clicks on the action "Specialty"
    Then verify pop-up "Select Specialty"
    Then user inputs "Infectious Diseases" in the filter option
    Then user clicks on "Infectious Diseases" on popup
    Then user clicks on tick-checkbox
    Then user clicks on the action "Origin"
    Then verify pop-up "Select Origin"
    Then user clicks on "Documents" on popup
    Then user clicks on tick-checkbox
    #Verify Package Summary
    Then verify pop-up "Package Summary"
    Then user verify detail "Code" with value "code689"
    Then user verify detail "Name" with value "Name TST-689"
    Then user verify detail "Description" with value "Description TST-689"
    Then user verify detail "Category" with value "Infection Control"
    Then user verify detail "Specialty" with value "Infectious Diseases"
    Then user verify detail "Origin" with value "Documents"
    Then user clicks on tick-checkbox
    Then verify "Submission Successful" after completing the form
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then user clicks on the action icon of "Package Details"
    Then user clicks on "Publish" on popup
    Then verify pop-up "Publish Package"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Publish Successful" after completing the form
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then wait for popup loading
    Then user verify detail "Status" with value "Published"
      #make it suspended
    Then user clicks on the action icon of "Package Details"
    Then user verify detail "Suspend" exists "true"
    Then user clicks on "Suspend" on popup
    Then verify pop-up "Suspend Package"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Submission Status"
    Then verify "Suspend Successful" after completing the form
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then user verify detail "Status" with value "Suspended"
    # make it reinstate
    Then user clicks on the action icon of "Package Details"
    Then user verify detail "Reinstate" exists "true"
    Then user clicks on "Reinstate" on popup
    Then verify pop-up "Reinstate Package"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Submission Status"
    Then verify "Reinstate Successful" after completing the form
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then user verify detail "Status" with value "Unpublished"

  @TST-704 @haiderejaz @e2eSprint @sprint3
  Scenario: V3 Documents : Document Config - Reorder Document Properties
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on the option "Documents"
    Then user lands on "Document Settings" page
    Then user clicks on Document Settings Menu Option "Documents"
    Then user lands on "Documents List" module
    Then user clicks on the plus icon
    #Create Document
    Then verify pop-up "Create Document"
    Then user input "Code" with value "TST-704"
    Then user input "Name" with value "TST-704 Name"
    Then user clicks on "Description" on popup
    Then verify pop-up "Enter Description"
    Then user enters "Desc TST-704" in the text-area
    Then user clicks on tick-checkbox
    Then user change "Amendable" toggle "true"
    Then user change "Ability To Save Draft" toggle "true"
    Then user change "Summarisable" toggle "true"
    Then user change "Abandonable" toggle "true"
    Then user clicks on tick-checkbox
    #Verify Document
    Then user verify detail "Code" with value "TST-704"
    Then user verify detail "Name" with value "TST-704 Name"
    Then user verify detail "Description" with value "Desc TST-704"
    Then user verify detail "Type" with value "Standard"
    Then user verify detail "Amendable" with value "Yes"
    Then user verify detail "Ability To Save Draft" with value "Yes"
    Then user verify detail "Summarisable" with value "Yes"
    Then user verify detail "Abandonable" with value "Yes"
    Then user clicks on tick-checkbox
    #Verify Submission
    Then verify pop-up "Submission Status"
    Then verify "Submission Successful" after completing the form
    Then user clicks on tick-checkbox
    Then user clicks on the action icon
    Then user clicks on "Configure" on popup
    Then verify "Document Sections" module exists "true"
    Then verify "Document Properties" module exists "true"
    #Document Section Creation
    Then user clicks on the action icon of "Document Sections"
    Then user clicks on "Create" on popup
    Then verify pop-up "Create Section"
    #Create Section
    Then user input "Code" with value "TST-704 Sec"
    Then user input "Name" with value "TST-704 SecName"
    Then user clicks on "Description" on popup
    Then verify pop-up "Enter Description"
    Then user enters "Sec Desc TST-704" in the text-area
    Then user clicks on tick-checkbox
    Then user change "Visible" toggle "true"
    Then user clicks on tick-checkbox
    Then user verify detail "Code" with value "TST-704 Sec"
    Then user verify detail "Name" with value "TST-704 SecName"
    Then user verify detail "Description" with value "Sec Desc TST-704"
    Then user verify detail "Visible" with value "Yes"
    Then user clicks on tick-checkbox
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then user verify detail "Code" with value "TST-704 Sec"
    Then user verify detail "Name" with value "TST-704 SecName"
    Then user verify detail "Description" with value "Sec Desc TST-704"
    Then user verify detail "Visible" with value "Yes"
    Then user clicks on pop-up back icon
    #Document Properties Creation
    Then user clicks on the action icon of "Document Properties"
    Then wait for popup loading
    Then verify pop-up "Property Menu"
    Then user clicks on "Add Property" on popup
    Then verify pop-up "Property Search"
    Then user clicks on "Create Property" on popup
    Then verify pop-up "Create Property"
    Then user input "Code" with value "TST-704 Prop1"
    Then user clicks on "Name" on popup
    Then verify pop-up "Enter Name"
    Then user enters "Prop1 Name TST-704" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on "Description" on popup
    Then verify pop-up "Enter Description"
    Then user enters "Prop1 Desc TST-704" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on "Type" on popup
    Then verify pop-up "Select Type"
    Then user clicks on "Selection" on popup
    Then user clicks on tick-checkbox
    Then user change "Searchable" toggle "true"
    Then user change "Mandatory" toggle "false"
    Then user change "Visible" toggle "true"
    Then user clicks on tick-checkbox
    #Verify Property Summary
#    Then verify pop-up "Property Summary"
#    Then user verify detail "Code" with value "TST-704 Prop1"
#    Then user verify detail "Name" with value "Prop1 Name TST-704"
#    Then user verify detail "Description" with value "Prop1 Desc TST-704"
#    Then user verify detail "Type" with value "Selection"
#    Then user verify detail "Persistence" with value "Never"
#    Then user verify detail "Searchable" with value "Yes"
#    Then user verify detail "Mandatory" with value "No"
#    Then user verify detail "Visible" with value "Yes"
#    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify "Submission Successful" after completing the form
    #Another Property Creation
    Then user clicks on "Create Another Property" on popup
    Then verify pop-up "Create Property"
    Then user input "Code" with value "TST-704 Prop2"
    Then user clicks on "Name" on popup
    Then verify pop-up "Enter Name"
    Then user enters "Prop2 Name TST-704" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on "Description" on popup
    Then verify pop-up "Enter Description"
    Then user enters "Prop2 Desc TST-704" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on "Type" on popup
    Then verify pop-up "Select Type"
    Then user clicks on "Selection" on popup
    Then user clicks on tick-checkbox
    Then wait for "5" seconds
    Then user change "Searchable" toggle "true"
#    Then user clicks on the toggle button "Searchable" to "false"
    Then user change "Mandatory" toggle "false"
    Then user change "Visible" toggle "true"
    Then user clicks on tick-checkbox
    #Verify Property Summary
#    Then verify pop-up "Property Summary"
#    Then user verify detail "Code" with value "TST-704 Prop2"
#    Then user verify detail "Name" with value "Prop2 Name TST-704"
#    Then user verify detail "Description" with value "Prop2 Desc TST-704"
#    Then user verify detail "Type" with value "Selection"
#    Then user verify detail "Persistence" with value "Never"
#    Then user verify detail "Searchable" with value "Yes"
#    Then user verify detail "Mandatory" with value "No"
#    Then user verify detail "Visible" with value "Yes"
#    Then user clicks on tick-checkbox
    Then verify "Submission Successful" after completing the form
    Then user clicks on tick-checkbox
    Then wait for "3" seconds
    Then user verify items order of "Document Properties" with values "Prop1 Name TST-704Prop1 Desc TST-704,Prop2 Name TST-704Prop2 Desc TST-704"
    Then user clicks on the action icon of "Document Properties"
    # Item ReOrder
    Then verify pop-up "Property Menu"
    Then user clicks on "Reorder" on popup
    Then verify pop-up "Reorder Properties"
    Then wait for "1" seconds
    Then user moves item down "Prop1 Name TST-704"
    Then user clicks on tick-checkbox
    # Verify Reordering
    Then wait for "3" seconds
    Then user verify items order of "Document Properties" with values "Prop2 Name TST-704Prop2 Desc TST-704,Prop1 Name TST-704Prop1 Desc TST-704"

  @TST-794 @haiderejaz @e2eSprint @sprint6
  Scenario: V3 Documents : Amending a Document with a Persistent Property
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on the option "Documents"
    Then user lands on "Document Settings" page
    Then user clicks on Document Settings Menu Option "Properties"
    Then user lands on "Properties List" module
    Then filter item "All Names" with value "TST-794_prop1"
    Then create a property with Code "code1_TST-794" Name "TST-794_prop1" Desc "Desc TST-794" and Type "Text-Input-Inline" if not exist
    Then edit property "TST-794_prop1" persistance to "Always"
    Then publish "TST-794_prop1" if it is not published
    Then user clicks on Document Settings Menu Option "Documents"
    Then user lands on "Documents List" module
    Then filter item "All Names" with value "Doc_TST-794_Name1"
    Then create a document with Code "Doc_TST-794_Code1" Name "Doc_TST-794_Name1" Desc "Doc_TST-794_Description1" Type "Standard" Ammendable "active" Ability To Save Draft "active" Summarisable "active" Abandonable "active" if not exist
    Then configure a document "Doc_TST-794_Name1" with sec name "TST-794_sec1" code "TST-794 code1" and existing property "TST-794_prop1" if not published
    Then Synchronize Property "TST-794_prop1" to Document "Doc_TST-794_Name1"
    Then publish "Doc_TST-794_Name1" if it is not published
    Then user clicks on Document Settings Menu Option "Packages"
    Then user lands on "Package List" module
    Then filter item "All Names" with value "TST-794 pack1"
    Then create a Package with Code "TST-794 code1" Name "TST-794 pack1" Desc "Desc TST-794" and Origin "Documents" if not exist
    Then User Associates Document "Doc_TST-794_Name1" to Package "TST-794 pack1"
    Then Synchronize Document "Doc_TST-794_Name1" to Package "TST-794 pack1"
    Then publish "TST-794 pack1" if it is not published
    Then user clicks on "Patient Quick Search" in menu bar section
    Then wait for popup loading
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "9999999999"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then wait for "3" seconds
    Then user clicks on the action icon of "Patient Summary"
    Then user clicks on "Documents" on popup
    Then wait for loading in "Document List" section
    Then filter item "All Names" with value "TST-794 pack1"
    Then Delete All "TST-794 pack1" Document
    Then user clicks on back icon
    Then wait for popup loading
    Then user clicks on the plus icon of "Document Information"
    Then wait for "3" seconds
    Then verify pop-up "Search Documents"
    Then user clicks on "Search All Documents" on popup
    Then wait for popup loading
#    Then verify pop-up "Document Search"
    Then user clicks on "Document Name" on popup
    Then user input "Document Name" with value "TST-794 pack1"
    Then user clicks on tick-checkbox
    Then user clicks on "TST-794 pack1" on popup
    Then wait for popup loading
    Then user clicks on "Start" on popup
    Then wait for popup loading
    Then wait for popup loading
    Then user clicks on input "TST-794_prop1" document properties
    Then user clear input "TST-794_prop1" document properties
    Then user input "TST-794_prop1" with value "first attempt" document properties
    Then user clicks on the action icon of "Patient Documents"
    Then verify pop-up "Save Document"
    Then user clicks on "Complete" on popup
    Then verify pop-up "Document Submission"
    Then user clicks on tick-checkbox
    Then verify "Completed Successfully" after completing the form
    Then user clicks on "Return To Menu" on popup
    Then wait for popup loading
    Then wait for "3" seconds
    Then user clicks on the action icon of "Patient Summary"
    Then user clicks on "Documents" on popup
    Then user lands on "Document List" module
    Then wait for loading in "Document List" section
    Then filter item "All Names" with value "TST-794 pack1"
    Then user clicks on breadcrumb "All Statuses" filter
    Then verify pop-up "Select Status"
    Then user clicks on "Complete" on popup
    Then user clicks on tick-checkbox
    Then user clicks on Table first row "TST-794 pack1"
    Then wait for popup loading
    Then user clicks on "Amend" on popup
    Then wait for popup loading
    Then user clicks on input "TST-794_prop1" document properties
    Then user clear input "TST-794_prop1" document properties
    Then user input "TST-794_prop1" with value "amended doc property" document properties
    Then user clicks on the action icon of "Patient Documents"
    Then wait for popup loading
    Then verify pop-up "Save Document"
    Then user clicks on "Save Amendments" on popup
    Then wait for popup loading
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify "Completed Successfully" after completing the form
    Then user clicks on "Return To Menu" on popup
#    Then wait for popup loading
#    Then user clicks on cross icon
#    Then user clicks on "Complete" filter
#    Then wait for popup loading
#    Then user clicks on "Clear Values" on popup
#    Then user clicks on tick-checkbox
#    Then wait for popup loading
    Then verify column "Status" equals "Amended" value
    Then verify column "Updated" contains "seconds ago" value
    Then user clicks on back icon
    Then user clicks on the action icon of "Patient Summary"
    Then user clicks on "Records" on popup
    Then wait for loading in "Event List" section
    Then user lands on "Event List" module
    Then wait for popup loading
    Then user inputs "TST-794 pack1" in the filter option
    Then user clicks on Table first row "TST-794 pack1"
    Then wait for loading in "Event Report" section
    Then verify event report "TST-794_prop1" with value "amended doc property"
    Then switch to iframe "event-list-iframe"
    Then user verify detail "STATUS" with value "Amended"
    Then switch to main context

  @TST-795 @haiderejaz @e2eSprint @sprint6
  Scenario: V3 Documents : V3 Documents : Amending completed Documents - Verify Further Action Options
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on the option "Documents"
    Then user lands on "Document Settings" page
    Then user clicks on Document Settings Menu Option "Properties"
    Then user lands on "Properties List" module
    Then filter item "All Names" with value "TST-795_prop1"
    Then create a property with Code "code1_TST-795" Name "TST-795_prop1" Desc "Desc TST-795" and Type "Text-Input-Inline" if not exist
    Then publish "TST-795_prop1" if it is not published
    Then user clicks on Document Settings Menu Option "Documents"
    Then user lands on "Documents List" module
    Then filter item "All Names" with value "Doc_TST-795_Name1"
    Then create a document with Code "Doc_TST-795_Code1" Name "Doc_TST-795_Name1" Desc "Doc_TST-795_Description1" Type "Standard" Ammendable "active" Ability To Save Draft "active" Summarisable "active" Abandonable "active" if not exist
    Then configure a document "Doc_TST-795_Name1" with sec name "TST-795_sec1" code "TST-795 code1" and existing property "TST-795_prop1" if not published
    Then publish "Doc_TST-795_Name1" if it is not published
    Then user clicks on Document Settings Menu Option "Packages"
    Then user lands on "Package List" module
    Then filter item "All Names" with value "TST-795 pack1"
    Then create a Package with Code "TST-795 code1" Name "TST-795 pack1" Desc "Desc TST-795" and Origin "Documents" if not exist
    Then User Associates Document "Doc_TST-795_Name1" to Package "TST-795 pack1"
    Then publish "TST-795 pack1" if it is not published
    Then user clicks on "Patient Quick Search" in menu bar section
    Then wait for popup loading
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "9999999999"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then wait for "3" seconds
    Then user clicks on the action icon of "Patient Summary"
    Then user clicks on "Documents" on popup
    Then wait for loading in "Document List" section
    Then filter item "All Names" with value "TST-795 pack1"
    Then Delete All "TST-795 pack1" Document
    Then user clicks on back icon
    Then wait for popup loading
    Then user clicks on the plus icon of "Document Information"
    Then wait for "3" seconds
    Then verify pop-up "Search Documents"
    Then user clicks on "Search All Documents" on popup
    Then wait for popup loading
#    Then verify pop-up "Document Search"
    Then user clicks on "Document Name" on popup
    Then user input "Document Name" with value "TST-795 pack1"
    Then user clicks on tick-checkbox
    Then user clicks on "TST-795 pack1" on popup
    Then wait for popup loading
    Then user clicks on "Start" on popup
    Then wait for popup loading
    Then wait for popup loading
    Then user clicks on input "TST-795_prop1" document properties
    Then user clear input "TST-795_prop1" document properties
    Then user input "TST-795_prop1" with value "first attempt" document properties
    Then user clicks on the action icon of "Patient Documents"
    Then verify pop-up "Save Document"
    Then user clicks on "Complete" on popup
    Then verify pop-up "Document Submission"
    Then user clicks on tick-checkbox
    Then verify "Completed Successfully" after completing the form
    Then user clicks on "Return To Menu" on popup
    Then wait for popup loading
    Then wait for "3" seconds
    Then user clicks on the action icon of "Patient Summary"
    Then user clicks on "Documents" on popup
    Then user lands on "Document List" module
    Then wait for loading in "Document List" section
    Then filter item "All Names" with value "TST-795 pack1"
    Then user clicks on breadcrumb "All Statuses" filter
    Then verify pop-up "Select Status"
    Then user clicks on "Complete" on popup
    Then user clicks on tick-checkbox
    Then user clicks on Table first row "TST-795 pack1"
    Then wait for popup loading
    Then user clicks on "Amend" on popup
    Then wait for popup loading
    Then user clicks on input "TST-795_prop1" document properties
    Then user clear input "TST-795_prop1" document properties
    Then user input "TST-795_prop1" with value "amended doc property" document properties
    Then user clicks on the action icon of "Patient Documents"
    Then wait for popup loading
    Then verify pop-up "Save Document"
    Then user clicks on "Save Amendments" on popup
    Then wait for popup loading
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify "Completed Successfully" after completing the form
    Then user verify detail "Return To Menu" exists "true"
    Then user verify detail "Display Package Documents" exists "true"
    Then user clicks on "Return To Menu" on popup
    Then wait for popup loading
    Then filter item "All Names" with value "TST-795 pack1"
#    Then user clicks on cross icon
#    Then user clicks on "Complete" filter
#    Then wait for popup loading
#    Then user clicks on "Clear Values" on popup
#    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify column "Status" equals "Amended" value
    Then verify column "Updated" contains "seconds ago" value
    Then user clicks on back icon
    Then user clicks on the action icon of "Patient Summary"
    Then user clicks on "Records" on popup
    Then wait for loading in "Event List" section
    Then user lands on "Event List" module
    Then wait for popup loading
    Then user inputs "TST-795 pack1" in the filter option
    Then user clicks on Table first row "TST-795 pack1"
    Then wait for loading in "Event Report" section
    Then verify event report "TST-795_prop1" with value "amended doc property"
    Then switch to iframe "event-list-iframe"
    Then user verify detail "STATUS" with value "Amended"
    Then switch to main context

  @TST-799 @haiderejaz @e2eSprint @sprint6 @e2eSprint @sprint3
  Scenario: V3 Documents : Verify Persistent Data / Properties  for Patient Packages
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on the option "Documents"
    Then user lands on "Document Settings" page
    Then user clicks on Document Settings Menu Option "Properties"
    Then user lands on "Properties List" module
    Then filter item "All Names" with value "TST-799_prop1"
    Then create a property with Code "code1_TST-799" Name "TST-799_prop1" Desc "Desc TST-799" and Type "Text-Input-Inline" if not exist
    Then edit property "TST-799_prop1" persistance to "Always"
    Then publish "TST-799_prop1" if it is not published
    Then user clicks on Document Settings Menu Option "Documents"
    Then user lands on "Documents List" module
    Then filter item "All Names" with value "Doc_TST-799_Name1"
    Then create a document with Code "Doc_TST-799_Code1" Name "Doc_TST-799_Name1" Desc "Doc_TST-799_Description1" Type "Standard" Ammendable "active" Ability To Save Draft "active" Summarisable "active" Abandonable "active" if not exist
    Then configure a document "Doc_TST-799_Name1" with sec name "TST-799_sec1" code "TST-799 code1" and existing property "TST-799_prop1" if not published
    Then wait for popup loading
    Then publish "Doc_TST-799_Name1" if it is not published
    Then user clicks on Document Settings Menu Option "Packages"
    Then user lands on "Package List" module
    Then filter item "All Names" with value "TST-799 pack1"
    Then create a Package with Code "TST-799 code1" Name "TST-799 pack1" Desc "Desc TST-799" and Origin "Documents" if not exist
    Then User Associates Document "Doc_TST-799_Name1" to Package "TST-799 pack1"
    Then publish "TST-799 pack1" if it is not published
    Then user clicks on "Systems" in menu bar section
    Then wait for popup loading
    Then navigate to information screen in Site "Diana Princess of Wales Hospital" with Location "Ward C1K"
    Then discharge patient in bed "Bay 1 / Bed 3" on the basis of method "On Clinical Advice Or With Consent" and discharge location to be "Usual Place Of Residence"
    Then navigate to information screen in Site "Diana Princess of Wales Hospital" with Location "Ward C1K"
    Then wait for popup loading
    Then add patient with NHS number "4989446682" in bed "Bay 1 / Bed 3"
    Then user clicks on "Patient Quick Search" in menu bar section
    Then wait for popup loading
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "4989446682"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then wait for "3" seconds
    Then user clicks on the plus icon of "Document Information"
    Then wait for "3" seconds
    Then verify pop-up "Search Documents"
    Then user clicks on "Search All Documents" on popup
    Then wait for popup loading
#    Then verify pop-up "Document Search"
    Then user clicks on "Document Name" on popup
    Then user input "Document Name" with value "TST-799 pack1"
    Then user clicks on tick-checkbox
    Then user clicks on "TST-799 pack1" on popup
    Then wait for popup loading
    Then user clicks on "Start" on popup
    Then wait for popup loading
    Then wait for popup loading
    Then user clicks on input "TST-799_prop1" document properties
    Then user clear input "TST-799_prop1" document properties
    Then user input "TST-799_prop1" with value "testProp1" document properties
    Then user clicks on the action icon of "Patient Documents"
    Then verify pop-up "Save Document"
    Then user clicks on "Complete" on popup
    Then verify pop-up "Document Submission"
    Then user clicks on tick-checkbox
    Then verify "Completed Successfully" after completing the form
    Then user clicks on "Return To Menu" on popup
    Then wait for popup loading
#    Then wait for "3" seconds
    Then user clicks on the plus icon of "Document Information"
    Then wait for "3" seconds
    Then verify pop-up "Search Documents"
    Then user clicks on "Search All Documents" on popup
    Then wait for popup loading
#    Then verify pop-up "Document Search"
    Then user clicks on "Document Name" on popup
    Then user input "Document Name" with value "TST-799 pack1"
    Then user clicks on tick-checkbox
    Then user clicks on "TST-799 pack1" on popup
    Then wait for popup loading
    Then user clicks on "Start" on popup
    Then wait for popup loading
    Then wait for popup loading
    Then verify persistent property "TST-799_prop1" with value "testProp1"
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on the option "Documents"
    Then user lands on "Document Settings" page
    Then user clicks on Document Settings Menu Option "Documents"
    Then user lands on "Documents List" module
#    Then filter item "All Names" with value "Doc_TST-799_Name1"
    Then user clicks on Table first row "Doc_TST-799_Name1"
    Then wait for popup loading
    Then user clicks on the action icon of "Document Details"
    Then user clicks on "Revise" on popup
    Then verify "Before Revising" after completing the form
    Then user clicks on tick-checkbox
    Then user clicks on "Description" on popup
    Then user clears the text-area
    Then user enters "Edited TST-799 DocDesc" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then verify "Submission Successful" after completing the form
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then user clicks on the action icon of "Document Details"
    Then user clicks on "Publish" on popup
    Then user clicks on tick-checkbox
    Then verify "Publish Successful" after completing the form
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then user verify detail "Status" with value "Published"
    Then user clicks on pop-up back icon
    Then user clicks on Document Settings Menu Option "Packages"
    Then user lands on "Package List" module
#    Then filter item "All Names" with value "TST-799 pack1"
    Then user clicks on Table first row "TST-799 pack1"
    Then wait for popup loading
    Then user clicks on "Linked Documents" on popup
    Then wait for popup loading
    Then user clicks on "Doc_TST-799_Name1" on popup
    Then wait for popup loading
    Then user clicks on the action icon of "Document Details"
    Then user clicks on "Synchronize" on popup
    Then user clicks on tick-checkbox
    Then verify "Synchronize Successful" after completing the form
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then user clicks on the action icon of "Package Details"
    Then user clicks on "Publish" on popup
    Then user clicks on tick-checkbox
    Then verify "Publish Successful" after completing the form
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then user verify detail "Status" with value "Published"
    Then user clicks on pop-up back icon
    Then user clicks on "Patient Quick Search" in menu bar section
    Then wait for popup loading
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "4989446682"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then wait for "3" seconds
    Then user clicks on the plus icon of "Document Information"
    Then wait for "3" seconds
    Then verify pop-up "Search Documents"
    Then user clicks on "Search All Documents" on popup
    Then wait for popup loading
#    Then verify pop-up "Document Search"
    Then user clicks on "Document Name" on popup
    Then user input "Document Name" with value "TST-799 pack1"
    Then user clicks on tick-checkbox
    Then user clicks on "TST-799 pack1" on popup
    Then wait for popup loading
    Then user clicks on "Start" on popup
    Then wait for popup loading
    Then wait for popup loading
    Then verify persistent property "TST-799_prop1" with value "testProp1"

  @TST-805 @haiderejaz  @e2eSprint @sprint3
  Scenario: V3 Documents : Verify Selection Property - Edit values when in Published state & Unpublished state
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on the option "Documents"
    Then user lands on "Document Settings" page
    Then user clicks on Document Settings Menu Option "Properties"
    Then user lands on "Properties List" module
    Then user clicks on the plus icon
    #Create Property
    Then verify pop-up "Create Property"
    Then user input "Code" with value "code805"
    Then user clicks on the action "Name"
    Then verify pop-up "Enter Name"
    Then user enters "Name TST-805" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on "Description" on popup
    Then verify pop-up "Enter Description"
    Then user enters "Description TST-805" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on "Type" on popup
    Then verify pop-up "Select Type"
    Then user clicks on "Selection" on popup
    Then user clicks on tick-checkbox
    Then verify pop-up "Property Summary"
    #Verify Property
    Then user verify detail "Code" with value "code805"
    Then user verify detail "Name" with value "Name TST-805"
    Then user verify detail "Description" with value "Description TST-805"
    Then user verify detail "Type" with value "Selection"
    Then user verify detail "Persistence" with value "Never"
    Then user verify detail "Searchable" with value "Yes"
    Then user clicks on tick-checkbox
    Then verify "Submission Successful" after completing the form
    Then user clicks on tick-checkbox
    Then user verify detail "STATUS" with value "Unpublished"
    Then user clicks on "Values" on popup
    Then user clicks on the action icon
    Then user clicks on "Add Value" on popup
    #Add Value
    Then user clicks on the action "Display"
    Then verify pop-up "Add Name Value"
    Then user enters "Name TST-805" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on "Value" on popup
    Then verify pop-up "Add Value"
    Then user enters "Value TST-805" in the text-area
    Then user clicks on tick-checkbox
    Then user input "ICD10 Code" with value "TST-805"
    Then user input "Read Code" with value "TST@805"
    Then user input "Snomed Code" with value "snomedcode"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Submission Successful" after completing the form
    Then user clicks on tick-checkbox
    Then user verify detail "STATUS" with value "Unpublished"
    Then user clicks on "Values" on popup
    Then verify pop-up "Property Values"
    Then user clicks on "Name TST-805" on popup
    #Verify Property Values
    Then verify pop-up "Property Values"
    Then wait for "5" seconds
    Then user verify detail "Display" with value "Name TST-805"
    Then user verify detail "Value" with value "Value TST-805"
    Then user verify detail "ICD10 Code" with value "TST-805"
    Then user verify detail "Read Code" with value "TST@805"
    Then user verify detail "Snomed Code" with value "snomedcode"
    Then user verify detail "Enabled" with value "Yes"
    Then user verify action icon is "Available"
    Then user clicks on the action icon
    Then user clicks on "Edit" on popup
    #Property Value Edit
    Then user clicks on the action "Display"
    Then verify pop-up "Add Name Value"
    Then user clears the text-area
    Then user enters "Name TST-805 edit" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on "Value" on popup
    Then user clears the text-area
    Then user enters "Value TST-805 edit" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    #Verify Property Values
    Then verify pop-up "Property Values"
    Then wait for "5" seconds
    Then user verify detail "Display" with value "Name TST-805 edit"
    Then user verify detail "Value" with value "Value TST-805 edit"
    Then user verify detail "ICD10 Code" with value "TST-805"
    Then user verify detail "Read Code" with value "TST@805"
    Then user verify detail "Snomed Code" with value "snomedcode"
    Then user verify detail "Enabled" with value "Yes"
    #Property Publishing
    Then user clicks on pop-up back icon
    Then user clicks on pop-up back icon
    Then user clicks on the action icon
    Then user clicks on "Publish" on popup
    Then verify "Publish Property" after completing the form
    Then verify "Are you sure you want to publish the selected property? Click the 'Tick' to confirm, or return to the property's details." after completing the form Description
    Then user clicks on tick-checkbox
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then user verify detail "STATUS" with value "Published"
    Then user clicks on "Values" on popup
    Then verify pop-up "Property Values"
    Then user clicks on "Name TST-805 edit" on popup
    Then user verify action icon is "Not Available"

  @TST-806 @haiderejaz @e2eSprint @sprint3
  Scenario: V3 Documents : Patient Documents -  Verify Further Actions when completing a Document
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on the option "Documents"
    Then user lands on "Document Settings" page
    Then user clicks on Document Settings Menu Option "Properties"
    Then user lands on "Properties List" module
    Then filter item "All Names" with value "TST-806_prop1"
    Then create a property with Code "code1_TST-806" Name "TST-806_prop1" Desc "Desc TST-806" and Type "Text-Input-Inline" if not exist
    Then publish "TST-806_prop1" if it is not published
    Then user clicks on Document Settings Menu Option "Documents"
    Then user lands on "Documents List" module
    Then filter item "All Names" with value "Doc_TST-806_Name1"
    Then create a document with Code "Doc_TST-806_Code1" Name "Doc_TST-806_Name1" Desc "Doc_TST-806_Description1" Type "Standard" Ammendable "active" Ability To Save Draft "active" Summarisable "active" Abandonable "active" if not exist
    Then configure a document "Doc_TST-806_Name1" with sec name "TST-806_sec1" code "TST-806 code1" and existing property "TST-806_prop1" if not published
    Then publish "Doc_TST-806_Name1" if it is not published
    Then filter item "Doc_TST-806_Name1" with value "Doc_TST-806_Name2"
    Then create a document with Code "Doc_TST-806_Code2" Name "Doc_TST-806_Name2" Desc "Doc_TST-806_Description2" Type "Standard" Ammendable "active" Ability To Save Draft "active" Summarisable "active" Abandonable "active" if not exist
    Then configure a document "Doc_TST-806_Name2" with sec name "TST-806_sec2" code "TST-806 code2" and existing property "TST-806_prop1" if not published
    Then publish "Doc_TST-806_Name2" if it is not published
    Then user clicks on Document Settings Menu Option "Packages"
    Then user lands on "Package List" module
    Then filter item "All Names" with value "TST-806 pack1"
    Then create a Package with Code "TST-806 code1" Name "TST-806 pack1" Desc "Desc TST-806" and Origin "Documents" if not exist
    Then User Associates Document "Doc_TST-806_Name1" to Package "TST-806 pack1"
    Then publish "TST-806 pack1" if it is not published
    Then filter item "TST-806 pack1" with value "TST-806 pack2"
    Then create a Package with Code "TST-806 code2" Name "TST-806 pack2" Desc "Desc TST-806" and Origin "Documents" if not exist
    Then User Associates Document "Doc_TST-806_Name1" to Package "TST-806 pack2"
    Then User Associates Document "Doc_TST-806_Name2" to Package "TST-806 pack2"
    Then publish "TST-806 pack2" if it is not published
    Then user clicks on "Patient Quick Search" in menu bar section
    Then wait for popup loading
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "9999999999"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then wait for "3" seconds
    Then user clicks on the plus icon of "Document Information"
    Then wait for popup loading
    Then verify pop-up "Search Documents"
    Then user clicks on "Search All Documents" on popup
    Then wait for popup loading
#    Then verify pop-up "Document Search"
    Then user clicks on "Document Name" on popup
    Then user input "Document Name" with value "TST-806 pack1"
    Then user clicks on tick-checkbox
    Then user clicks on "TST-806 pack1" on popup
    Then wait for popup loading
    Then user clicks on "Start" on popup
    Then user clicks on input "TST-806_prop1" document properties
    Then user input "TST-806_prop1" with value "testProp1" document properties
    Then wait for popup loading
    Then user clicks on the action icon of "Patient Documents"
    Then verify pop-up "Save Document"
    Then user clicks on "Complete" on popup
    Then verify pop-up "Document Submission"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify "Completed Successfully" after completing the form
    Then user verify detail "View In Patient Record" exists "true"
    Then user verify detail "Return To Menu" exists "true"
    Then user verify detail "Display Package Documents" exists "true"
    Then user clicks on "Return To Menu" on popup
    Then wait for popup loading
    Then wait for "3" seconds
    Then user clicks on the plus icon of "Document Information"
    Then wait for popup loading
    Then verify pop-up "Search Documents"
    Then user clicks on "Search All Documents" on popup
#    Then verify pop-up "Document Search"
    Then user clicks on "Document Name" on popup
    Then user input "Document Name" with value "TST-806 pack2"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then user clicks on "TST-806 pack2" on popup
    Then wait for popup loading
    Then user clicks on "Start" on popup
    Then wait for popup loading
    Then user verify detail "Doc_TST-806_Name1" exists "true"
    Then user verify detail "Doc_TST-806_Name2" exists "true"
    Then user clicks on "Doc_TST-806_Name2" on popup
    Then wait for popup loading
    Then verify "Document Sections" module exists "true"
    Then verify "Document Properties" module exists "true"
    Then user clicks on input "TST-806_prop1" document properties
    Then user input "TST-806_prop1" with value "testProp1" document properties
    Then wait for popup loading
    Then user clicks on the action icon of "Patient Documents"
    Then verify pop-up "Save Document"
    Then user clicks on "Complete" on popup
    Then verify pop-up "Document Submission"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify "Completed Successfully" after completing the form
    Then user verify detail "Return To Menu" exists "true"
    Then user verify detail "Display Package Documents" exists "true"
    Then user clicks on "Display Package Documents" on popup
    Then wait for popup loading
    Then verify pop-up "Package Documents"
    Then user clicks on "Doc_TST-806_Name2" on popup
    Then wait for popup loading
    Then verify "Document Sections" module exists "true"
    Then verify "Document Properties" module exists "true"
    Then user clicks on input "TST-806_prop1" document properties
    Then user input "TST-806_prop1" with value "testProp1" document properties
    Then wait for popup loading
    Then user clicks on pop-up back icon
    Then wait for popup loading
    Then user clicks on "Doc_TST-806_Name1" on popup
    Then wait for popup loading
    Then user clicks on the action icon of "Patient Documents"
    Then wait for popup loading
    Then verify pop-up "Save Document"
    Then user clicks on "Complete" on popup
    Then verify pop-up "Document Submission"
    Then user clicks on tick-checkbox
    Then verify "Completed Successfully" after completing the form
    Then user verify detail "View In Patient Record" exists "true"
    Then user verify detail "Return To Menu" exists "true"
    Then user verify detail "Display Package Documents" exists "true"

  @TST-814 @haiderejaz @e2eSprint @sprint3
  Scenario: V3 Documents : Document Config - Remove a Property with Rules configuration
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on the option "Documents"
    Then user lands on "Document Settings" page
    Then user clicks on Document Settings Menu Option "Properties"
    Then user lands on "Properties List" module
    Then change all "Selection TST-814" named properties status to "Suspend" from "Published"
    Then change all "TextInline TST-814" named properties status to "Suspend" from "Published"
#    Then user clicks on "TextInline TST-814" filter
#    Then user clears the text-area
#    Then user clicks on tick-checkbox
#    Then user clicks on "Published" filter
#    Then user clicks on "Published" on popup
#    Then change all "TST-814" named properties status to "Suspend" from "Published"
#    Then user clicks on "Selection TST-814" filter
#    Then user clears the text-area
#    Then user clicks on tick-checkbox
#    Then user clicks on "Published" filter
#    Then user clicks on "Published" on popup
 #Create Property
    Then user clicks on the plus icon
    Then verify pop-up "Create Property"
    Then user input "Code" with value "TextInlineCode814"
    Then user clicks on the action "Name"
    Then verify pop-up "Enter Name"
    Then user enters "TextInline TST-814" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on "Description" on popup
    Then verify pop-up "Enter Description"
    Then user enters "Description TST-814" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on "Type" on popup
    Then verify pop-up "Select Type"
    Then user clicks on "Text-Input-Inline" on popup
    Then user clicks on tick-checkbox
    Then verify pop-up "Property Summary"
    #Verify Property
    Then user verify detail "Code" with value "TextInlineCode814"
    Then user verify detail "Name" with value "TextInline TST-814"
    Then user verify detail "Description" with value "Description TST-814"
    Then user verify detail "Type" with value "Text-Input-Inline"
    Then user verify detail "Persistence" with value "Never"
    Then user verify detail "Searchable" with value "Yes"
    Then user clicks on tick-checkbox
    Then verify "Submission Successful" after completing the form
    Then user clicks on tick-checkbox
    Then user verify detail "STATUS" with value "Unpublished"
    #Property Publishing
    Then user clicks on the action icon
    Then wait for "3" seconds
    Then user clicks on "Publish" on popup
    Then wait for "3" seconds
    Then verify "Publish Property" after completing the form
#    Then verify "Are you sure you want to publish the selected property? Click the 'Tick' to confirm, or return to the property's details." after completing the form Description
    Then user clicks on tick-checkbox
    Then wait for "3" seconds
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then user verify detail "STATUS" with value "Published"
    Then user clicks on pop-up back icon
    #Create Property
    Then user clicks on the plus icon
    Then verify pop-up "Create Property"
    Then user input "Code" with value "SelectionCode814"
    Then user clicks on the action "Name"
    Then verify pop-up "Enter Name"
    Then user enters "Selection TST-814" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on "Description" on popup
    Then verify pop-up "Enter Description"
    Then user enters "Description TST-814" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on "Type" on popup
    Then verify pop-up "Select Type"
    Then user clicks on "Selection" on popup
    Then user clicks on tick-checkbox
    Then verify pop-up "Property Summary"
    #Verify Property
    Then user verify detail "Code" with value "SelectionCode814"
    Then user verify detail "Name" with value "Selection TST-814"
    Then user verify detail "Description" with value "Description TST-814"
    Then user verify detail "Type" with value "Selection"
    Then user verify detail "Persistence" with value "Never"
    Then user clicks on tick-checkbox
    Then verify "Submission Successful" after completing the form
    Then user clicks on "Configure Values" on popup
    Then user clicks on the action icon
    Then user clicks on "Add Value" on popup
    #Add Value in Property
    Then user clicks on the action "Display"
    Then verify pop-up "Add Name Value"
    Then user enters "Name1 TST-814 val" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on "Value" on popup
    Then verify pop-up "Add Value"
    Then user enters "Value1 TST-814" in the text-area
    Then user clicks on tick-checkbox
    Then user input "ICD10 Code" with value "TST-814"
    Then user input "Read Code" with value "TST@814"
    Then user input "Snomed Code" with value "snomedcode"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Submission Successful" after completing the form
    Then user clicks on "Create Another Value" on popup
 #Add Value in Property
    Then user clicks on the action "Display"
    Then verify pop-up "Add Name Value"
    Then user enters "Name2 TST-814 val" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on "Value" on popup
    Then verify pop-up "Add Value"
    Then user enters "Value2 TST-814" in the text-area
    Then user clicks on tick-checkbox
    Then user input "ICD10 Code" with value "TST-814"
    Then user input "Read Code" with value "TST@814"
    Then user input "Snomed Code" with value "snomedcode"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Submission Successful" after completing the form
    Then user clicks on tick-checkbox
    Then user verify detail "STATUS" with value "Unpublished"
    #Property Publishing
    Then user clicks on the action icon
    Then wait for "3" seconds
    Then user clicks on "Publish" on popup
    Then wait for "3" seconds
    Then verify "Publish Property" after completing the form
#    Then verify "Are you sure you want to publish the selected property? Click the 'Tick' to confirm, or return to the property's details." after completing the form Description
    Then user clicks on tick-checkbox
    Then wait for "3" seconds
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then user verify detail "STATUS" with value "Published"
    Then user clicks on pop-up back icon
    Then user clicks on Document Settings Menu Option "Documents"
    Then user lands on "Documents List" module
    Then change all "TST-814 DocName" named Document status to "Discard" from "Unpublished"
    Then user clicks on the plus icon
    #Create Document
    Then verify pop-up "Create Document"
    Then user input "Code" with value "TST-814"
    Then user input "Name" with value "TST-814 DocName"
    Then user clicks on "Description" on popup
    Then verify pop-up "Enter Description"
    Then user enters "Desc TST-814" in the text-area
    Then user clicks on tick-checkbox
    Then user change "Amendable" toggle "true"
    Then user change "Ability To Save Draft" toggle "true"
    Then user change "Summarisable" toggle "true"
    Then user change "Abandonable" toggle "true"
    Then user clicks on tick-checkbox
    #Verify Document
    Then user verify detail "Code" with value "TST-814"
    Then user verify detail "Name" with value "TST-814 DocName"
    Then user verify detail "Description" with value "Desc TST-814"
    Then user verify detail "Type" with value "Standard"
    Then user verify detail "Amendable" with value "Yes"
    Then user verify detail "Ability To Save Draft" with value "Yes"
    Then user verify detail "Summarisable" with value "Yes"
    Then user verify detail "Abandonable" with value "Yes"
    Then user clicks on tick-checkbox
    #Verify Submission
    Then verify pop-up "Submission Status"
    Then verify "Submission Successful" after completing the form
    Then user clicks on tick-checkbox
    Then user clicks on the action icon
    Then user clicks on "Configure" on popup
    Then verify "Document Sections" module exists "true"
    Then verify "Document Properties" module exists "true"
    #Document Section Creation
    Then user clicks on the action icon of "Document Sections"
    Then user clicks on "Create" on popup
    Then verify pop-up "Create Section"
    #Create Section
    Then user input "Code" with value "TST-814 Sec"
    Then user input "Name" with value "TST-814 SecName"
    Then user clicks on "Description" on popup
    Then verify pop-up "Enter Description"
    Then user enters "Sec Desc TST-814" in the text-area
    Then user clicks on tick-checkbox
    Then user change "Visible" toggle "true"
    Then user clicks on tick-checkbox
    Then user verify detail "Code" with value "TST-814 Sec"
    Then user verify detail "Name" with value "TST-814 SecName"
    Then user verify detail "Description" with value "Sec Desc TST-814"
    Then user verify the detail "Visible" with value "Yes"
    Then user clicks on tick-checkbox
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then user verify detail "Code" with value "TST-814 Sec"
    Then user verify detail "Name" with value "TST-814 SecName"
    Then user verify detail "Description" with value "Sec Desc TST-814"
    Then user verify the detail "Visible" with value "Yes"
    Then user clicks on pop-up back icon
    #Document Properties Creation
    Then user clicks on the action icon of "Document Properties"
    Then user clicks on the action icon for tab "Document Properties"
    Then wait for popup loading
    Then verify pop-up "Property Menu"
    Then user clicks on "Add Property" on popup
    Then verify pop-up "Property Search"
    Then user clicks on "Use Existing Property" on popup
    Then verify pop-up "Existing Property Search"
    Then user clicks on tick-checkbox
    Then wait for 10 seconds
    Then user inputs "TextInline TST-814" in the filter option
    Then user clicks on "TextInline TST-814" on popup
    Then wait for "3" seconds
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then user clicks on the action icon of "Document Properties"
    Then user clicks on the action icon for tab "Document Properties"
    Then wait for popup loading
    Then verify pop-up "Property Menu"
    Then user clicks on "Add Property" on popup
    Then verify pop-up "Property Search"
    Then user clicks on "Use Existing Property" on popup
    Then verify pop-up "Existing Property Search"
    Then user clicks on tick-checkbox
    Then wait for 10 seconds
    Then user inputs "Selection TST-814" in the filter option
    Then user clicks on "Selection TST-814" on popup
    Then wait for "3" seconds
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then user clicks on meatballs icon "TextInline TST-814"
    Then wait for popup loading
    Then user clicks on "Rules" on popup
    Then verify pop-up "Property Rules"
    Then user clicks on the pop-up plus icon
    Then verify pop-up "Configure Rule"
    Then user clicks on "Property" on popup
    Then wait for "3" seconds
    Then verify pop-up "Select Section"
    Then user clicks on "TST-814 SecName" on popup
    Then wait for "3" seconds
    Then verify pop-up "Select Property"
    Then user clicks on "Selection TST-814" on popup
    Then wait for "3" seconds
    Then verify pop-up "Select Value"
    Then user clicks on "Name2 TST-814 val" on popup
    Then user clicks on tick-checkbox
    Then wait for "3" seconds
    Then user clicks on tick-checkbox
    Then verify pop-up "Rule Summary"
    Then user verify detail "Type" with value "Property"
    Then user verify detail "Name" with value "TextInline TST-814"
    Then user verify detail "Property" with value "Selection TST-814"
    Then user verify detail "Value" with value "Name2 TST-814 val"
    Then user verify detail "Mandatory" with value "No"
    Then user verify detail "Not Visible" with value "No"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Submission Successful" after completing the form
    Then user clicks on tick-checkbox
    Then user verify item "Rules" counter with value "1"
    Then user clicks on pop-up back icon
    Then user verify "TextInline TST-814" Rules Available Icon "true"
    Then user clicks on meatballs icon "Selection TST-814"
    Then verify pop-up "Property Details"
    Then user clicks on the action icon of "Property Details"
    Then user clicks on "Remove" on popup
    Then user clicks on tick-checkbox
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then wait for "3" seconds
    Then user verify "TextInline TST-814" Rules Available Icon "false"
    Then user clicks on meatballs icon "TextInline TST-814"
    Then user verify item "Rules" counter with value "0"

#  @TST-848 @haiderejaz @stepsCompletedUpTillWardSection
#  Scenario: V3 documents : Patient documents -  Amend the Data of a Persistent Property and Verify the data on future packages
#    Given user lands on "Systems" page
#    Then user clicks on "Settings" in menu bar section
#    Then user lands on "Settings" page
#    Then user clicks on "Systems" icon
#    Then user lands on "Systems Settings" page
#    Then user clicks on the option "Documents"
#    Then user lands on "Document Settings" page
#    Then user clicks on Document Settings Menu Option "Properties"
#    Then user lands on "Properties List" module
#    Then filter item "All Names" with value "TST-848_prop"
#    Then create a property with Code "code1_TST-848" Name "TST-848_prop" Desc "Desc TST-848" and Type "Text-Input-Inline" if not exist
#    Then edit property "TST-848_prop" persistance to "Always"
#    Then publish "TST-848_prop" if it is not published
#    Then user clicks on Document Settings Menu Option "Documents"
#    Then user lands on "Documents List" module
#    Then filter item "All Names" with value "Doc_TST-84 8_Name"
#    Then create a document with Code "Doc_TST-848_Code" Name "Doc_TST-848_Name" Desc "Doc_TST-848_Description" Type "Standard" Ammendable "active" Ability To Save Draft "active" Summarisable "active" Abandonable "active" if not exist
#    Then configure a document "Doc_TST-848_Name" with sec name "TST-848_sec" code "TST-848 code" and existing property "TST-848_prop" if not published
#    Then publish "Doc_TST-848_Name" if it is not published
#    Then user clicks on Document Settings Menu Option "Packages"
#    Then user lands on "Package List" module
#    Then filter item "All Names" with value "TST-848 pack"
#    Then create a Package with Code "TST-848 code" Name "TST-848 pack" Desc "Desc TST-848" and Origin "Documents" if not exist
#    Then User Associates Document "Doc_TST-848_Name" to Package "TST-848 pack"
#    Then publish "TST-848 pack" if it is not published
#    Then user clicks on "Patient Quick Search" in menu bar section
#    Then wait for popup loading
#    Then verify pop-up "Patient Identifier Search"
#    Then user enters Patient Identifier Search "9999999999"
#    Then user clicks on tick-checkbox
#    Then wait for popup loading
#    Then verify pop-up "Confirmation Required"
#    Then user clicks on the action "Continue"
#    Then user lands on "Patient Summary" page
#    Then wait for "3" seconds
#    Then user clicks on the plus icon of "Document Information"
#    Then wait for "3" seconds
#    Then verify pop-up "Search Documents"
#    Then user clicks on "Search All Documents" on popup
#    Then wait for popup loading
##    Then verify pop-up "Document Search"
#    Then user clicks on "Document Name" on popup
#    Then user input "Document Name" with value "TST-848 pack"
#    Then user clicks on tick-checkbox
#    Then user clicks on "TST-848 pack" on popup
#    Then wait for popup loading
#    Then user clicks on "Start" on popup
#    Then wait for loading in "Document Properties" section
#    Then user clicks on input "TST-848_prop" document properties
#    Then user clear input "TST-848_prop" document properties
#    Then user input "TST-848_prop" with value "testProp1" document properties
#    Then user clicks on the action icon of "Patient Documents"
#    Then verify pop-up "Save Document"
#    Then user clicks on "Complete" on popup
#    Then verify pop-up "Document Submission"
#    Then user clicks on tick-checkbox
#    Then verify "Completed Successfully" after completing the form
#    Then wait for popup loading
#    Then user clicks on "Return To Menu" on popup
#    Then wait for loading in "Document Information" section
#    Then user clicks on the action icon of "Patient Summary"
#    Then user clicks on "Records" on popup
#    Then user lands on "Event List" module
#    Then wait for popup loading
#    Then user clicks on Table first row "TST-848 pack"
#    Then verify event report "TST-848_prop" with value "testProp1"
#
#    Then user clicks on back icon
#    Then wait for loading in "Document Information" section
#    Then user clicks on the plus icon of "Document Information"
#    Then wait for "3" seconds
#    Then verify pop-up "Search Documents"
#    Then user clicks on "Search All Documents" on popup
#    Then wait for popup loading
##    Then verify pop-up "Document Search"
#    Then user clicks on "Document Name" on popup
#    Then user input "Document Name" with value "TST-848 pack"
#    Then user clicks on tick-checkbox
#    Then user clicks on "TST-848 pack" on popup
#    Then wait for popup loading
#    Then user clicks on "Start" on popup
#    Then user lands on "Document Sections" module
#    Then wait for loading in "Document Properties" section
#    Then wait for popup loading
#    Then verify persistent property "TST-848_prop" with value "testProp1"
#
#    Then user clicks on "Ward" in menu bar section
#    Then user lands on "Ward Information" page

  @TST-983 @haiderejaz @e2eSprint @sprint3
  Scenario: V3 Documents : Document Settings -  Adding Documents to a Package - Verify Document Search Page
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on the option "Documents"
    Then user lands on "Document Settings" page

    Then user clicks on Document Settings Menu Option "Documents"
    Then user lands on "Documents List" module
    Then filter item "All Names" with value "Doc_TST-983_Name"
    Then create a document with Code "Doc_TST-983_Code" Name "Doc_TST-983_Name" Desc "Doc_TST-983_Description" Type "Standard" Ammendable "active" Ability To Save Draft "active" Summarisable "active" Abandonable "active" if not exist
    Then publish "Doc_TST-983_Name" if it is not published

    Then user clicks on Document Settings Menu Option "Packages"
    Then user lands on "Package List" module
    Then filter item "All Names" with value "TST-983 pack"
    Then create a Package with Code "TST-983 code" Name "TST-983 pack" Desc "Desc TST-983" and Origin "Documents" if not exist
    Then User Associates Document "Doc_TST-983_Name" to Package "TST-983 pack"

    Then user clicks on Table row "TST-983 pack"
    Then wait for "10" seconds
    Then user clicks on "Linked Documents" on popup
    Then verify pop-up "Linked Documents List"
    Then user clicks on the action icon of "Linked Documents List"
    Then user clicks on "Add Documents" on popup
    Then verify pop-up "Document Search"
    Then user clicks on tick-checkbox
    Then verify pop-up "Document Search Results"
    Then verify search results displayed "true"
    Then user inputs "Doc_TST-983_Name" in the filter option
    Then user verify search result "Doc_TST-983_Name" is selectable "false"

  @TST-1062 @haiderejaz @e2eSprint @sprint6
  Scenario: V3 Documents : Episodic Persistence -  Verify Persistence properties on  Documents
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on the option "Documents"
    Then user lands on "Document Settings" page
    Then user clicks on Document Settings Menu Option "Properties"
    Then user lands on "Properties List" module
    Then filter item "All Names" with value "TST-1062_ESig_prop"
    Then create a property with Code "code2_TST-1062" Name "TST-1062_ESig_prop" Desc "Desc2 TST-1062" and Type "Electronic-Signature" if not exist
    Then publish "TST-1062_ESig_prop" if it is not published

    Then user clicks on Document Settings Menu Option "Documents"
    Then user lands on "Documents List" module
    Then filter item "All Names" with value "Doc_TST-1062_Name1"
    Then create a document with Code "Doc_TST-1062_Code1" Name "Doc_TST-1062_Name1" Desc "Doc_TST-1062_Description1" Type "Standard" Ammendable "face" Ability To Save Draft "active" Summarisable "active" Abandonable "active" if not exist
    Then configure a document "Doc_TST-1062_Name1" with sec name "TST-1062_sec1" code "TST-1062 code1" and existing property "TST-1062_ESig_prop" if not published
#    Then Synchronize Property "TST-1062_prop1" to Document "Doc_TST-1062_Name1"
    Then publish "Doc_TST-1062_Name1" if it is not published
    Then clear filtered item "Doc_TST-1062_Name"

    Then user clicks on Document Settings Menu Option "Packages"
    Then user lands on "Package List" module
    Then filter item "All Names" with value "TST-1062_pack1"
    Then create a Package with Code "TST-1062 code1" Name "TST-1062_pack1" Desc "Desc TST-1062_1" and Origin "Documents" if not exist
    Then User Associates Document "Doc_TST-1062_Name1" to Package "TST-1062_pack1"
#    Then Synchronize Document "Doc_TST-1062_Name1" to Package "TST-1062_pack1"
    Then publish "TST-1062_pack1" if it is not published

    Then user clicks on "Patient Quick Search" in menu bar section
    Then wait for popup loading
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "9999999999"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then wait for "3" seconds
    # Complete a Document with persistent epesodic
    Then user clicks on the plus icon of "Document Information"
    Then wait for "3" seconds
    Then verify pop-up "Search Documents"
    Then user clicks on "Search All Documents" on popup
    Then wait for popup loading
    Then user clicks on "Document Name" on popup
    Then user input "Document Name" with value "TST-1062_pack1"
    Then user clicks on tick-checkbox
    Then user clicks on "TST-1062_pack1" on popup
    Then wait for popup loading
    Then user clicks on "Start" on popup
    Then wait for popup loading
    Then user clicks on "Electronically Sign Declaration" span
    Then wait for popup loading
    Then verify Electronic Signature property "TST-1062_ESig_prop"
    Then verify Username "K Kualitatem" Job Title exist "true" and Current Date of property "TST-1062_ESig_prop"
    Then user clicks on the action icon of "Patient Documents"
    Then verify pop-up "Save Document"
    Then user clicks on "Complete" on popup
    Then verify pop-up "Document Submission"
    Then user clicks on tick-checkbox
    Then verify "Completed Successfully" after completing the form
    Then user clicks on "Return To Menu" on popup
    Then user clicks on the action icon of "Patient Summary"
    Then user clicks on "Documents" on popup
    Then user lands on "Document List" module
    Then wait for loading in "Document List" section
    Then filter item "All Names" with value "TST-1062_pack1"
    Then user clicks on breadcrumb "All Statuses" filter
    Then verify pop-up "Select Status"
    Then user clicks on "Complete" on popup
    Then user clicks on tick-checkbox
    Then user clicks on Table first row "TST-1062_pack1"
    Then wait for popup loading
    Then user clicks on "Amend" on popup
    Then wait for popup loading
    Then verify pop-up "Unauthorised"
    Then verify "No Authorisation" after completing the form
    Then verify "This document is not allowed to amended once completed or you do not have permission to amend documents." after completing the form Description

  @TST-1139 @haiderejaz @e2eSprint @sprint6 @e2eSprint @sprint3
  Scenario: V3 Documents : Episodic Persistence -  Verify Persistence properties on  Documents
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on the option "Documents"
    Then user lands on "Document Settings" page
    Then user clicks on Document Settings Menu Option "Properties"
    Then user lands on "Properties List" module
    Then filter item "All Names" with value "TST-1139_prop1"
    Then create a property with Code "code1_TST-1139" Name "TST-1139_prop1" Desc "Desc1 TST-1139" and Type "Text-Input-Inline" if not exist
    Then edit property "TST-1139_prop1" persistance to "Episodic"
    Then publish "TST-1139_prop1" if it is not published
    Then clear filtered item "TST-1139_prop1"
#    Then filter item "TST-1139_prop1" with value "TST-1139_prop2"
#    Then create a property with Code "code2_TST-1139" Name "TST-1139_prop2" Desc "Desc2 TST-1139" and Type "Text-Input-Inline" if not exist
#    Then edit property "TST-1139_prop2" persistance to "Always"
#    Then publish "TST-1139_prop2" if it is not published
#
#    Then filter item "TST-1139_prop2" with value "TST-1139_prop3"
#    Then create a property with Code "code3_TST-1139" Name "TST-1139_prop3" Desc "Desc3 TST-1139" and Type "Text-Input-Inline" if not exist
#    Then edit property "TST-1139_prop3" persistance to "Always"
#    Then publish "TST-1139_prop3" if it is not published

    Then user clicks on Document Settings Menu Option "Documents"
    Then user lands on "Documents List" module
    Then filter item "All Names" with value "Doc_TST-1139_Name1"
    Then create a document with Code "Doc_TST-1139_Code1" Name "Doc_TST-1139_Name1" Desc "Doc_TST-1139_Description1" Type "Standard" Ammendable "active" Ability To Save Draft "active" Summarisable "active" Abandonable "active" if not exist
    Then configure a document "Doc_TST-1139_Name1" with sec name "TST-1139_sec1" code "TST-1139 code1" and existing property "TST-1139_prop1" if not published
    Then Synchronize Property "TST-1139_prop1" to Document "Doc_TST-1139_Name1"
    Then publish "Doc_TST-1139_Name1" if it is not published

    Then filter item "Doc_TST-1139_Name1" with value "Doc_TST-1139_Name2"
    Then create a document with Code "Doc_TST-1139_Code2" Name "Doc_TST-1139_Name2" Desc "Doc_TST-1139_Description2" Type "Standard" Ammendable "active" Ability To Save Draft "active" Summarisable "active" Abandonable "active" if not exist
    Then configure a document "Doc_TST-1139_Name2" with sec name "TST-1139_sec2" code "TST-1139 code2" and existing property "TST-1139_prop1" if not published
    Then Synchronize Property "TST-1139_prop1" to Document "Doc_TST-1139_Name2"
    Then publish "Doc_TST-1139_Name2" if it is not published

    Then filter item "Doc_TST-1139_Name2" with value "Doc_TST-1139_Name3"
    Then create a document with Code "Doc_TST-1139_Code3" Name "Doc_TST-1139_Name3" Desc "Doc_TST-1139_Description3" Type "Standard" Ammendable "active" Ability To Save Draft "active" Summarisable "active" Abandonable "active" if not exist
    Then configure a document "Doc_TST-1139_Name3" with sec name "TST-1139_sec3" code "TST-1139 code3" and existing property "TST-1139_prop1" if not published
    Then Synchronize Property "TST-1139_prop1" to Document "Doc_TST-1139_Name3"
    Then publish "Doc_TST-1139_Name3" if it is not published
    Then clear filtered item "Doc_TST-1139_Name3"

    Then user clicks on Document Settings Menu Option "Packages"
    Then user lands on "Package List" module
    Then filter item "All Names" with value "TST-1139 pack1"
    Then create a Package with Code "TST-1139 code1" Name "TST-1139 pack1" Desc "Desc TST-1139_1" and Origin "Documents" if not exist
    Then User Associates Document "Doc_TST-1139_Name1" to Package "TST-1139 pack1"
    Then Synchronize Document "Doc_TST-1139_Name1" to Package "TST-1139 pack1"
    Then publish "TST-1139 pack1" if it is not published

    Then filter item "TST-1139 pack1" with value "TST-1139 pack2"
    Then create a Package with Code "TST-1139 code2" Name "TST-1139 pack2" Desc "Desc TST-1139_2" and Origin "Documents" if not exist
    Then User Associates Document "Doc_TST-1139_Name2" to Package "TST-1139 pack2"
    Then Synchronize Document "Doc_TST-1139_Name2" to Package "TST-1139 pack2"
    Then publish "TST-1139 pack2" if it is not published

    Then filter item "TST-1139 pack2" with value "TST-1139 pack3"
    Then create a Package with Code "TST-1139 code3" Name "TST-1139 pack3" Desc "Desc TST-1139_3" and Origin "Documents" if not exist
    Then User Associates Document "Doc_TST-1139_Name3" to Package "TST-1139 pack3"
    Then Synchronize Document "Doc_TST-1139_Name3" to Package "TST-1139 pack3"
    Then publish "TST-1139 pack3" if it is not published
    Then clear filtered item "TST-1139 pack3"

    Then user clicks on "Systems" in menu bar section
    Then navigate to information screen in Site "Diana Princess of Wales Hospital" with Location "Ward C1K"
    Then discharge patient in bed "Bay 2 / Bed 5" on the basis of method "On Clinical Advice Or With Consent" and discharge location to be "Usual Place Of Residence"
    Then navigate to information screen in Site "Diana Princess of Wales Hospital" with Location "Ward C1K"
    Then add patient with NHS number "4989446682" in bed "Bay 1 / Bed 3"
    Then user clicks on "Patient Quick Search" in menu bar section
    Then wait for popup loading
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "4989446682"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then wait for "3" seconds
    Then user clicks on the action icon of "Patient Summary"
    Then user clicks on "Documents" on popup
    Then filter item "All Names" with value "TST-1139"
    Then Remove All Patient Documents with name "TST-1139 pack1"
    Then Remove All Patient Documents with name "TST-1139 pack2"
    Then Remove All Patient Documents with name "TST-1139 pack3"
    Then clear filtered item "TST-1139"
    Then user clicks on back icon
    # Complete a Document with persistent epesodic
    Then user clicks on the plus icon of "Document Information"
    Then wait for "3" seconds
    Then verify pop-up "Search Documents"
    Then user clicks on "Search All Documents" on popup
    Then wait for popup loading
    Then user clicks on "Document Name" on popup
    Then user input "Document Name" with value "TST-1139 pack1"
    Then user clicks on tick-checkbox
    Then user clicks on "TST-1139 pack1" on popup
    Then wait for popup loading
    Then user clicks on "Start" on popup
    Then wait for popup loading
    Then verify persistent property "TST-1139_prop1" with value ""
    Then user clicks on input "TST-1139_prop1" document properties
    Then user clear input "TST-1139_prop1" document properties
    Then user input "TST-1139_prop1" with value "existing completed doc prop val 1" document properties
    Then user clicks on the action icon of "Patient Documents"
    Then verify pop-up "Save Document"
    Then user clicks on "Complete" on popup
    Then verify pop-up "Document Submission"
    Then user clicks on tick-checkbox
    Then verify "Completed Successfully" after completing the form
    Then user clicks on "Return To Menu" on popup
    Then wait for popup loading
    # Save Draft Document with persistent epesodic
    Then user clicks on the plus icon of "Document Information"
    Then wait for "3" seconds
    Then verify pop-up "Search Documents"
    Then user clicks on "Search All Documents" on popup
    Then wait for popup loading
    Then user clicks on "Document Name" on popup
    Then user input "Document Name" with value "TST-1139 pack1"
    Then user clicks on tick-checkbox
    Then user clicks on "TST-1139 pack1" on popup
    Then wait for popup loading
    Then user clicks on "Start" on popup
    Then wait for popup loading
    Then wait for popup loading
    Then verify persistent property "TST-1139_prop1" with value "existing completed doc prop val 1"
    Then user clicks on input "TST-1139_prop1" document properties
    Then user clear input "TST-1139_prop1" document properties
    Then user input "TST-1139_prop1" with value "save doc as draft 1" document properties
    Then user clicks on the action icon of "Patient Documents"
    Then verify pop-up "Save Document"
    Then user clicks on "Save Draft" on popup
    Then verify "Saved Successfully" after completing the form
    Then verify pop-up "Document Saved"
    Then user clicks on "Return To Menu" on popup
    Then wait for popup loading
    Then user verify Document Info "TST-1139 pack1" Status "In Progress"
    #Complete a document with persistent epesodic and verify existing saved value
    Then user clicks on the plus icon of "Document Information"
    Then wait for "3" seconds
    Then verify pop-up "Search Documents"
    Then user clicks on "Search All Documents" on popup
    Then wait for popup loading
    Then user clicks on "Document Name" on popup
    Then user input "Document Name" with value "TST-1139 pack1"
    Then user clicks on tick-checkbox
    Then user clicks on "TST-1139 pack1" on popup
    Then wait for popup loading
    Then user clicks on "Start" on popup
    Then wait for popup loading
    Then wait for popup loading
    Then verify persistent property "TST-1139_prop1" with value "existing completed doc prop val 1"
    Then user clicks on input "TST-1139_prop1" document properties
    Then user clear input "TST-1139_prop1" document properties
    Then user input "TST-1139_prop1" with value "new completed doc prop val 2" document properties
    Then user clicks on the action icon of "Patient Documents"
    Then verify pop-up "Save Document"
    Then user clicks on "Complete" on popup
    Then verify pop-up "Document Submission"
    Then user clicks on tick-checkbox
    Then verify "Completed Successfully" after completing the form
    Then user clicks on "Return To Menu" on popup

    Then user clicks on the action icon of "Patient Summary"
    Then user clicks on "Documents" on popup
    Then user lands on "Document List" module
    Then wait for loading in "Document List" section
    Then filter item "All Names" with value "TST-1139 pack1"
    Then user clicks on breadcrumb "All Statuses" filter
    Then verify pop-up "Select Status"
    Then user clicks on "In Progress" on popup
    Then user clicks on tick-checkbox
    Then user clicks on Table first row "TST-1139 pack1"

    Then wait for popup loading
    Then user clicks on "Resume" on popup
    Then wait for popup loading
    Then verify persistent property "TST-1139_prop1" with value "save doc as draft 1"
    Then user clicks on the action icon of "Patient Documents"
    Then verify pop-up "Save Document"
    Then user clicks on "Complete" on popup
    Then verify pop-up "Document Submission"
    Then user clicks on tick-checkbox
    Then verify "Completed Successfully" after completing the form
    Then user clicks on "Return To Menu" on popup
    Then wait for popup loading
    Then user clicks on cross icon
    Then user clicks on back icon
    # Save Draft Document A with persistent epesodic
    Then user clicks on the plus icon of "Document Information"
    Then wait for "3" seconds
    Then verify pop-up "Search Documents"
    Then user clicks on "Search All Documents" on popup
    Then wait for popup loading
    Then user clicks on "Document Name" on popup
    Then user input "Document Name" with value "TST-1139 pack1"
    Then user clicks on tick-checkbox
    Then user clicks on "TST-1139 pack1" on popup
    Then wait for popup loading
    Then user clicks on "Start" on popup
    Then wait for popup loading
    Then user clicks on input "TST-1139_prop1" document properties
    Then user clear input "TST-1139_prop1" document properties
    Then user input "TST-1139_prop1" with value "save doc A as draft" document properties
    Then user clicks on the action icon of "Patient Documents"
    Then verify pop-up "Save Document"
    Then user clicks on "Save Draft" on popup
    Then verify "Saved Successfully" after completing the form
    Then verify pop-up "Document Saved"
    Then user clicks on "Return To Menu" on popup
    Then wait for popup loading
    Then user verify Document Info "TST-1139 pack1" Status "In Progress"
     # Save Draft Document B with persistent epesodic
    Then user clicks on the plus icon of "Document Information"
    Then wait for "3" seconds
    Then verify pop-up "Search Documents"
    Then user clicks on "Search All Documents" on popup
    Then wait for popup loading
    Then user clicks on "Document Name" on popup
    Then user input "Document Name" with value "TST-1139 pack2"
    Then user clicks on tick-checkbox
    Then user clicks on "TST-1139 pack2" on popup
    Then wait for popup loading
    Then user clicks on "Start" on popup
    Then wait for popup loading
    Then user clicks on input "TST-1139_prop1" document properties
    Then user clear input "TST-1139_prop1" document properties
    Then user input "TST-1139_prop1" with value "save doc B as draft" document properties
    Then user clicks on the action icon of "Patient Documents"
    Then verify pop-up "Save Document"
    Then user clicks on "Save Draft" on popup
    Then verify "Saved Successfully" after completing the form
    Then verify pop-up "Document Saved"
    Then user clicks on "Return To Menu" on popup
    Then wait for popup loading
    Then user verify Document Info "TST-1139 pack2" Status "In Progress"
    #Verify Doc A Draft Value
    Then user clicks on the action icon of "Patient Summary"
    Then user clicks on "Documents" on popup
    Then user lands on "Document List" module
    Then wait for loading in "Document List" section
    Then filter item "All Names" with value "TST-1139 pack1"
    Then user clicks on Table first row "TST-1139 pack1"
    Then wait for popup loading
    Then user clicks on "Resume" on popup
    Then wait for popup loading
    Then wait for popup loading
    Then verify persistent property "TST-1139_prop1" with value "save doc A as draft"
    Then user clicks on back icon
    Then wait for popup loading
    Then user clicks on cross icon
    Then user clicks on back icon
     # Complete a Document C with persistent epesodic
    Then user clicks on the plus icon of "Document Information"
    Then wait for "3" seconds
    Then verify pop-up "Search Documents"
    Then user clicks on "Search All Documents" on popup
    Then wait for popup loading
    Then user clicks on "Document Name" on popup
    Then user input "Document Name" with value "TST-1139 pack3"
    Then user clicks on tick-checkbox
    Then user clicks on "TST-1139 pack3" on popup
    Then wait for popup loading
    Then user clicks on "Start" on popup
    Then wait for popup loading
    Then user clicks on input "TST-1139_prop1" document properties
    Then user clear input "TST-1139_prop1" document properties
    Then user input "TST-1139_prop1" with value "completed Doc C" document properties
    Then user clicks on the action icon of "Patient Documents"
    Then verify pop-up "Save Document"
    Then user clicks on "Complete" on popup
    Then verify pop-up "Document Submission"
    Then user clicks on tick-checkbox
    Then verify "Completed Successfully" after completing the form
    Then wait for popup loading
    Then user clicks on "Return To Menu" on popup
    Then wait for popup loading
#    Then user lands on "Event List" module
#    Then wait for popup loading
#    Then verify event report "TST-1139_prop1" with value "completed Doc C"
#    Then user clicks on back icon
    Then user clicks on the action icon of "Patient Summary"
    Then user clicks on "Documents" on popup
    Then user lands on "Patient Documents" page
    Then user lands on "Document List" module
    Then filter item "All Names" with value "TST-1139 pack1"
    Then user clicks on breadcrumb "All Statuses" filter
    Then verify pop-up "Select Status"
    Then user clicks on "In Progress" on popup
    Then user clicks on tick-checkbox
    Then user clicks on Table first row "TST-1139 pack1"
    Then wait for popup loading
    Then user clicks on "Resume" on popup
    Then wait for popup loading
    Then verify persistent property "TST-1139_prop1" with value "save doc A as draft"
    Then user clicks on "Patient Quick Search" in menu bar section
    Then wait for popup loading
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "4989446682"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then wait for "3" seconds
    # Complete a Document with persistent epesodic
    Then user clicks on the plus icon of "Document Information"
    Then wait for "3" seconds
    Then verify pop-up "Search Documents"
    Then user clicks on "Search All Documents" on popup
    Then wait for popup loading
    Then user clicks on "Document Name" on popup
    Then user input "Document Name" with value "TST-1139 pack3"
    Then user clicks on tick-checkbox
    Then user clicks on "TST-1139 pack3" on popup
    Then wait for popup loading
    Then user clicks on "Start" on popup
    Then wait for popup loading
    Then verify persistent property "TST-1139_prop1" with value "completed Doc C"
    Then user clicks on input "TST-1139_prop1" document properties
    Then user clear input "TST-1139_prop1" document properties
    Then user input "TST-1139_prop1" with value "new completed doc C prop val" document properties
    Then user clicks on the action icon of "Patient Documents"
    Then verify pop-up "Save Document"
    Then user clicks on "Complete" on popup
    Then verify pop-up "Document Submission"
    Then user clicks on tick-checkbox
    Then verify "Completed Successfully" after completing the form
    Then user clicks on "Return To Menu" on popup
    Then wait for popup loading
# Revise Property
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on the option "Documents"
    Then user lands on "Document Settings" page
    Then user clicks on Document Settings Menu Option "Properties"
    Then user lands on "Properties List" module
    Then filter item "All Names" with value "TST-1139_prop1"
    Then user clicks on Table first row "TST-1139_prop1"
    Then wait for popup loading
    Then user clicks on the action icon of "Property Details"
    Then user clicks on "Revise" on popup
    Then user clicks on "Description" on popup
    Then user clears the text-area
    Then user enters "Edited Prop1" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then user clicks on the action icon of "Property Details"
    Then user clicks on "Publish" on popup
    Then user clicks on tick-checkbox
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then user clicks on pop-up back icon
    #Syncronize property

    Then user clicks on Document Settings Menu Option "Documents"
    Then user lands on "Documents List" module
    Then filter item "All Names" with value "Doc_TST-1139_Name1"
    Then Synchronize Property "TST-1139_prop1" to Document "Doc_TST-1139_Name1"
    Then publish "Doc_TST-1139_Name1" if it is not published

    Then user clicks on Document Settings Menu Option "Packages"
    Then user lands on "Package List" module
    Then filter item "All Names" with value "TST-1139 pack1"
    Then Synchronize Document "Doc_TST-1139_Name1" to Package "TST-1139 pack1"
    Then user clicks on pop-up back icon
    Then user clicks on "Patient Quick Search" in menu bar section
    Then wait for popup loading
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "4989446682"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then wait for "3" seconds
    # Complete a Document with persistent epesodic
    Then user clicks on the plus icon of "Document Information"
    Then wait for "3" seconds
    Then verify pop-up "Search Documents"
    Then user clicks on "Search All Documents" on popup
    Then wait for popup loading
    Then user clicks on "Document Name" on popup
    Then user input "Document Name" with value "TST-1139 pack1"
    Then user clicks on tick-checkbox
    Then user clicks on "TST-1139 pack1" on popup
    Then wait for popup loading
    Then user clicks on "Start" on popup
    Then wait for popup loading
    Then wait for popup loading
    Then verify persistent property "TST-1139_prop1" with value ""

  @TST-1293 @haiderejaz @e2eSprint @sprint6 @e2eSprint @sprint4
  Scenario: V3 Documents : Persistent Properties Within Documents with a Completed Status
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on the option "Documents"
    Then user lands on "Document Settings" page
    Then user clicks on Document Settings Menu Option "Properties"
    Then user lands on "Properties List" module
    Then filter item "All Names" with value "TST-1293_prop1"
    Then create a property with Code "code1_TST-1293" Name "TST-1293_prop1" Desc "Desc TST-1293" and Type "Text-Input-Inline" if not exist
    Then edit property "TST-1293_prop1" persistance to "Always"
    Then publish "TST-1293_prop1" if it is not published
    Then filter item "TST-1293_prop1" with value "TST-1293_prop2"
    Then create a property with Code "code2_TST-1293" Name "TST-1293_prop2" Desc "Desc TST-1293" and Type "Text-Input-Inline" if not exist
    Then edit property "TST-1293_prop2" persistance to "Never"
    Then publish "TST-1293_prop2" if it is not published
    Then filter item "TST-1293_prop2" with value "TST-1293_prop3"
    Then create a property with Code "code3_TST-1293" Name "TST-1293_prop3" Desc "Desc TST-1293" and Type "Text-Input-Inline" if not exist
    Then edit property "TST-1293_prop3" persistance to "Episodic"
    Then publish "TST-1293_prop3" if it is not published
    Then user clicks on Document Settings Menu Option "Documents"
    Then user lands on "Documents List" module
    Then filter item "All Names" with value "Doc_TST-1293_Name1"
    Then create a document with Code "Doc_TST-1293_Code1" Name "Doc_TST-1293_Name1" Desc "Doc_TST-1293_Description1" Type "Standard" Ammendable "active" Ability To Save Draft "active" Summarisable "active" Abandonable "active" if not exist
    Then configure a document "Doc_TST-1293_Name1" with sec name "TST-1293_sec1" code "TST-1293 code1" and existing property "TST-1293_prop1|TST-1293_prop2|TST-1293_prop3" if not published
    Then publish "Doc_TST-1293_Name1" if it is not published
    Then user clicks on Document Settings Menu Option "Packages"
    Then user lands on "Package List" module
    Then filter item "All Names" with value "TST-1293 pack1"
    Then create a Package with Code "TST-1293 code1" Name "TST-1293 pack1" Desc "Desc TST-1293" and Origin "Documents" if not exist
    Then User Associates Document "Doc_TST-1293_Name1" to Package "TST-1293 pack1"
    Then publish "TST-1293 pack1" if it is not published

    Then user clicks on "Systems" in menu bar section
    Then navigate to information screen in Site "Diana Princess of Wales Hospital" with Location "Ward C1K"
    Then discharge patient in bed "Bay 2 / Bed 5" on the basis of method "On Clinical Advice Or With Consent" and discharge location to be "Usual Place Of Residence"

    Then user clicks on "Patient Quick Search" in menu bar section
    Then wait for popup loading
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "4989446682"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then wait for "3" seconds
    Then user clicks on the plus icon of "Document Information"
    Then wait for "3" seconds
    Then verify pop-up "Search Documents"
    Then user clicks on "Search All Documents" on popup
    Then wait for popup loading
#    Then verify pop-up "Document Search"
    Then user clicks on "Document Name" on popup
    Then user input "Document Name" with value "TST-1293 pack1"
    Then user clicks on tick-checkbox
    Then user clicks on "TST-1293 pack1" on popup
    Then wait for popup loading
    Then user clicks on "Start" on popup
    Then wait for loading in "Document Properties" section
    Then wait for popup loading
    Then wait for popup loading
    Then user clicks on input "TST-1293_prop1" document properties
    Then user clear input "TST-1293_prop1" document properties
    Then user input "TST-1293_prop1" with value "testProp1" document properties
    Then user input "TST-1293_prop2" with value "testProp2" document properties
    Then user input "TST-1293_prop3" with value "testProp3" document properties
    Then user clicks on the action icon of "Patient Documents"
    Then verify pop-up "Save Document"
    Then user clicks on "Complete" on popup
    Then verify pop-up "Document Submission"
    Then user clicks on tick-checkbox
    Then verify "Completed Successfully" after completing the form
    Then wait for popup loading
    Then user clicks on "Return To Menu" on popup
    Then wait for loading in "Document Information" section
    Then user clicks on the action icon of "Patient Summary"
    Then user clicks on "Records" on popup
    Then user lands on "Event List" module
    Then wait for popup loading
    Then user clicks on Table first row "TST-1293 pack1"
    Then verify event report "TST-1293_prop1" with value "testProp1"
    Then verify event report "TST-1293_prop2" with value "testProp2"
    Then verify event report "TST-1293_prop3" with value "testProp3"

    Then user clicks on back icon
    Then wait for loading in "Document Information" section
    Then user clicks on the plus icon of "Document Information"
    Then wait for "3" seconds
    Then verify pop-up "Search Documents"
    Then user clicks on "Search All Documents" on popup
    Then wait for popup loading
#    Then verify pop-up "Document Search"
    Then user clicks on "Document Name" on popup
    Then user input "Document Name" with value "TST-1293 pack1"
    Then user clicks on tick-checkbox
    Then user clicks on "TST-1293 pack1" on popup
    Then wait for popup loading
    Then user clicks on "Start" on popup
    Then user lands on "Document Sections" module
    Then wait for loading in "Document Properties" section
    Then wait for popup loading
    Then verify persistent property "TST-1293_prop1" with value "testProp1"
    Then verify persistent property "TST-1293_prop2" with value ""
    Then verify persistent property "TST-1293_prop3" with value ""
    Then user clicks on back icon

    Then user clicks on "Systems" in menu bar section
    Then navigate to information screen in Site "Diana Princess of Wales Hospital" with Location "Ward C1K"
    Then add patient with NHS number "4989446682" in bed "Bay 1 / Bed 3"
    Then user clicks on "Patient Quick Search" in menu bar section
    Then wait for popup loading
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "4989446682"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then wait for "3" seconds
    # Complete a Document with persistent epesodic
    Then user clicks on the plus icon of "Document Information"
    Then wait for "3" seconds
    Then verify pop-up "Search Documents"
    Then user clicks on "Search All Documents" on popup
    Then wait for popup loading
    Then user clicks on "Document Name" on popup
    Then user input "Document Name" with value "TST-1293 pack1"
    Then user clicks on tick-checkbox
    Then user clicks on "TST-1293 pack1" on popup
    Then wait for popup loading
    Then user clicks on "Start" on popup
    Then wait for loading in "Document Properties" section
    Then wait for popup loading
    Then verify persistent property "TST-1293_prop1" with value "testProp1"
    Then verify persistent property "TST-1293_prop2" with value ""
    Then verify persistent property "TST-1293_prop3" with value ""

    Then user clicks on input "TST-1293_prop1" document properties
    Then user clear input "TST-1293_prop1" document properties
    Then user input "TST-1293_prop1" with value "new Val Always Prop" document properties
    Then user input "TST-1293_prop2" with value "new Val Never Prop" document properties
    Then user input "TST-1293_prop3" with value "new Val Episodic Prop" document properties
    Then user clicks on the action icon of "Patient Documents"
    Then verify pop-up "Save Document"
    Then user clicks on "Complete" on popup
    Then verify pop-up "Document Submission"
    Then user clicks on tick-checkbox
    Then verify "Completed Successfully" after completing the form
    Then wait for popup loading
    Then user clicks on "Return To Menu" on popup
    Then wait for loading in "Document Information" section
    Then user clicks on the action icon of "Patient Summary"
    Then user clicks on "Records" on popup
    Then user lands on "Event List" module
    Then wait for popup loading
    Then user clicks on Table first row "TST-1293 pack1"
    Then verify event report "TST-1293_prop1" with value "new Val Always Prop"
    Then verify event report "TST-1293_prop2" with value "new Val Never Prop"
    Then verify event report "TST-1293_prop3" with value "new Val Episodic Prop"

    Then user clicks on back icon
    Then wait for loading in "Document Information" section
    Then user clicks on the plus icon of "Document Information"
    Then wait for "3" seconds
    Then verify pop-up "Search Documents"
    Then user clicks on "Search All Documents" on popup
    Then wait for popup loading
#    Then verify pop-up "Document Search"
    Then user clicks on "Document Name" on popup
    Then user input "Document Name" with value "TST-1293 pack1"
    Then user clicks on tick-checkbox
    Then user clicks on "TST-1293 pack1" on popup
    Then wait for popup loading
    Then user clicks on "Start" on popup
    Then user lands on "Document Sections" module
    Then wait for loading in "Document Properties" section
    Then wait for popup loading
    Then verify persistent property "TST-1293_prop1" with value "new Val Always Prop"
    Then verify persistent property "TST-1293_prop2" with value ""
    Then verify persistent property "TST-1293_prop3" with value "new Val Episodic Prop"

  @TST-1294 @haiderejaz @e2eSprint @sprint6  @e2eSprint @sprint3
  Scenario: V3 Documents : Amending a Document with a Persistent Property
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on the option "Documents"
    Then user lands on "Document Settings" page
    Then user clicks on Document Settings Menu Option "Properties"
    Then user lands on "Properties List" module
    Then filter item "All Names" with value "TST-1294_prop1"
    Then create a property with Code "code1_TST-1294" Name "TST-1294_prop1" Desc "Desc TST-1294" and Type "Text-Input-Inline" if not exist
    Then edit property "TST-1294_prop1" persistance to "Always"
    Then publish "TST-1294_prop1" if it is not published
    Then user clicks on Document Settings Menu Option "Documents"
    Then user lands on "Documents List" module
    Then filter item "All Names" with value "Doc_TST-1294_Name1"
    Then create a document with Code "Doc_TST-1294_Code1" Name "Doc_TST-1294_Name1" Desc "Doc_TST-1294_Description1" Type "Standard" Ammendable "active" Ability To Save Draft "active" Summarisable "active" Abandonable "active" if not exist
    Then configure a document "Doc_TST-1294_Name1" with sec name "TST-1294_sec1" code "TST-1294 code1" and existing property "TST-1294_prop1" if not published
    Then publish "Doc_TST-1294_Name1" if it is not published
    Then user clicks on Document Settings Menu Option "Packages"
    Then user lands on "Package List" module
    Then filter item "All Names" with value "TST-1294 pack1"
    Then create a Package with Code "TST-1294 code1" Name "TST-1294 pack1" Desc "Desc TST-1294" and Origin "Documents" if not exist
    Then User Associates Document "Doc_TST-1294_Name1" to Package "TST-1294 pack1"
    Then publish "TST-1294 pack1" if it is not published
    Then user clicks on "Patient Quick Search" in menu bar section
    Then wait for popup loading
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "9999999999"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then wait for "3" seconds
    Then user clicks on the plus icon of "Document Information"
    Then wait for "3" seconds
    Then verify pop-up "Search Documents"
    Then user clicks on "Search All Documents" on popup
    Then wait for popup loading
#    Then verify pop-up "Document Search"
    Then user clicks on "Document Name" on popup
    Then user input "Document Name" with value "TST-1294 pack1"
    Then user clicks on tick-checkbox
    Then user clicks on "TST-1294 pack1" on popup
    Then wait for popup loading
    Then user clicks on "Start" on popup
    Then wait for popup loading
    Then wait for popup loading
    Then user clicks on input "TST-1294_prop1" document properties
    Then user clear input "TST-1294_prop1" document properties
    Then user input "TST-1294_prop1" with value "ExistingVal Always Prop 1" document properties
    Then user clicks on the action icon of "Patient Documents"
    Then verify pop-up "Save Document"
    Then user clicks on "Complete" on popup
    Then verify pop-up "Document Submission"
    Then user clicks on tick-checkbox
    Then verify "Completed Successfully" after completing the form
    Then user clicks on "View In Patient Record" on popup
    Then user lands on "Event List" module
    Then wait for popup loading
    Then verify event report "TST-1294_prop1" with value "ExistingVal Always Prop 1"
    Then user clicks on back icon
    Then user clicks on the plus icon of "Document Information"
    Then wait for "3" seconds
    Then verify pop-up "Search Documents"
    Then user clicks on "Search All Documents" on popup
    Then wait for popup loading
#    Then verify pop-up "Document Search"
    Then user clicks on "Document Name" on popup
    Then user input "Document Name" with value "TST-1294 pack1"
    Then user clicks on tick-checkbox
    Then user clicks on "TST-1294 pack1" on popup
    Then wait for popup loading
    Then user clicks on "Start" on popup
    Then wait for popup loading
    Then verify persistent property "TST-1294_prop1" with value "ExistingVal Always Prop 1"
    Then user clicks on input "TST-1294_prop1" document properties
    Then user clear input "TST-1294_prop1" document properties
    Then user input "TST-1294_prop1" with value "NewVal Always Persistent Prop 2" document properties
    Then user clicks on the action icon of "Patient Documents"
    Then verify pop-up "Save Document"
    Then user clicks on "Complete" on popup
    Then verify pop-up "Document Submission"
    Then user clicks on tick-checkbox
    Then verify "Completed Successfully" after completing the form
    Then user clicks on "View In Patient Record" on popup
    Then user lands on "Event List" module
    Then wait for popup loading
    Then verify event report "TST-1294_prop1" with value "NewVal Always Persistent Prop 2"
    Then user clicks on back icon
    Then wait for popup loading
    Then wait for loading in "Document Information" section
    Then user clicks on the action icon of "Patient Summary"
    Then user clicks on "Documents" on popup
    Then user lands on "Document List" module
    Then wait for loading in "Document List" section
    Then filter item "All Names" with value "TST-1294 pack1"
    Then user clicks on breadcrumb "All Statuses" filter
    Then verify pop-up "Select Status"
    Then user clicks on "Complete" on popup
    Then user clicks on tick-checkbox
    Then user clicks on Table first row "TST-1294 pack1"
    Then wait for popup loading
    Then verify pop-up "Document Menu"
    Then user clicks on "Amend" on popup
    Then wait for popup loading
    Then verify persistent property "TST-1294_prop1" with value "NewVal Always Persistent Prop 2"
    Then user clear input "TST-1294_prop1" document properties
    Then user input "TST-1294_prop1" with value "Amended Value Prop 3" document properties

    Then user clicks on the action icon of "Patient Documents"
    Then verify pop-up "Save Document"
    Then user clicks on "Save Amendments" on popup
    Then verify pop-up "Document Submission"
    Then user clicks on tick-checkbox
    Then verify "Completed Successfully" after completing the form
    Then user clicks on "Return To Menu" on popup
    Then wait for popup loading
    Then user clicks on cross icon
    Then user clicks on back icon
    Then user clicks on the plus icon of "Document Information"
    Then wait for popup loading
    Then verify pop-up "Search Documents"
    Then user clicks on "Search All Documents" on popup
    Then wait for popup loading
#    Then verify pop-up "Document Search"
    Then user clicks on "Document Name" on popup
    Then user input "Document Name" with value "TST-1294 pack1"
    Then user clicks on tick-checkbox
    Then user clicks on "TST-1294 pack1" on popup
    Then wait for popup loading
    Then user clicks on "Start" on popup
    Then wait for popup loading
    Then verify persistent property "TST-1294_prop1" with value "Amended Value Prop 3"

  @TST-1295 @haiderejaz @e2eSprint @sprint4
  Scenario: Removing a Document with a Persistent Property
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on the option "Documents"
    Then user lands on "Document Settings" page
    Then user clicks on Document Settings Menu Option "Properties"
    Then user lands on "Properties List" module
    Then filter item "All Names" with value "TST-1295_prop"
    Then create a property with Code "code_TST-1295" Name "TST-1295_prop" Desc "Desc TST-1295" and Type "Text-Input-Inline" if not exist
    Then edit property "TST-1295_prop" persistance to "Always"
    Then publish "TST-1295_prop" if it is not published
    Then user clicks on Document Settings Menu Option "Documents"
    Then user lands on "Documents List" module
    Then filter item "All Names" with value "Doc_TST-1295_Name"
    Then create a document with Code "Doc_TST-1295_Code" Name "Doc_TST-1295_Name" Desc "Doc_TST-1295_Description" Type "Standard" Ammendable "active" Ability To Save Draft "active" Summarisable "active" Abandonable "active" if not exist
    Then configure a document "Doc_TST-1295_Name" with sec name "TST-1295_sec" code "TST-1295 code" and existing property "TST-1295_prop" if not published
    Then publish "Doc_TST-1295_Name" if it is not published
    Then user clicks on Document Settings Menu Option "Packages"
    Then user lands on "Package List" module
    Then filter item "All Names" with value "TST-1295 pack"
    Then create a Package with Code "TST-1295 code" Name "TST-1295 pack" Desc "Desc TST-1295" and Origin "Documents" if not exist
    Then User Associates Document "Doc_TST-1295_Name" to Package "TST-1295 pack"
    Then publish "TST-1295 pack" if it is not published
    Then user clicks on "Patient Quick Search" in menu bar section
    Then wait for popup loading
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "9999999999"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then wait for "3" seconds
    Then user clicks on the plus icon of "Document Information"
    Then wait for "3" seconds
    Then verify pop-up "Search Documents"
    Then user clicks on "Search All Documents" on popup
    Then wait for popup loading
#    Then verify pop-up "Document Search"
    Then user clicks on "Document Name" on popup
    Then user input "Document Name" with value "TST-1295 pack"
    Then user clicks on tick-checkbox
    Then user clicks on "TST-1295 pack" on popup
    Then wait for popup loading
    Then user clicks on "Start" on popup
    Then user clicks on input "TST-1295_prop" document properties
    Then user input "TST-1295_prop" with value "testProp1" document properties
    Then user clicks on the action icon of "Patient Documents"
    Then verify pop-up "Save Document"
    Then user clicks on "Complete" on popup
    Then verify pop-up "Document Submission"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify "Completed Successfully" after completing the form
    Then user verify detail "View In Patient Record" exists "true"
    Then user verify detail "Return To Menu" exists "true"
    Then user verify detail "Display Package Documents" exists "true"
    Then user clicks on "Return To Menu" on popup
    Then wait for popup loading
    Then user clicks on the action icon of "Patient Summary"
    Then user clicks on "Records" on popup
    Then wait for loading in "Event List" section
    Then user lands on "Event List" module
    Then wait for popup loading
    Then user clicks on Table first row "TST-1295 pack"
    Then wait for loading in "Event Report" section
    Then verify event report "TST-1295_prop" with value "testProp1"
    Then user clicks on the action icon of "Patient Records"
    Then user clicks on "Documents" on popup
    Then wait for loading in "Document List" section
    Then filter item "All Names" with value "TST-1295 pack"
    Then Delete All "TST-1295 pack" Document
#    Then user clicks on Table first row "TST-1295 pack"
#    Then wait for popup loading
#    Then verify pop-up "Document Menu"
#    Then user clicks on "Remove" on popup
#    Then verify pop-up "Package Menu"
#    Then verify "Remove Document" after completing the form
#    Then user clicks on tick-checkbox
#    Then wait for popup loading
#    Then verify pop-up "Submission Status"
#    Then verify "Removed" after completing the form
#    Then user clicks on tick-checkbox
    Then user clicks on back icon
    Then wait for popup loading
    Then user clicks on the action icon of "Patient Summary"
    Then user clicks on "Records" on popup
    Then wait for loading in "Event List" section
    Then user inputs "TST-1295 pack" in the filter option
    Then verify "Nothing Found" is present in the event list table
    Then user clicks on back icon
    Then wait for loading in "Document Information" section
    Then user clicks on the plus icon of "Document Information"
    Then wait for "3" seconds
    Then verify pop-up "Search Documents"
    Then user clicks on "Search All Documents" on popup
    Then wait for popup loading
#    Then verify pop-up "Document Search"
    Then user clicks on "Document Name" on popup
    Then user input "Document Name" with value "TST-1295 pack"
    Then user clicks on tick-checkbox
    Then user clicks on "TST-1295 pack" on popup
    Then wait for popup loading
    Then user clicks on "Start" on popup
    Then user lands on "Document Sections" module
    Then wait for loading in "Document Properties" section
    Then verify persistent property "TST-1295_prop" with value "testProp1"

  @TST-1296 @haiderejaz @e2eSprint @sprint6
  Scenario: V3 Documents : Amending a Document with a Persistent Property
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on the option "Documents"
    Then user lands on "Document Settings" page
    Then user clicks on Document Settings Menu Option "Properties"
    Then user lands on "Properties List" module
    Then filter item "All Names" with value "KTM-Indicator-Property"
    Then create a property with Code "KTM-Code" Name "KTM-Indicator-Property" Desc "KTM-Indicator-Property with episodic persistance" and Type "Text-Input-Inline" if not exist
    Then edit property "KTM-Indicator-Property" persistance to "Episodic"
    Then publish "KTM-Indicator-Property" if it is not published
    Then user clicks on Document Settings Menu Option "Documents"
    Then user lands on "Documents List" module
    Then filter item "All Names" with value "Doc_TST-1296_Name1"
    Then create a document with Code "Doc_TST-1296_Code1" Name "Doc_TST-1296_Name1" Desc "Doc_TST-1296_Description1" Type "Standard" Ammendable "active" Ability To Save Draft "active" Summarisable "active" Abandonable "active" if not exist
    Then configure a document "Doc_TST-1296_Name1" with sec name "TST-1296_sec1" code "TST-1296 code1" and existing property "KTM-Indicator-Property" if not published
    Then Synchronize Property "TST-1296_prop1" to Document "Doc_TST-1296_Name1"
    Then publish "Doc_TST-1296_Name1" if it is not published
    Then user clicks on Document Settings Menu Option "Packages"
    Then user lands on "Package List" module
    Then filter item "All Names" with value "TST-1296 pack1"
    Then create a Package with Code "TST-1296 code1" Name "TST-1296 pack1" Desc "Desc TST-1296" and Origin "Documents" if not exist
    Then User Associates Document "Doc_TST-1296_Name1" to Package "TST-1296 pack1"
    Then Synchronize Document "Doc_TST-1296_Name1" to Package "TST-1296 pack1"
    Then publish "TST-1296 pack1" if it is not published

    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on the option "Information Screens"
    Then user lands on "Information Screen Settings" page
    Then user clicks on Document Settings Menu Option "Indicators"
    Then user lands on "Indicator List" module
    Then create clinical indicators "KTM-Indicator" with existing Property "KTM-Indicator-Property"
    Then Add clinical indicators "KTM-Indicator" Icon set "virus-default" with clinical indication icon "virus-green|virus-red" with respect to selectors "No Value|Value Entered"
    Then user clicks on Document Settings Menu Option "Locations"
    Then wait for loading in "Location List" section
    Then Configure Global Indicator "K Testing" with clinical indicator "KTM-Indicator" if not configured

    Then user clicks on "Systems" in menu bar section
    Then navigate to information screen in Site "Diana Princess of Wales Hospital" with Location "Ward C1K"
    Then discharge patient in bed "Bay 2 / Bed 5" on the basis of method "On Clinical Advice Or With Consent" and discharge location to be "Usual Place Of Residence"
    Then navigate to information screen in Site "Diana Princess of Wales Hospital" with Location "Ward C1K"
    Then add patient with NHS number "9999999999" in bed "Bay 2 / Bed 5"

    Then user clicks on "Patient Quick Search" in menu bar section
    Then wait for popup loading
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "9999999999"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then wait for "3" seconds
    Then user clicks on the action icon of "Patient Summary"
    Then user clicks on "Documents" on popup
    Then wait for loading in "Document List" section
    Then filter item "All Names" with value "TST-1296 pack1"
    Then Delete All "TST-1296 pack1" Document
    Then user clicks on back icon
    Then wait for popup loading
    Then user clicks on the plus icon of "Document Information"
    Then wait for "3" seconds
    Then verify pop-up "Search Documents"
    Then user clicks on "Search All Documents" on popup
    Then wait for popup loading
#    Then verify pop-up "Document Search"
    Then user clicks on "Document Name" on popup
    Then user input "Document Name" with value "TST-1296 pack1"
    Then user clicks on tick-checkbox
    Then user clicks on "TST-1296 pack1" on popup
    Then wait for popup loading
    Then user clicks on "Start" on popup
    Then wait for popup loading
    Then wait for popup loading
    Then user clicks on input "KTM-Indicator-Property" document properties
    Then user clear input "KTM-Indicator-Property" document properties
    Then user input "KTM-Indicator-Property" with value "clinical Indicator TST-1296" document properties
    Then user clicks on the action icon of "Patient Documents"
    Then verify pop-up "Save Document"
    Then user clicks on "Complete" on popup
    Then verify pop-up "Document Submission"
    Then user clicks on tick-checkbox
    Then verify "Completed Successfully" after completing the form
    Then user clicks on "Return To Menu" on popup
    Then wait for popup loading
    Then wait for "3" seconds

    Then user clicks on "Systems" in menu bar section
    Then navigate to information screen in Site "Diana Princess of Wales Hospital" with Location "Ward C1K"
    Then verify bed "Bay 2 / Bed 5" indicators property "KTM-Indicator" with icon "virus-red" and value "clinical Indicator TST-1296"

    Then user clicks on "Patient Quick Search" in menu bar section
    Then wait for popup loading
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "9999999999"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then wait for "3" seconds
    Then user clicks on the action icon of "Patient Summary"
    Then user clicks on "Documents" on popup
    Then user lands on "Document List" module
    Then wait for loading in "Document List" section
    Then filter item "All Names" with value "TST-1296 pack1"
    Then Delete All "TST-1296 pack1" Document
    Then verify "TST-1296 pack1" is present in the table "false"

  @TST-1298 @haiderejaz @e2eSprint @sprint6 @e2eSprint @sprint4
  Scenario: Persistence as pertains for "In Progress" Document
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on the option "Documents"
    Then user lands on "Document Settings" page
    Then user clicks on Document Settings Menu Option "Properties"
    Then user lands on "Properties List" module
    Then filter item "All Names" with value "KTM-Indicator-Property"
    Then create a property with Code "KTM-Code" Name "KTM-Indicator-Property" Desc "KTM-Indicator-Property with episodic persistance" and Type "Text-Input-Inline" if not exist
    Then edit property "KTM-Indicator-Property" persistance to "Episodic"
    Then publish "KTM-Indicator-Property" if it is not published
    Then user clicks on Document Settings Menu Option "Documents"
    Then user lands on "Documents List" module
    Then filter item "All Names" with value "Doc_TST-1298_Name"
    Then create a document with Code "Doc_TST-1298_Code" Name "Doc_TST-1298_Name" Desc "Doc_TST-1298_Description" Type "Standard" Ammendable "active" Ability To Save Draft "active" Summarisable "active" Abandonable "active" if not exist
    Then configure a document "Doc_TST-1298_Name" with sec name "TST-1298_sec" code "TST-1298 code" and existing property "KTM-Indicator-Property" if not published
    Then publish "Doc_TST-1298_Name" if it is not published
    Then user clicks on Document Settings Menu Option "Packages"
    Then user lands on "Package List" module
    Then filter item "All Names" with value "TST-1298 pack"
    Then create a Package with Code "TST-1298 code" Name "TST-1298 pack" Desc "Desc TST-1298" and Origin "Documents" if not exist
    Then User Associates Document "Doc_TST-1298_Name" to Package "TST-1298 pack"
    Then publish "TST-1298 pack" if it is not published

    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on the option "Information Screens"
    Then user lands on "Information Screen Settings" page
    Then user clicks on Document Settings Menu Option "Indicators"
    Then user lands on "Indicator List" module
    Then create clinical indicators "KTM-Indicator" with existing Property "KTM-Indicator-Property"
    Then Add clinical indicators "KTM-Indicator" Icon set "virus-default" with clinical indication icon "virus-green|virus-red" with respect to selectors "No Value|Value Entered"
    Then user clicks on Document Settings Menu Option "Locations"
    Then wait for loading in "Location List" section
    Then Configure Global Indicator "K Testing" with clinical indicator "KTM-Indicator" if not configured

    Then user clicks on "Systems" in menu bar section
    Then navigate to information screen in Site "Diana Princess of Wales Hospital" with Location "Ward C1K"
    Then discharge patient in bed "Bay 2 / Bed 5" on the basis of method "On Clinical Advice Or With Consent" and discharge location to be "Usual Place Of Residence"
    Then navigate to information screen in Site "Diana Princess of Wales Hospital" with Location "Ward C1K"
    Then add patient with NHS number "9999999999" in bed "Bay 2 / Bed 5"

    Then user clicks on "Patient Quick Search" in menu bar section
    Then wait for popup loading
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "9999999999"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then wait for "3" seconds
    Then user clicks on the plus icon of "Document Information"
    Then wait for "3" seconds
    Then verify pop-up "Search Documents"
    Then user clicks on "Search All Documents" on popup
    Then wait for popup loading
#    Then verify pop-up "Document Search"
    Then user clicks on "Document Name" on popup
    Then user input "Document Name" with value "TST-1298 pack"
    Then user clicks on tick-checkbox
    Then user clicks on "TST-1298 pack" on popup
    Then wait for popup loading
    Then user clicks on "Start" on popup
    Then user clicks on input "KTM-Indicator-Property" document properties
    Then user input "KTM-Indicator-Property" with value "clinical Indicator TST-1298" document properties
    Then user clicks on the action icon of "Patient Documents"
    Then verify pop-up "Save Document"
    Then user clicks on "Save Draft" on popup
    Then verify "Saved Successfully" after completing the form
    Then verify pop-up "Document Saved"
    Then user clicks on "Return To Menu" on popup
    Then wait for popup loading
    Then user verify Document Info "TST-1298 pack" Status "In Progress"
    Then user clicks on "Systems" in menu bar section
    Then navigate to information screen in Site "Diana Princess of Wales Hospital" with Location "Ward C1K"
    Then user clicks on "Bay 2 / Bed 5"
    Then wait for popup loading
    Then user clicks on the action icon of "Slot Details"
    Then wait for popup loading
    Then user clicks on "Clinical Indicators" on popup
    Then wait for popup loading
    Then user input "KTM-Indicator" with value "Testing"
    Then user clicks on tick-checkbox
    Then verify "Submitted" after completing the form
    Then user clicks on "Return To Information Screen" on popup
    Then wait for popup loading

    Then user clicks on "Patient Quick Search" in menu bar section
    Then wait for popup loading
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "9999999999"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then wait for "3" seconds
    Then wait for popup loading
    Then user clicks document "TST-1298 pack" with Status "In Progress"
    Then wait for popup loading
    Then user clicks on "Resume" on popup
    Then wait for popup loading
    Then user clicks on input "KTM-Indicator-Property" document properties
    Then user clear input "KTM-Indicator-Property" document properties
    Then user input "KTM-Indicator-Property" with value "clinical Indicator TST-1298" document properties
    Then user clicks on the action icon of "Patient Documents"
    Then verify pop-up "Save Document"
    Then user clicks on "Complete" on popup
    Then verify pop-up "Document Submission"
    Then user clicks on tick-checkbox
    Then verify "Completed Successfully" after completing the form
    Then user clicks on "Return To Menu" on popup
    Then wait for popup loading
    Then wait for "3" seconds
    Then user clicks on "Systems" in menu bar section
    Then navigate to information screen in Site "Diana Princess of Wales Hospital" with Location "Ward C1K"
    Then verify bed "Bay 2 / Bed 5" indicators property "KTM-Indicator" with icon "virus-red" and value "clinical Indicator TST-1298"

  @TST-1299 @haiderejaz @e2eSprint @sprint6 @e2eSprint @sprint4
  Scenario: Persistence as pertained to Amending Documents and Indicators
    Given user lands on "Systems" page
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on the option "Documents"
    Then user lands on "Document Settings" page
    Then user clicks on Document Settings Menu Option "Properties"
    Then user lands on "Properties List" module
    Then filter item "All Names" with value "KTM-Indicator-Property"
    Then create a property with Code "KTM-Code" Name "KTM-Indicator-Property" Desc "KTM-Indicator-Property with episodic persistance" and Type "Text-Input-Inline" if not exist
    Then edit property "KTM-Indicator-Property" persistance to "Episodic"
    Then publish "KTM-Indicator-Property" if it is not published
    Then user clicks on Document Settings Menu Option "Documents"
    Then user lands on "Documents List" module
    Then filter item "All Names" with value "Doc_TST-1299_Name"
    Then create a document with Code "Doc_TST-1299_Code" Name "Doc_TST-1299_Name" Desc "Doc_TST-1299_Description" Type "Standard" Ammendable "active" Ability To Save Draft "active" Summarisable "active" Abandonable "active" if not exist
    Then configure a document "Doc_TST-1299_Name" with sec name "TST-1299_sec" code "TST-1299 code" and existing property "KTM-Indicator-Property" if not published
    Then publish "Doc_TST-1299_Name" if it is not published
    Then user clicks on Document Settings Menu Option "Packages"
    Then user lands on "Package List" module
    Then filter item "All Names" with value "TST-1299 pack"
    Then create a Package with Code "TST-1299 code" Name "TST-1299 pack" Desc "Desc TST-1299" and Origin "Documents" if not exist
    Then User Associates Document "Doc_TST-1299_Name" to Package "TST-1299 pack"
    Then publish "TST-1299 pack" if it is not published

    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on the option "Information Screens"
    Then user lands on "Information Screen Settings" page
    Then user clicks on Document Settings Menu Option "Indicators"
    Then user lands on "Indicator List" module
    Then create clinical indicators "KTM-Indicator" with existing Property "KTM-Indicator-Property"
    Then Add clinical indicators "KTM-Indicator" Icon set "virus-default" with clinical indication icon "virus-green|virus-red" with respect to selectors "No Value|Value Entered"
    Then user clicks on Document Settings Menu Option "Locations"
    Then wait for loading in "Location List" section
    Then Configure Global Indicator "K Testing" with clinical indicator "KTM-Indicator" if not configured

    Then user clicks on "Systems" in menu bar section
    Then navigate to information screen in Site "Diana Princess of Wales Hospital" with Location "Ward C1K"
    Then discharge patient in bed "Bay 2 / Bed 5" on the basis of method "On Clinical Advice Or With Consent" and discharge location to be "Usual Place Of Residence"
    Then navigate to information screen in Site "Diana Princess of Wales Hospital" with Location "Ward C1K"
    Then add patient with NHS number "9999999999" in bed "Bay 2 / Bed 5"


    Then user clicks on "Patient Quick Search" in menu bar section
    Then wait for popup loading
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "9999999999"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then wait for "3" seconds
    Then user clicks on the action icon of "Patient Summary"
    Then user clicks on "Documents" on popup
    Then wait for loading in "Document List" section
    Then filter item "All Names" with value "TST-1299 pack"
    Then Delete All "TST-1299 pack" Document
    Then user clicks on back icon
    Then wait for popup loading
    Then user clicks on the plus icon of "Document Information"
    Then wait for "3" seconds
    Then verify pop-up "Search Documents"
    Then user clicks on "Search All Documents" on popup
    Then wait for popup loading
#    Then verify pop-up "Document Search"
    Then user clicks on "Document Name" on popup
    Then user input "Document Name" with value "TST-1299 pack"
    Then user clicks on tick-checkbox
    Then user clicks on "TST-1299 pack" on popup
    Then wait for popup loading
    Then user clicks on "Start" on popup
    Then wait for popup loading
    Then wait for popup loading
    Then user clicks on input "KTM-Indicator-Property" document properties
    Then user clear input "KTM-Indicator-Property" document properties
    Then user input "KTM-Indicator-Property" with value "clinical Indicator TST-1299" document properties
    Then user clicks on the action icon of "Patient Documents"
    Then verify pop-up "Save Document"
    Then user clicks on "Complete" on popup
    Then verify pop-up "Document Submission"
    Then user clicks on tick-checkbox
    Then verify "Completed Successfully" after completing the form
    Then user clicks on "Return To Menu" on popup
    Then wait for popup loading
    Then wait for "3" seconds

    Then user clicks on "Systems" in menu bar section
    Then navigate to information screen in Site "Diana Princess of Wales Hospital" with Location "Ward C1K"
    Then verify bed "Bay 2 / Bed 5" indicators property "KTM-Indicator" with icon "virus-red" and value "clinical Indicator TST-1299"
    Then user clicks on "Bay 2 / Bed 5"
    Then wait for popup loading
    Then user clicks on the action icon of "Slot Details"
    Then wait for popup loading
    Then user clicks on "Clinical Indicators" on popup
    Then wait for popup loading
    Then user input "KTM-Indicator" with value "Testing"
    Then user clicks on tick-checkbox
    Then verify "Submitted" after completing the form
    Then user clicks on "Return To Information Screen" on popup
    Then wait for popup loading

    Then user clicks on "Patient Quick Search" in menu bar section
    Then wait for popup loading
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "9999999999"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then wait for "3" seconds
    Then wait for popup loading
    Then user clicks on the action icon of "Patient Summary"
    Then user clicks on "Documents" on popup
    Then user lands on "Document List" module
    Then wait for loading in "Document List" section
    Then filter item "All Names" with value "TST-1299 pack"
    Then user clicks on breadcrumb "All Statuses" filter
    Then verify pop-up "Select Status"
    Then user clicks on "Complete" on popup
    Then user clicks on tick-checkbox
    Then user clicks on Table first row "TST-1299 pack"
    Then wait for popup loading
    Then user clicks on "Amend" on popup
    Then wait for popup loading
    Then user clicks on input "KTM-Indicator-Property" document properties
    Then user clear input "KTM-Indicator-Property" document properties
    Then user input "KTM-Indicator-Property" with value "amended indicator property" document properties
    Then user clicks on the action icon of "Patient Documents"
    Then wait for popup loading
    Then verify pop-up "Save Document"
    Then user clicks on "Save Amendments" on popup
    Then wait for popup loading
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify "Completed Successfully" after completing the form
    Then user clicks on "Return To Menu" on popup
    Then wait for popup loading
    Then user clicks on cross icon
    Then user clicks on "Systems" in menu bar section
    Then navigate to information screen in Site "Diana Princess of Wales Hospital" with Location "Ward C1K"
    Then verify bed "Bay 2 / Bed 5" indicators property "KTM-Indicator" with icon "virus-red" and value "amended indicator property"

  @TST-656 @haiderejaz @e2eSprint @sprint6
  Scenario: V3 Documents : Edit Images - Change Image File / Image Description
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on "Documents" icon
    Then user lands on "Document Settings" page
    Then user clicks on Document Settings Menu Option "Images"
    Then user lands on "Images List" module
    Then filter item "All Names" with value "Image_TST-656_Name"
    Then create an image with code "Image_TST-656_Code" name "Image_TST-656_Name" desc "Image_TST-656_Description" anatomical site "Eyelid" orientation "Portrait" image "uploadImage.jpg" if not exist
    Then publish "Image_TST-656_Name" if it is not published

    Then user clicks on Table first row "Image_TST-656_Name"
    Then user clicks on the action icon of "Image Details"
    Then verify pop-up "Image Menu"
    Then user clicks on "Revise" on popup


    Then user clicks on "Description" on popup
    Then user clears the text-area
    Then user enters "Edited_TST-656_Desc" in the text-area
    Then user clicks on tick-checkbox

    Then user verify detail "Change File" exists "true"
    Then user uploads file "uploadEditedImage.png"
    Then user clicks on tick-checkbox

    Then verify pop-up "Image Summary"
#    Then user verify detail "Code" with value "Image_TST-656_Code"
#    Then user verify detail "Name" with value "Image_TST-656_Name"
#    Then user verify detail "Description" with value "Edited_TST-656_Desc"
#    Then user verify detail "Image" exists "true"

    Then user clicks on tick-checkbox
    Then verify "Submission Successful" after completing the form
    Then verify pop-up "Submission Status"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then user verify detail "Created On" exists "true"
    Then user verify detail "Created By" with value "K Kualitatem"
    Then user verify detail "Code" with value "Image_TST-656_Code"
    Then user verify detail "Name" with value "Image_TST-656_Name"
    Then user verify detail "Description" with value "Edited_TST-656_Desc"
    Then user verify detail "STATUS" with value "Unpublished"
    Then user verify detail "Revision" exists "true"
#    Then user verify detail "Anatomical Site" with value "Left Ankle"
#    Then user verify detail "Orientation" with value "Landscape"
    Then user verify detail "Image" exists "true"

    Then user clicks on the action icon of "Image Details"
    Then verify pop-up "Image Menu"
    Then user clicks on "Edit" on popup

    Then user clears the text-input "Code"
    Then user inputs "Code" with value "Image_TST-656_Code"
    Then user inputs "Name" with value "Image_TST-656_Name"
    Then user clicks on "Description" on popup
    Then user clears the text-area
    Then user enters "Image_TST-656_Description" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on "Anatomical Site" on popup
    Then user clicks on "Eyelid" on popup
    Then user clicks on "Orientation" on popup
    Then user clicks on "Portrait" on popup

    Then user verify detail "Change File" exists "true"
    Then user uploads file "uploadImage.jpg"
    Then user clicks on tick-checkbox
    Then verify pop-up "Image Summary"
    Then user verify detail "Code" with value "Image_TST-656_Code"
    Then user verify detail "Name" with value "Image_TST-656_Name"
    Then user verify detail "Description" with value "Image_TST-656_Description"
#    Then user verify detail "Anatomical Site" with value "Eyelid"
#    Then user verify detail "Orientation" with value "Portrait"
    Then user verify detail "Image" exists "true"

    Then user clicks on tick-checkbox
    Then verify "Submission Successful" after completing the form
    Then verify pop-up "Submission Status"
    Then user clicks on tick-checkbox
    Then user clicks on pop-up back icon
    Then publish "Image_TST-656_Name" if it is not published

