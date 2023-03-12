@v3Documents @v3DocumentsHaiderAli @e2e
Feature: To check the V3 Documents

  @TST-638 @haider @e2eSprint @sprint3
  Scenario: V3 Documents : Create a Package
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on "Documents" icon
    Then user lands on "Document Settings" page
    Then user lands on "Package List" module
    Then user clicks on the plus icon
    Then verify pop-up "Create Package"
    Then verify "Code" is mandatory input in the pop-up
    Then verify "Name" is mandatory input in the pop-up
    Then verify "Origin" is mandatory input in the pop-up
    Then user inputs "Code" with value "Pack_TST-638_Code"
    Then user inputs "Name" with value "Pack_TST-638_Name"
    Then user clicks on the action "Description"
    Then verify pop-up "Enter Description"
    Then user enters "Pack_TST-638_Description" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on the action "Category"
    Then verify pop-up "Select Category"
    Then user clicks on the action "Infection Control"
    Then user clicks on tick-checkbox
    Then user clicks on the action "Specialty"
    Then verify pop-up "Select Specialty"
    Then user clicks on the action "Accident & Emergency"
    Then user clicks on tick-checkbox
    Then user clicks on the action "Origin"
    Then verify pop-up "Select Origin"
    Then user clicks on the action "Documents"
    Then user clicks on the action "Email Address(s)"
    Then verify pop-up "Email Address List"
    Then user clicks on the pop-up plus icon
    Then user inputs "haider.ali@kualitatem.com" in the input section with placeholder "Enter an Email Address List"
    Then user clicks on tick-checkbox
    Then verify pop-up "Email Address List"
    Then user clicks on the pop-up plus icon
    Then user inputs "safi.khan@kualitatem.com" in the input section with placeholder "Enter an Email Address List"
    Then user clicks on tick-checkbox
    Then verify pop-up "Email Address List"
    Then user clicks on pop-up back icon
    Then user clicks on tick-checkbox
    Then verify pop-up "Package Summary"
    Then verify "Code" with value "Pack_TST-638_Code" in the pop-up details
    Then verify "Name" with value "Pack_TST-638_Name" in the pop-up details
    Then verify "Description" with value "Pack_TST-638_Description" in the pop-up details
    Then verify "Category" with value "Infection Control" in the pop-up details
    Then verify "Specialty" with value "Accident & Emergency" in the pop-up details
    Then verify "Origin" with value "Documents" in the pop-up details
    Then user clicks on tick-checkbox
    Then wait for 10 seconds
    Then verify pop-up "Submission Status"
    Then verify "Submission Successful" after completing the form
    Then verify "Package succesfully created" after completing the form description
    Then user verify action "Link documents to package" is available
    Then user verify action "Create another Package" is available
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify "Status" with value "Unpublished" in the pop-up details

  @TST-651 @haider @e2eSprint @sprint3
  Scenario: V3 Documents : Verify Package Details Modal page after publishing a Package
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on "Documents" icon
    Then user lands on "Document Settings" page
    Then user lands on "Package List" module
    Then user clicks on "Packages"
    Then user lands on "Package List" module
    Then filter item "All Names" with value "Pack_TST-651_Name"
    Then choose filter "Unpublished" on "All Statuses"
    Then create a Package with Code "Pack_TST-651_Code" Name "Pack_TST-651_Name" Desc "Pack_TST-651_Description" Category "Infection Control" Specialty "Accident & Emergency" and Origin "Documents" if not exist
    Then wait for 10 seconds
    Then user clicks on "Pack_TST-651_Name" in the table
    Then verify pop-up "Package Details"
    Then verify "Status" with value "Unpublished" in the pop-up details
    Then verify "Code" with value "Pack_TST-651_Code" in the pop-up details
    Then verify "Name" with value "Pack_TST-651_Name" in the pop-up details
    Then verify "Description" with value "Pack_TST-651_Description" in the pop-up details
    Then verify "Category" with value "Infection Control" in the pop-up details
    Then verify "Specialty" with value "Accident & Emergency" in the pop-up details
    Then verify "Origin" with value "Documents" in the pop-up details
    Then verify "Updated By" with value "loginData|credentials.name" in the pop-up details
    Then verify there are "0" number of "Email Address(s)" in the pop-up
    Then verify there are "0" number of "Linked Documents" in the pop-up
    Then user clicks on the action icon
    Then verify pop-up "Package Menu"
    Then user clicks on the action "Publish"
    Then verify pop-up "Publish Package"
    Then user clicks on tick-checkbox
    Then wait for 10 seconds
    Then verify pop-up "Submission Status"
    Then verify "Publish Successful" after completing the form
    Then verify "Package succesfully published" after completing the form description
    Then user clicks on tick-checkbox
    Then verify "Status" with value "Published" in the pop-up details
    Then verify "Code" with value "Pack_TST-651_Code" in the pop-up details
    Then verify "Name" with value "Pack_TST-651_Name" in the pop-up details
    Then verify "Description" with value "Pack_TST-651_Description" in the pop-up details
    Then verify "Category" with value "Infection Control" in the pop-up details
    Then verify "Specialty" with value "Accident & Emergency" in the pop-up details
    Then verify "Origin" with value "Documents" in the pop-up details
    Then verify "Updated By" with value "loginData|credentials.name" in the pop-up details
    Then verify there are "0" number of "Email Address(s)" in the pop-up
    Then verify there are "0" number of "Linked Documents" in the pop-up

  @TST-652 @haider @NeedToAddImageVerification @e2eSprint @sprint3
  Scenario: V3 Documents : Create New Images
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on "Documents" icon
    Then user lands on "Document Settings" page
    Then user lands on "Package List" module
    Then user clicks on "Images"
    Then user lands on "Images List" module
    Then user clicks on the plus icon
    Then user inputs "Code" with value "Image_TST-652_Code"
    Then user inputs "Name" with value "Image_TST-652_Name"
    Then user clicks on the action "Description"
    Then verify pop-up "Enter Description"
    Then user enters "Image_TST-652_Description" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on the action "Anatomical Site"
    Then verify pop-up "Select Site"
    Then user clicks on the action "Eyelid"
    Then user clicks on the action "Orientation"
    Then verify pop-up "Select Orientation"
    Then user clicks on the action "Portrait"
    Then user uploads file "uploadImage.jpg"
    Then user clicks on tick-checkbox
    Then verify pop-up "Image Summary"
    Then verify "Code" with value "Image_TST-652_Code" in the pop-up details
    Then verify "Name" with value "Image_TST-652_Name" in the pop-up details
    Then verify image is shown in pop-up details and saved as dataurl
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Submission Successful" after completing the form
    Then verify "Image succesfully created" after completing the form description
    Then user clicks on tick-checkbox
    Then verify "Code" with value "Image_TST-652_Code" in the pop-up details
    Then verify "Name" with value "Image_TST-652_Name" in the pop-up details
    Then verify "Description" with value "Image_TST-652_Description" in the pop-up details
    Then verify "Status" with value "Unpublished" in the pop-up details
    Then verify "Revision" with value "1" in the pop-up details
    Then verify "Anatomical Site" with value "Eyelid" in the pop-up details
    Then verify "Orientation" with value "Portrait" in the pop-up details
    Then verify "Created By" with value "loginData|credentials.name" in the pop-up details

  @TST-669 @haider @e2eSprint @sprint3
  Scenario: V3 Documents : Create a Package with Linked Documents and Verify Package Details
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on "Documents" icon
    Then user lands on "Document Settings" page
    Then user lands on "Package List" module
    Then user clicks on "Documents"
    Then user lands on "Documents List" module
    Then filter item "All Names" with value "Doc_TST-669_Name"
    Then create a document with Code "Doc_TST-669_Code" Name "Doc_TST-669_Name" Desc "Doc_TST-699_Description" Type "Standard" Ammendable "active" Ability To Save Draft "active" Summarisable "active" Abandonable "active" if not exist
    Then publish "Doc_TST-669_Name" if it is not published
    Then user clicks on "Packages"
    Then user lands on "Package List" module
    Then user clicks on the plus icon
    Then verify pop-up "Create Package"
    Then user inputs "Code" with value "Pack_TST-669_Code"
    Then user inputs "Name" with value "Pack_TST-669_Name"
    Then user clicks on the action "Description"
    Then verify pop-up "Enter Description"
    Then user enters "Pack_TST-669_Description" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on the action "Category"
    Then verify pop-up "Select Category"
    Then user clicks on the pop-up option "Infection Control"
    Then user clicks on tick-checkbox
    Then user clicks on the action "Specialty"
    Then verify pop-up "Select Specialty"
    Then user clicks on the pop-up option "Accident & Emergency"
    Then user clicks on tick-checkbox
    Then user clicks on the action "Origin"
    Then verify pop-up "Select Origin"
    Then user clicks on the action "Documents"
    Then verify there are "0" number of "Email Address(s)" in the pop-up
    Then user clicks on the action "Email Address(s)"
    Then verify pop-up "Email Address List"
    Then user clicks on the pop-up plus icon
    Then user inputs "haider.ali@kualitatem.com" in the input section with placeholder "Enter an Email Address List"
    Then user clicks on tick-checkbox
    Then verify pop-up "Email Address List"
    Then user clicks on the pop-up plus icon
    Then user inputs "safi.khan@kualitatem.com" in the input section with placeholder "Enter an Email Address List"
    Then user clicks on tick-checkbox
    Then user clicks on pop-up back icon
    Then verify there are "2" number of "Email Address(s)" in the pop-up
    Then user clicks on tick-checkbox
    Then verify pop-up "Package Summary"
    Then verify "Code" with value "Pack_TST-669_Code" in the pop-up details
    Then verify "Name" with value "Pack_TST-669_Name" in the pop-up details
    Then verify "Description" with value "Pack_TST-669_Description" in the pop-up details
    Then verify "Category" with value "Infection Control" in the pop-up details
    Then verify "Specialty" with value "Accident & Emergency" in the pop-up details
    Then verify "Origin" with value "Documents" in the pop-up details
    Then verify "Email Address(s)" with value "haider.ali@kualitatem.comsafi.khan@kualitatem.com" in the pop-up details
    Then user clicks on tick-checkbox
    Then wait for 10 seconds
    Then verify pop-up "Submission Status"
    Then verify "Submission Successful" after completing the form
    Then verify "Package succesfully created" after completing the form description
    Then user verify action "Link documents to package" is available
    Then user verify action "Create another Package" is available
    Then user clicks on the action "Link documents to package"
    Then verify pop-up "Linked Documents List"
    Then user clicks on the action icon
    Then verify pop-up "Linked Documents Actions"
    Then user clicks on the action "Add Documents"
    Then verify pop-up "Document Search"
    Then user clicks on tick-checkbox
    Then user inputs "Doc_TST-669_Name" in the filter option
    Then user clicks on the action "Doc_TST-669_Name"
    Then user clicks on tick-checkbox
    Then verify pop-up "Linked Documents List"
    Then verify "Doc_TST-669_Name" is present in the pop-up menu
    Then user clicks on pop-up back icon
    Then verify pop-up "Package Details"
    Then verify "Status" with value "Unpublished" in the pop-up details
    Then verify "Code" with value "Pack_TST-669_Code" in the pop-up details
    Then verify "Name" with value "Pack_TST-669_Name" in the pop-up details
    Then verify "Description" with value "Pack_TST-669_Description" in the pop-up details
    Then verify "Category" with value "Infection Control" in the pop-up details
    Then verify "Specialty" with value "Accident & Emergency" in the pop-up details
    Then verify "Origin" with value "Documents" in the pop-up details
    Then verify "Revision" with value "1" in the pop-up details
    Then verify there are "2" number of "Email Address(s)" in the pop-up
    Then verify there are "1" number of "Linked Documents" in the pop-up

  @TST-680 @haider @e2eSprint @sprint3
  Scenario: V3 Documents : Document  Config - Revise a Property with Rules Configuration (Edit/update  default Rules)
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on "Documents" icon
    Then user lands on "Document Settings" page
    Then user lands on "Package List" module
    Then user clicks on "Properties"
    Then user lands on "Properties List" module
    Then filter item "All Names" with value "Prop_TST-680_Name_1"
    Then create a property with Code "Prop_TST-680_Code_1" Name "Prop_TST-680_Name_1" Desc "Prop_TST-680_Description_1" and Type "Text-Input-Inline" if not exist
    Then publish "Prop_TST-680_Name_1" if it is not published
    Then filter item "Prop_TST-680_Name_1" with value "Prop_TST-680_Name_2"
    Then create a property with Code "Prop_TST-680_Code_2" Name "Prop_TST-680_Name_2" Desc "Prop_TST-680_Description_2" and Type "Selection" if not exist
    Then configure selection property "Prop_TST-680_Name_2" with selection values "This is Prop_TST-680_1,This is Prop_TST-680_2" if not published
    Then publish "Prop_TST-680_Name_2" if it is not published
    Then user clicks on "Documents"
    Then user lands on "Documents List" module
    Then filter item "All Names" with value "Doc_TST-680_Name"
    Then create a document with Code "Doc_TST-680_Code" Name "Doc_TST-680_Name" Desc "Doc_TST-680_Description" Type "Standard" Ammendable "active" Ability To Save Draft "active" Summarisable "active" Abandonable "active" if not exist
    Then configure document "Doc_TST-680_Name" for TST-680 pre-requisites
    Then user clicks on "Doc_TST-680_Name" in the table
    Then verify pop-up "Document Details"
    Then user clicks on the action icon
    Then user clicks on the action "Configure"
    Then user lands on "Document Settings" page
    Then verify "Prop_TST-680_Name_1" has rules applied
    Then user clicks on the action icon for property "Prop_TST-680_Name_1"
    Then verify pop-up "Property Details"
    Then verify "Status" with value "Published" in the pop-up details
    Then verify "Updated By" with value "loginData|credentials.name" in the pop-up details
    Then verify "Code" with value "Prop_TST-680_Code_1" in the pop-up details
    Then verify "Name" with value "Prop_TST-680_Name_1" in the pop-up details
    Then verify "Description" with value "Prop_TST-680_Description_1" in the pop-up details
    Then verify "Searchable" with value "Yes" in the pop-up details
    Then verify "Type" with value "Text-Input-Inline" in the pop-up details
    Then verify "Persistence" with value "Never" in the pop-up details
#    Then verify there are "1" number of "Linked Documents" in the pop-up
    Then verify "Mandatory" with value "No" in the pop-up details
    Then verify "Visible" with value "Yes" in the pop-up details
    Then verify there are "1" number of "Rules" in the pop-up
    Then user clicks on the action icon pop-up
    Then user clicks on the action "Revise"
    Then verify pop-up "Revise Property"
    Then user clicks on the toggle button "Mandatory" to "active"
    Then user clicks on tick-checkbox
    Then verify "Success" after completing the form
    Then user verify action "Return to Document" is available
    Then user clicks on tick-checkbox
    Then verify pop-up "Property Details"
    Then verify "Status" with value "Unpublished" in the pop-up details
    Then verify "Mandatory" with value "Yes" in the pop-up details
    Then verify there are "0" number of "Rules" in the pop-up
    Then user clicks on the action icon pop-up
    Then user clicks on the action "Edit"
    Then user clicks on the toggle button "Mandatory" to "false"
    Then user clicks on tick-checkbox
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then verify "Mandatory" with value "No" in the pop-up details
    Then user clicks on pop-up back icon
    Then verify "Prop_TST-680_Name_1" has no rules applied

  @TST-686 @haider @e2eSprint @sprint3
  Scenario: V3 Documents : Filter Document List by Table Parameters
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on "Documents" icon
    Then user lands on "Document Settings" page
    Then user clicks on "Documents"
    Then user lands on "Documents List" module
    Then filter item "All Names" with value "Doc_TST-686_Name"
    Then create a document with Code "Doc_TST-686_Code" Name "Doc_TST-686_Name" Desc "Doc_TST-686_Description" Type "Standard" Ammendable "active" Ability To Save Draft "active" Summarisable "active" Abandonable "active" if not exist
    Then publish "Doc_TST-686_Name" if it is not published
    Then clear filtered item "Doc_TST-686_Name"
    Then verify "Name" is displayed as the table header
    Then verify "Code" is displayed as the table header
    Then verify "Type" is displayed as the table header
    Then verify "Status" is displayed as the table header
    Then verify "Updated" is displayed as the table header
    Then verify "All Names" is displayed as the filter parameters
    Then verify "All Codes" is displayed as the filter parameters
    Then verify "All Types" is displayed as the filter parameters
    Then verify "All Statuses" is displayed as the filter parameters
    Then user clicks on "Table Parameters"
    Then verify pop-up "Table Parameters"
    Then user clicks on the action "Name"
    Then verify pop-up "Enter Name"
    Then user enters "Doc_TST-686_Name" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on the action "Code"
    Then verify pop-up "Enter Code"
    Then user enters "Doc_TST-686_Code" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on the action "Status"
    Then verify pop-up "Select Status"
    Then user clicks on the action "Published"
    Then user clicks on tick-checkbox
    Then user clicks on the action "Type"
    Then verify pop-up "Select Type"
    Then user clicks on the action "Standard"
    Then user clicks on tick-checkbox
    Then verify pop-up "Table Parameters"
    Then user clicks on tick-checkbox
    Then verify "Doc_TST-686_Name" is displayed as the filter parameters
    Then verify "Doc_TST-686_Code" is displayed as the filter parameters
    Then verify "Published" is displayed as the filter parameters
    Then verify "Standard" is displayed as the filter parameters
    Then verify the table is populated
    Then verify all the "Name" are "Doc_TST-686_Name" as filtered result
    Then verify all the "Code" are "Doc_TST-686_Code" as filtered result
    Then verify all the "Type" are "Standard" as filtered result
    Then verify all the "Status" are "Published" as filtered result

  @TST-691 @haider @e2eSprint @sprint4
  Scenario: V3 Documents : Select a Published package and verify Package Status when a Linked Document is being revised
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on "Documents" icon
    Then user lands on "Document Settings" page
    Then user lands on "Package List" module
    Then user clicks on "Documents"
    Then user lands on "Documents List" module
    #Pre-configuration to check whether data is created or not
    Then filter item "All Names" with value "Doc_TST-691_Name"
    Then create a document with Code "Doc_TST-691_Code" Name "Doc_TST-691_Name" Desc "Doc_TST-691_Description" Type "Standard" Ammendable "active" Ability To Save Draft "active" Summarisable "active" Abandonable "active" if not exist
    Then publish "Doc_TST-691_Name" if it is not published
    Then user clicks on "Packages"
    Then user lands on "Package List" module
    Then filter item "All Names" with value "Pack_TST-691_Name"
    Then create a Package with Code "Pack_TST-691_Code" Name "Pack_TST-691_Name" Desc "Pack_TST-691_Description" and Origin "Documents" if not exist
    Then User Associates Document "Doc_TST-691_Name" to Package "Pack_TST-691_Name"
    Then publish "Pack_TST-691_Name" if it is not published
    Then user clicks on "Pack_TST-691_Name" in the table
    Then verify pop-up "Package Details"
    Then verify "Status" with value "Published" in the pop-up details
    Then verify "Name" with value "Pack_TST-691_Name" in the pop-up details
    Then verify there are "1" number of "Linked Documents" in the pop-up
    Then user clicks on the action "Linked Documents"
    Then verify pop-up "Linked Documents List"
    Then verify linked document "Doc_TST-691_Name"
    Then linked document "Doc_TST-691_Name" status is "Published"
    Then user clicks on pop-up back icon
    Then verify pop-up "Package Details"
    Then user clicks on pop-up back icon
    Then user clicks on "Documents"
    Then user lands on "Documents List" module
    Then reload page
    Then user clicks on "Doc_TST-691_Name" in the table
    Then verify pop-up "Document Details"
    Then verify "Status" with value "Published" in the pop-up details
    Then verify "Name" with value "Doc_TST-691_Name" in the pop-up details
    Then user clicks on the action icon
    Then verify pop-up "Document Menu"
    Then user clicks on the action "Revise"
    Then verify "Before Revising" is present in the pop-up table
    Then verify "Any existing packages connected to the document will not be updated automatically. After revising you must manually synchronise the package(s)." description is present in the pop-up table
    Then user clicks on tick-checkbox
    Then verify pop-up "Edit Document"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then user clicks on tick-checkbox
    Then verify pop-up "Document Details"
    Then verify "Status" with value "Unpublished" in the pop-up details
    Then user clicks on the action icon
    Then verify pop-up "Document Menu"
    Then user clicks on the action "Publish"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then user clicks on tick-checkbox
    Then reload page
    Then verify "Status" with value "Published" in the pop-up details
    Then user clicks on pop-up back icon
    Then user clicks on "Packages"
    Then user lands on "Package List" module
    Then user clicks on "Pack_TST-691_Name" in the table
    Then verify pop-up "Package Details"
    Then verify "Status" with value "Requires Review" in the pop-up details
    Then user clicks on the action "Linked Documents"
    Then verify pop-up "Linked Documents List"
    Then verify linked document "Doc_TST-691_Name"
    Then linked document "Doc_TST-691_Name" status is "Superseded"
    Then user clicks on the action "Doc_TST-691_Name"
    Then verify pop-up "Document Details"
    Then verify "Status" with value "Superseded" in the pop-up details
    Then user clicks on the action icon
    Then verify pop-up "Document Menu"
    Then user clicks on the action "Synchronize"
    Then verify pop-up "Synchronize Document"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then user clicks on tick-checkbox
    Then verify pop-up "Package Details"
    Then verify "Status" with value "Unpublished" in the pop-up details
    Then user clicks on the action icon
    Then verify pop-up "Package Menu"
    Then user clicks on the action "Publish"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then user clicks on tick-checkbox
    Then verify pop-up "Package Details"
    Then verify "Status" with value "Published" in the pop-up details

  @TST-692 @haider @e2eSprint @sprint5
  Scenario: V3 Documents : Synchronise a Linked document from the Package
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on "Documents" icon
    Then user lands on "Document Settings" page
    Then user lands on "Package List" module
    Then user clicks on "Documents"
    Then user lands on "Documents List" module
    Then filter item "All Names" with value "Doc_TST-692_Name_1"
    Then create a document with Code "Doc_TST-692_Code_1" Name "Doc_TST-692_Name_1" Desc "Doc_TST-692_Description_1" Type "Standard" Ammendable "active" Ability To Save Draft "active" Summarisable "active" Abandonable "active" if not exist
    Then publish "Doc_TST-692_Name_1" if it is not published
    Then user clicks on "Packages"
    Then user lands on "Package List" module
    Then filter item "All Names" with value "Pack_TST-692_Name"
    Then create a Package with Code "Pack_TST-692_Code" Name "Pack_TST-692_Name" Desc "Pack_TST-692_Description" and Origin "Documents" if not exist
    Then wait for popup loading
    Then User Associates Document "Doc_TST-692_Name_1" to Package "Pack_TST-692_Name"
    Then wait for popup loading
    Then publish "Pack_TST-692_Name" if it is not published
    Then user clicks on "Documents"
    Then user lands on "Documents List" module
    Then user clicks on Table row "Doc_TST-692_Name_1"
    Then verify pop-up "Document Details"
    Then user verify detail "Status" with value "Published"
    Then user clicks on the action icon pop-up
    Then user clicks on the action "Revise"
    Then verify pop-up "Document Menu"
    Then user clicks on tick-checkbox
    Then verify pop-up "Edit Document"
    Then user clicks on tick-checkbox
    Then wait for "15" seconds
    Then verify "Submission Successful" after completing the form
    Then user clicks on tick-checkbox
    Then user verify detail "Status" with value "Unpublished"
    Then user clicks on the action icon pop-up
    Then user clicks on the action "Publish"
    Then verify pop-up "Publish Document"
    Then user clicks on tick-checkbox
    Then verify "Publish Successful" after completing the form
    Then user clicks on tick-checkbox
    Then user verify detail "Status" with value "Published"
    Then user clicks on pop-up back icon
    Then user clicks on "Packages"
    Then user lands on "Package List" module
    Then reload page
    Then user clicks on Table row "Pack_TST-692_Name"
    Then verify pop-up "Package Details"
    Then user verify detail "Status" with value "Requires Review"
    Then user clicks on the action "Linked Documents"
    Then wait for "5" seconds
    Then verify "Doc_TST-692_Name_1" with value "Superseded" in the pop-up
    Then user clicks on the action "Doc_TST-692_Name_1"
    Then verify pop-up "Document Details"
    Then user verify detail "Status" with value "Superseded"
    Then user clicks on the action icon
    Then user clicks on the action "Synchronize"
    Then verify pop-up "Synchronize Document"
    Then user verify detail "Status" with value "Published"
    Then user clicks on tick-checkbox
    Then verify "Synchronize Successful" after completing the form
    Then user clicks on tick-checkbox
    Then verify pop-up "Package Details"
    Then user verify detail "Status" with value "Unpublished"
    Then user clicks on the action "Linked Documents"
    Then wait for "5" seconds
    Then verify "Doc_TST-692_Name_1" with value "Published" in the pop-up

  @TST-693 @haider @e2eSprint @sprint4
  Scenario: V3 Documents : Select a Published package and verify Package Status when a Linked Document is being revised
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on "Documents" icon
    Then user lands on "Document Settings" page
    Then user lands on "Package List" module
    Then user clicks on "Documents"
    Then user lands on "Documents List" module
    Then filter item "All Names" with value "Doc_TST-693_Name"
    Then create a document with Code "Doc_TST-693_Code" Name "Doc_TST-693_Name" Desc "Doc_TST-693_Description" Type "Standard" Ammendable "active" Ability To Save Draft "active" Summarisable "active" Abandonable "active" if not exist
    Then publish "Doc_TST-693_Name" if it is not published
    Then user clicks on "Packages"
    Then user lands on "Package List" module
    Then filter item "All Names" with value "Pack_TST-693_Name"
    Then create a Package with Code "Pack_TST-693_Code" Name "Pack_TST-693_Name" Desc "Pack_TST-693_Description" and Origin "Documents" if not exist
    Then User Associates Document "Doc_TST-693_Name" to Package "Pack_TST-693_Name"
    Then publish "Pack_TST-693_Name" if it is not published
    Then user clicks on "Pack_TST-693_Name" in the table
    Then verify pop-up "Package Details"
    Then verify "Status" with value "Published" in the pop-up details
    Then verify "Name" with value "Pack_TST-693_Name" in the pop-up details
    Then verify there are "1" number of "Linked Documents" in the pop-up
    Then user clicks on the action "Linked Documents"
    Then verify pop-up "Linked Documents List"
    Then verify linked document "Doc_TST-693_Name"
    Then linked document "Doc_TST-693_Name" status is "Published"
    Then user clicks on pop-up back icon
    Then verify pop-up "Package Details"
    Then user clicks on pop-up back icon
    Then user clicks on "Documents"
    Then user lands on "Documents List" module
    Then reload page
    Then user clicks on "Doc_TST-693_Name" in the table
    Then verify pop-up "Document Details"
    Then verify "Status" with value "Published" in the pop-up details
    Then verify "Name" with value "Doc_TST-693_Name" in the pop-up details
    Then user clicks on the action icon
    Then verify pop-up "Document Menu"
    Then user clicks on the action "Revise"
    Then verify "Before Revising" is present in the pop-up table
    Then verify "Any existing packages connected to the document will not be updated automatically. After revising you must manually synchronise the package(s)." description is present in the pop-up table
    Then user clicks on tick-checkbox
    Then verify pop-up "Edit Document"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then user clicks on tick-checkbox
    Then verify pop-up "Document Details"
    Then verify "Status" with value "Unpublished" in the pop-up details
    Then user clicks on the action icon
    Then verify pop-up "Document Menu"
    Then user clicks on the action "Publish"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then user clicks on tick-checkbox
    Then reload page
    Then verify "Status" with value "Published" in the pop-up details
    Then user clicks on pop-up back icon
    Then user clicks on "Packages"
    Then user lands on "Package List" module
    Then user clicks on "Pack_TST-693_Name" in the table
    Then verify pop-up "Package Details"
    Then verify "Status" with value "Requires Review" in the pop-up details
    Then user clicks on the action "Linked Documents"
    Then verify pop-up "Linked Documents List"
    Then verify linked document "Doc_TST-693_Name"
    Then linked document "Doc_TST-693_Name" status is "Superseded"
    Then user clicks on the action "Doc_TST-693_Name"
    Then verify pop-up "Document Details"
    Then verify "Status" with value "Superseded" in the pop-up details
    Then user clicks on the action icon
    Then verify pop-up "Document Menu"
    Then user clicks on the action "Synchronize"
    Then verify pop-up "Synchronize Document"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then user clicks on tick-checkbox
    Then verify pop-up "Package Details"
    Then verify "Status" with value "Unpublished" in the pop-up details

  @TST-694 @haider @bugSupersededProp @e2eSprint @sprint5
  Scenario: V3 Documents :  Revise a Requires Review Document
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on "Documents" icon
    Then user lands on "Document Settings" page
    Then user lands on "Package List" module
    Then user clicks on "Properties"
    Then user lands on "Properties List" module
    Then filter item "All Names" with value "Prop_TST-694_Name"
    Then create a property with Code "Prop_TST-694_Code" Name "Prop_TST-694_Name" Desc "Prop_TST-694_Description" and Type "Text-Input-Inline" if not exist
    Then publish "Prop_TST-694_Name" if it is not published
    Then user clicks on "Documents"
    Then user lands on "Documents List" module
    Then filter item "All Names" with value "Doc_TST-694_Name"
    Then create a document with Code "Doc_TST-694_Code" Name "Doc_TST-694_Name" Desc "Doc_TST-694_Description" Type "Standard" Ammendable "active" Ability To Save Draft "active" Summarisable "active" Abandonable "active" if not exist
    Then unpublish "Doc_TST-694_Name" if it is not unpublished
    Then configure "Doc_TST-694_Name" with Property "Prop_TST-694_Name" if not published
    Then publish "Doc_TST-694_Name" if it is not published
    Then user clicks on "Properties"
    Then user lands on "Properties List" module
    Then user sets up the pre-requisites for TST-694
    Then user clicks on "Documents"
    Then user lands on "Documents List" module
    Then reload page
    Then user clicks on Table row "Doc_TST-694_Name"
    Then verify pop-up "Document Details"
    Then user verify detail "Status" with value "Requires Review"
    Then user clicks on the action icon
    Then verify pop-up "Document Menu"
    Then user clicks on the action "Revise"
    Then verify "Before Revising" is present in the pop-up table
    Then user clicks on tick-checkbox
    Then verify pop-up "Edit Document"
    Then user inputs "Code" with value "Doc_TST-694_Code_1"
    Then user inputs "Name" with value "Doc_TST-694_Name_1"
    Then user clicks on the action "Type"
    Then verify pop-up "Select Type"
    Then user clicks on the action "System"
    Then user clicks on the action "Description"
    Then verify pop-up "Enter Description"
    Then user clears the text-area
    Then user enters "Doc_TST-694_Description_1" in the text-area
    Then user clicks on tick-checkbox
    Then user change "Amendable" toggle "false"
    Then user change "Ability To Save Draft" toggle "false"
    Then user change "Summarisable" toggle "false"
    Then user change "Abandonable" toggle "false"
    Then user clicks on tick-checkbox
    Then verify "Submission Successful" after completing the form
    Then user clicks on tick-checkbox
    Then verify pop-up "Document Details"
    Then user verify detail "Status" with value "Unpublished"
    Then user verify detail "Code" with value "Doc_TST-694_Code_1"
    Then user verify detail "Name" with value "Doc_TST-694_Name_1"
    Then user verify detail "Description" with value "Doc_TST-694_Description_1"
    Then user verify detail "Type" with value "System"
    Then user verify detail "Amendable" with value "No"
    Then user verify detail "Ability To Save Draft" with value "No"
    Then user verify detail "Summarisable" with value "No"
    Then user verify detail "Abandonable" with value "No"
    Then user clicks on the action icon pop-up
    Then user clicks on the action "Edit"
    Then user inputs "Code" with value "Doc_TST-694_Code"
    Then user inputs "Name" with value "Doc_TST-694_Name"
    Then user clicks on the action "Type"
    Then verify pop-up "Select Type"
    Then user clicks on the action "Standard"
    Then user clicks on the action "Description"
    Then verify pop-up "Enter Description"
    Then user clears the text-area
    Then user enters "Doc_TST-694_Description" in the text-area
    Then user clicks on tick-checkbox
    Then user change "Amendable" toggle "true"
    Then user change "Ability To Save Draft" toggle "true"
    Then user change "Summarisable" toggle "true"
    Then user change "Abandonable" toggle "true"
    Then user clicks on tick-checkbox
    Then verify "Submission Successful" after completing the form

  @TST-695 @haider @e2eSprint @sprint4
  Scenario: V3 Documents : Document Properties Panel - Verify Reorder Option
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on "Documents" icon
    Then user lands on "Document Settings" page
    Then user lands on "Package List" module
    Then user clicks on "Properties"
    Then user lands on "Properties List" module
    Then filter item "All Names" with value "Prop_TST-695_Name_1"
    Then create a property with Code "Prop_TST-695_Code_1" Name "Prop_TST-695_Name_1" Desc "Prop_TST-695_Description_1" and Type "Text-Input-Inline" if not exist
    Then publish "Prop_TST-695_Name_1" if it is not published
    Then filter item "Prop_TST-695_Name_1" with value "Prop_TST-695_Name_2"
    Then create a property with Code "Prop_TST-695_Code_2" Name "Prop_TST-695_Name_2" Desc "Prop_TST-695_Description_2" and Type "Selection" if not exist
    Then configure selection property "Prop_TST-695_Name_2" with selection values "This is Prop_TST-695_1,This is Prop_TST-695_2" if not published
    Then publish "Prop_TST-695_Name_2" if it is not published
    Then user clicks on "Documents"
    Then user lands on "Documents List" module
    Then filter item "All Names" with value "Doc_TST-695_Name"
    Then create a document with Code "Doc_TST-695_Code" Name "Doc_TST-695_Name" Desc "Doc_TST-695_Description" Type "Standard" Ammendable "active" Ability To Save Draft "active" Summarisable "active" Abandonable "active" if not exist
    Then configure document "Doc_TST-695_Name" for TST-695 pre-requisites
    Then user clicks on "Doc_TST-695_Name" in the table
    Then wait for popup loading
    Then verify pop-up "Document Details"
    Then user clicks on the action icon
    Then verify pop-up "Document Menu"
    Then user clicks on the action "Configure"
    Then wait for "5" seconds
    Then user verify items order of "Document Properties" with values "Prop_TST-695_Name_1Prop_TST-695_Description_1,Prop_TST-695_Name_2Prop_TST-695_Description_2"
    Then user clicks on the action icon for tab "Document Properties"
    Then verify pop-up "Property Menu"
    Then user verify action "Add Property" is available
    Then user verify action "Reorder" is available
    Then user clicks on the action "Reorder"
    Then verify pop-up "Reorder Properties"
    Then user moves item down "Prop_TST-695_Name_1"
    Then user clicks on tick-checkbox
    # Verify Reordering
    Then wait for "3" seconds
    Then user verify items order of "Document Properties" with values "Prop_TST-695_Name_2Prop_TST-695_Description_2,Prop_TST-695_Name_1Prop_TST-695_Description_1"

  @TST-696 @haider @e2eSprint @sprint4
  Scenario: V3 Documents : Add a Document Package to a selected Patient
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on "Documents" icon
    Then user lands on "Document Settings" page
    Then user lands on "Package List" module
    Then user clicks on "Documents"
    Then user lands on "Documents List" module
    Then filter item "All Names" with value "Doc_TST-696_Name"
    Then create a document with Code "Doc_TST-696_Code" Name "Doc_TST-696_Name" Desc "Doc_TST-696_Description" Type "Standard" Ammendable "active" Ability To Save Draft "active" Summarisable "active" Abandonable "active" if not exist
    Then publish "Doc_TST-696_Name" if it is not published
    Then user clicks on "Packages"
    Then user lands on "Package List" module
    Then filter item "All Names" with value "Pack_TST-696_Name"
    Then create a Package with Code "Pack_TST-696_Code" Name "Pack_TST-696_Name" Desc "Pack_TST-696_Description" Category "Infection Control" Specialty "Accident & Emergency" and Origin "Documents" if not exist
    Then User Associates Document "Doc_TST-696_Name" to Package "Pack_TST-696_Name"
    Then publish "Pack_TST-696_Name" if it is not published
    Then user clicks on "Patient Quick Search" in menu bar section
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "documentPersistanceData|patientNHSNumber"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then verify panel "Patient Information" exists
    Then verify panel "Admission Information" exists
    Then verify panel "Advisories" exists
    Then verify panel "Reports Acknowledgement" exists
    Then verify panel "General Practitioner Information" exists
    Then verify panel "Document Information" exists
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in profile menu "Documents"
    Then user clicks on the plus icon
    Then verify pop-up "Search Documents"
    Then user clicks on the action "Search All Documents"
    Then user input "Document Name" with value "Pack_TST-696_Name"
    Then user clicks on the action "Category"
    Then verify pop-up "Select Categories"
    Then wait for popup loading
    Then user clicks on the action "Infection Control"
    Then user clicks on tick-checkbox
    Then user clicks on the action "Specialty"
    Then verify pop-up "Select Specialties"
    Then wait for popup loading
    Then user clicks on the action "Accident & Emergency"
    Then user clicks on tick-checkbox
    Then verify pop-up "Document Search"
    Then user clicks on tick-checkbox
    Then verify pop-up "Document Search Results"
    Then user clicks on the action "Pack_TST-696_Name"
    Then verify pop-up "Add Package Confirmation"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then user clicks on tick-checkbox
    Then verify the first row "Name" is "Pack_TST-696_Name"
    Then verify the first row "Status" is "Not Started"

  @TST-697 @haider @email @e2eSprint @sprint5
  Scenario: V3 Documents : Patient Package - Verify emails and attached Documents
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Interfaces" icon
    Then user lands on "Interface Settings" page
    Then user lands on "Interface List" module
    Then user clicks on "WebV Email Processor" in the table
    Then verify pop-up "Interface Actions"
    Then start the interface
    Then wait for "30" seconds
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on "Documents" icon
    Then user lands on "Document Settings" page
    Then user clicks on "Properties"
    Then user lands on "Properties List" module
    Then filter item "All Names" with value "Prop_TST-697_Name_1"
    Then create a property with Code "Prop_TST-697_Code_1" Name "Prop_TST-697_Name_1" Desc "Prop_TST-697_Description_1" and Type "Text-Input-Inline" if not exist
    Then publish "Prop_TST-697_Name_1" if it is not published
    Then filter item "Prop_TST-697_Name_1" with value "Prop_TST-697_Name_2"
    Then create a property with Code "Prop_TST-697_Code_2" Name "Prop_TST-697_Name_2" Desc "Prop_TST-697_Description_2" and Type "Text-Input-Inline" if not exist
    Then publish "Prop_TST-697_Name_2" if it is not published
    Then user clicks on "Documents"
    Then user lands on "Documents List" module
    Then filter item "All Names" with value "Doc_TST-697_Name_1"
    Then create a document with Code "Doc_TST-697_Code_1" Name "Doc_TST-697_Name_1" Desc "Doc_TST-697_Description_1" Type "Standard" Ammendable "active" Ability To Save Draft "active" Summarisable "active" Abandonable "active" if not exist
    Then configure "Doc_TST-697_Name_1" with Property "Prop_TST-697_Name_1,Prop_TST-697_Name_2" if not published
    Then publish "Doc_TST-697_Name_1" if it is not published
    Then filter item "Doc_TST-697_Name_1" with value "Doc_TST-697_Name_2"
    Then create a document with Code "Doc_TST-697_Code_2" Name "Doc_TST-697_Name_2" Desc "Doc_TST-697_Description_2" Type "Standard" Ammendable "active" Ability To Save Draft "active" Summarisable "active" Abandonable "active" if not exist
    Then configure "Doc_TST-697_Name_2" with Property "Prop_TST-697_Name_1,Prop_TST-697_Name_2" if not published
    Then publish "Doc_TST-697_Name_2" if it is not published
    Then user clicks on "Packages"
    Then user lands on "Package List" module
    Then filter item "All Names" with value "Pack_TST-697_Name"
    Then create a Package with Code "Pack_TST-697_Code" Name "Pack_TST-697_Name" Desc "Pack_TST-697_Description" and Origin "Documents" if not exist
    Then edit the package "Pack_TST-697_Name" with emails "automation.kualitee@gmail.com"
    Then User Associates Document "Doc_TST-697_Name_1" to Package "Pack_TST-697_Name"
    Then User Associates Document "Doc_TST-697_Name_2" to Package "Pack_TST-697_Name"
    Then publish "Pack_TST-697_Name" if it is not published
    Then user clicks on "Patient Quick Search" in menu bar section
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "documentPersistanceData|patientNHSNumber"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in profile menu "Documents"
    Then user clicks on the plus icon
    Then verify pop-up "Search Documents"
    Then user clicks on the action "Search All Documents"
    Then user inputs "Document Name" with value "Pack_TST-697_Name"
    Then user clicks on tick-checkbox
    Then user clicks on the action "Published"
    Then verify pop-up "Add Package Confirmation"
    Then verify "Name" with value "Pack_TST-697_Name" in the pop-up
    Then verify "Updated By" with value "loginData|credentials.name" in the pop-up
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then verify the first row "Name" is "Pack_TST-697_Name"
    Then verify the first row "Status" is "Not Started"
    Then user clicks on Table first row "Pack_TST-697_Name"
    Then verify pop-up "Document Menu"
    Then user clicks on the action "Start"
    Then verify pop-up "Forms"
    Then user clicks on the action "Doc_TST-697_Name_1"
    Then verify page "Patient Documents"
    Then user inputs "Prop_TST-697_Name_1" with value "Value_TST-697_Name_1" inline
    Then user inputs "Prop_TST-697_Name_2" with value "Value_TST-697_Name_2" inline
    Then user clicks on the action icon
    Then user clicks on the action "Complete"
    Then user clicks on tick-checkbox
    Then user verify action "Return To Menu" is available
    Then user clicks on the action "Display Package Documents"
    Then user clicks on the action "Doc_TST-697_Name_2"
    Then verify page "Patient Documents"
    Then user inputs "Prop_TST-697_Name_1" with value "Value_TST-697_Name_1" inline
    Then user inputs "Prop_TST-697_Name_2" with value "Value_TST-697_Name_2" inline
    Then user clicks on the action icon
    Then user clicks on the action "Complete"
    Then user clicks on tick-checkbox
    Then user verify action "Return To Menu" is available
    Then user verify action "View In Patient Record" is available
    Then verify document received in email
    Then verify document "Pack_TST-697_Name" label "Status" value is "Complete" in local file
    Then verify document "Doc_TST-697_Name_1" label "Status" value is "Complete" in local file
    Then verify document "Doc_TST-697_Name_1" has a section "Section_TST-697_Name" with property "Prop_TST-697_Name_1" has a value "Value_TST-697_Name_1" in local file
    Then verify document "Doc_TST-697_Name_1" has a section "Section_TST-697_Name" with property "Prop_TST-697_Name_2" has a value "Value_TST-697_Name_2" in local file

  @TST-698 @haider @e2eSprint @sprint5
  Scenario: V3 Documents : Patient Packages - Filter Package list by selecting search criteria
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on "Documents" icon
    Then user lands on "Document Settings" page
    Then user clicks on "Packages"
    Then user lands on "Package List" module
    Then verify "Name" is displayed as the table header
    Then verify "Code" is displayed as the table header
    Then verify "Category" is displayed as the table header
    Then verify "Specialty" is displayed as the table header
    Then verify "Status" is displayed as the table header
    Then verify "Updated" is displayed as the table header
    Then verify "table-document" is displayed as the table header with no visual text
    Then filter item "All Names" with value "Pack_TST-698_Name"
    Then create a Package with Code "Pack_TST-698_Code" Name "Pack_TST-698_Name" Desc "Pack_TST-698_Description" Category "Infection Control" Specialty "Accident & Emergency" and Origin "Documents" if not exist
    Then filter item "Pack_TST-698_Name" with value ""
    Then user clicks on filter parameter "Table Parameters"
    Then verify pop-up "Table Parameters"
    Then user clicks on the action "Name"
    Then verify pop-up "Enter Name"
    Then user enters "Pack_TST-698_Name" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on the action "Code"
    Then verify pop-up "Enter Code"
    Then user enters "Pack_TST-698_Code" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on the action "Category"
    Then verify pop-up "Select Category"
    Then user clicks on the action "Infection Control"
    Then user clicks on tick-checkbox
    Then user clicks on the action "Specialty"
    Then verify pop-up "Select Specialty"
    Then user clicks on the action "Accident & Emergency"
    Then user clicks on tick-checkbox
    Then user clicks on the action "Status"
    Then verify pop-up "Select Status"
    Then user clicks on the action "Unpublished"
    Then user clicks on tick-checkbox
    Then verify pop-up "Table Parameters"
    Then user clicks on tick-checkbox
    Then verify "Pack_TST-698_Name" is displayed as the filter parameters
    Then verify "Pack_TST-698_Code" is displayed as the filter parameters
    Then verify "Infection Control" is displayed as the filter parameters
    Then verify "Accident & Emergency" is displayed as the filter parameters
    Then verify "Unpublished" is displayed as the filter parameters
    Then verify all the "Name" are "Pack_TST-698_Name" as filtered result
    Then verify all the "Code" are "Pack_TST-698_Code" as filtered result
    Then verify all the "Category" are "Infection Control" as filtered result
    Then verify all the "Specialty" are "Accident & Emergency" as filtered result
    Then verify all the "Status" are "Unpublished" as filtered result

  @TST-699 @haider @e2eSprint @sprint4
  Scenario: V3 Documents : Patient Packages -  Verify Packages with multiple Documents
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on "Documents" icon
    Then user lands on "Document Settings" page
    Then user lands on "Package List" module
    Then user clicks on "Properties"
    Then user lands on "Properties List" module
    Then filter item "All Names" with value "Prop_TST-699_Name_1"
    Then create a property with Code "Prop_TST-699_Code_1" Name "Prop_TST-699_Name_1" Desc "Prop_TST-699_Description_1" and Type "Text-Input-Inline" if not exist
    Then publish "Prop_TST-699_Name_1" if it is not published
    Then filter item "Prop_TST-699_Name_1" with value "Prop_TST-699_Name_2"
    Then create a property with Code "Prop_TST-699_Code_2" Name "Prop_TST-699_Name_2" Desc "Prop_TST-699_Description_2" and Type "Text-Input-Inline" if not exist
    Then publish "Prop_TST-699_Name_2" if it is not published
    Then user clicks on "Documents"
    Then user lands on "Documents List" module
    Then filter item "All Names" with value "Doc_TST-699_Name_1"
    Then create a document with Code "Doc_TST-699_Code_1" Name "Doc_TST-699_Name_1" Desc "Doc_TST-699_Description_1" Type "Standard" Ammendable "active" Ability To Save Draft "active" Summarisable "active" Abandonable "active" if not exist
    Then configure "Doc_TST-699_Name_1" with Property "Prop_TST-699_Name_1" if not published
    Then publish "Doc_TST-699_Name_1" if it is not published
    Then filter item "Doc_TST-699_Name_1" with value "Doc_TST-699_Name_2"
    Then create a document with Code "Doc_TST-699_Code_2" Name "Doc_TST-699_Name_2" Desc "Doc_TST-699_Description_2" Type "Standard" Ammendable "active" Ability To Save Draft "active" Summarisable "active" Abandonable "active" if not exist
    Then configure "Doc_TST-699_Name_2" with Property "Prop_TST-699_Name_2" if not published
    Then publish "Doc_TST-699_Name_2" if it is not published
    Then user clicks on "Packages"
    Then user lands on "Package List" module
    Then filter item "All Names" with value "Pack_TST-699_Name"
    Then create a Package with Code "Pack_TST-699_Code" Name "Pack_TST-699_Name" Desc "Pack_TST-699_Description" and Origin "Documents" if not exist
    Then wait for popup loading
    Then unpublish "Pack_TST-699_Name" if it is not unpublished
    Then User Associates Document "Doc_TST-699_Name_1" to Package "Pack_TST-699_Name"
    Then User Associates Document "Doc_TST-699_Name_2" to Package "Pack_TST-699_Name"
    Then wait for popup loading
    Then publish "Pack_TST-699_Name" if it is not published
    Then user clicks on "Patient Quick Search" in menu bar section
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "documentPersistanceData|patientNHSNumber"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in profile menu "Documents"
    Then user clicks on the plus icon
    Then verify pop-up "Search Documents"
    Then user clicks on the action "Search All Documents"
    Then user inputs "Document Name" with value "Pack_TST-699_Name"
    Then user clicks on tick-checkbox
    Then user clicks on the action "Published"
    Then verify pop-up "Add Package Confirmation"
    Then verify "Name" with value "Pack_TST-699_Name" in the pop-up
    Then verify "Updated By" with value "loginData|credentials.name" in the pop-up
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then verify "Your changes were saved successfully." after completing the form description
    Then user clicks on tick-checkbox
    Then verify the first row "Name" is "Pack_TST-699_Name"
    Then verify the first row "Status" is "Not Started"
    Then user clicks on Table first row "Pack_TST-699_Name"
    Then verify pop-up "Document Menu"
    Then user clicks on the action "Start"
    Then verify pop-up "Forms"
    Then user verify action "Doc_TST-699_Name_1" is available
    Then verify "Doc_TST-699_Name_1" with value "Not Started" in the pop-up
    Then user verify action "Doc_TST-699_Name_2" is available
    Then verify "Doc_TST-699_Name_2" with value "Not Started" in the pop-up
    Then user clicks on the action "Doc_TST-699_Name_1"
    Then verify patients demographics exist
    Then user inputs "Prop_TST-699_Name_1" with value "Value_TST-699_Name_1" inline
    Then user clicks on the action icon
    Then verify pop-up "Save Document"
    Then user clicks on the action "Complete"
    Then verify pop-up "Document Submission"
    Then verify "Complete Document?" after completing the form
    Then verify "Please confirm that you wish to complete the selected document." after completing the form description
    Then user clicks on tick-checkbox
    Then verify pop-up "Complete Document"
    Then verify "Completed Successfully" after completing the form
    Then verify "The document has been successfully completed" after completing the form description
    Then user verify action "Return To Menu" is available
    Then user verify action "Display Package Documents" is available
    Then user clicks on the action "Display Package Documents"
    Then verify "Doc_TST-699_Name_1" with value "Complete" in the pop-up in "green"
    Then verify "Doc_TST-699_Name_2" with value "Not Started" in the pop-up in "red"
    Then user clicks on the action "Doc_TST-699_Name_2"
    Then verify patients demographics exist
    Then user inputs "Prop_TST-699_Name_2" with value "Value_TST-699_Name_2" inline
    Then user clicks on the action icon
    Then verify pop-up "Save Document"
    Then user clicks on the action "Complete"
    Then verify pop-up "Document Submission"
    Then verify "Complete Document?" after completing the form
    Then verify "Please confirm that you wish to complete the selected document." after completing the form description
    Then user clicks on tick-checkbox
    Then verify pop-up "Complete Document"
    Then verify "Completed Successfully" after completing the form
    Then verify "The document has been successfully completed" after completing the form description
    Then user verify action "View In Patient Record" is available
    Then user verify action "Return To Menu" is available
    Then user verify action "Display Package Documents" is available
    Then user clicks on the action "Display Package Documents"
    Then verify "Doc_TST-699_Name_1" with value "Complete" in the pop-up in "green"
    Then verify "Doc_TST-699_Name_2" with value "Complete" in the pop-up in "green"

  @TST-700 @haider @e2eSprint @sprint4
  Scenario: V3 Documents : Patient Packages -  Verify Image Annotations
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on "Documents" icon
    Then user lands on "Document Settings" page
    Then user lands on "Package List" module
    Then user clicks on "Images"
    Then user lands on "Images List" module
    Then filter item "All Names" with value "Image_TST-700_Name"
    Then create an image with code "Image_TST-700_Code" name "Image_TST-700_Name" desc "Image_TST-700_Description" anatomical site "Hip" orientation "Portrait" image "uploadImage.jpg" if not exist
    Then publish "Image_TST-700_Name" if it is not published
    Then user clicks on "Properties"
    Then user lands on "Properties List" module
    Then filter item "All Names" with value "Prop_TST-700_Name"
    Then create a property with Code "Prop_TST-700_Code" Name "Prop_TST-700_Name" Desc "Prop_TST-700_Description" and Type "Image" if not exist
    Then publish "Prop_TST-700_Name" if it is not published
    Then user clicks on "Documents"
    Then user lands on "Documents List" module
    Then filter item "All Names" with value "Doc_TST-700_Name"
    Then create a document with Code "Doc_TST-700_Code" Name "Doc_TST-700_Name" Desc "Doc_TST-700_Description" Type "Standard" Ammendable "active" Ability To Save Draft "active" Summarisable "active" Abandonable "active" if not exist
    Then configure "Doc_TST-700_Name" with Property "Prop_TST-700_Name" if not published
    Then publish "Doc_TST-700_Name" if it is not published
    Then user clicks on "Packages"
    Then user lands on "Package List" module
    Then filter item "All Names" with value "Pack_TST-700_Name"
    Then create a Package with Code "Pack_TST-700_Code" Name "Pack_TST-700_Name" Desc "Pack_TST-700_Description" and Origin "Documents" if not exist
    Then wait for popup loading
    Then User Associates Document "Doc_TST-700_Name" to Package "Pack_TST-700_Name"
    Then wait for popup loading
    Then publish "Pack_TST-700_Name" if it is not published
    Then user clicks on "Patient Quick Search" in menu bar section
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "documentPersistanceData|patientNHSNumber"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in profile menu "Documents"
    Then user clicks on the plus icon
    Then verify pop-up "Search Documents"
    Then user clicks on the action "Search All Documents"
    Then user inputs "Document Name" with value "Pack_TST-700_Name"
    Then user clicks on tick-checkbox
    Then user clicks on the action "Published"
    Then verify pop-up "Add Package Confirmation"
    Then verify "Name" with value "Pack_TST-700_Name" in the pop-up
    Then verify "Updated By" with value "loginData|credentials.name" in the pop-up
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then verify "Your changes were saved successfully." after completing the form description
    Then user clicks on tick-checkbox
    Then verify the first row "Name" is "Pack_TST-700_Name"
    Then verify the first row "Status" is "Not Started"
    Then user clicks on Table first row "Pack_TST-700_Name"
    Then verify pop-up "Document Menu"
    Then user clicks on the action "Start"
    Then verify page "Patient Documents"
    Then wait for popup loading
    Then user clicks on the option "Prop_TST-700_Name"
    Then user verify option "Line" is available
    Then user verify option "Shape" is available
    Then user verify option "Text" is available
    Then user verify option "Undo" is available
    Then user verify option "Redo" is available
    Then user verify option "Clear" is available
    Then user clicks on the option "Line"
    Then wait for 10 seconds
    Then user clicks on the option "Shape"
    Then wait for 10 seconds
    Then user clicks on tick-checkbox
    Then verify "Prop_TST-700_Name" with value "Annotation Recorded"
    Then user clicks on the action icon
    Then verify pop-up "Save Document"
    Then user clicks on the action "Complete"
    Then verify pop-up "Document Submission"
    Then verify "Complete Document?" after completing the form
    Then verify "Please confirm that you wish to complete the selected document." after completing the form description
    Then user clicks on tick-checkbox
    Then verify pop-up "Complete Document"
    Then verify "Completed Successfully" after completing the form
    Then verify "The document has been successfully completed" after completing the form description

  @TST-701 @haider @e2eSprint @sprint3
  Scenario: V3 Documents : Patient Package - Verify Signature Property
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on "Documents" icon
    Then user lands on "Document Settings" page
    Then user lands on "Package List" module
    Then user clicks on "Properties"
    Then user lands on "Properties List" module
    Then filter item "All Names" with value "Prop_TST-701_Name"
    Then create a property with Code "Prop_TST-701_Code" Name "Prop_TST-701_Name" Desc "Prop_TST-701_Description" and Type "Signature" if not exist
    Then publish "Prop_TST-701_Name" if it is not published
    Then user clicks on "Documents"
    Then user lands on "Documents List" module
    Then filter item "All Names" with value "Doc_TST-701_Name"
    Then create a document with Code "Doc_TST-701_Code" Name "Doc_TST-701_Name" Desc "Doc_TST-701_Description" Type "Standard" Ammendable "active" Ability To Save Draft "active" Summarisable "active" Abandonable "active" if not exist
    Then configure "Doc_TST-701_Name" with Property "Prop_TST-701_Name" if not published
    Then publish "Doc_TST-701_Name" if it is not published
    Then user clicks on "Packages"
    Then user lands on "Package List" module
    Then filter item "All Names" with value "Pack_TST-701_Name"
    Then create a Package with Code "Pack_TST-701_Code" Name "Pack_TST-701_Name" Desc "Pack_TST-701_Description" and Origin "Documents" if not exist
    Then wait for popup loading
    Then User Associates Document "Doc_TST-701_Name" to Package "Pack_TST-701_Name"
    Then wait for popup loading
    Then publish "Pack_TST-701_Name" if it is not published
    Then user clicks on "Patient Quick Search" in menu bar section
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "documentPersistanceData|patientNHSNumber"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in profile menu "Documents"
    Then user clicks on the plus icon
    Then verify pop-up "Search Documents"
    Then user clicks on the action "Search All Documents"
    Then user inputs "Document Name" with value "Pack_TST-701_Name"
    Then user clicks on tick-checkbox
    Then verify pop-up "Document Search Results"
    Then user clicks on the action "Published"
    Then verify pop-up "Add Package Confirmation"
    Then verify "Name" with value "Pack_TST-701_Name" in the pop-up
    Then verify "Updated By" with value "loginData|credentials.name" in the pop-up
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then verify "Your changes were saved successfully." after completing the form description
    Then user clicks on tick-checkbox
    Then user clicks on "Pack_TST-701_Name" in the table
    Then verify pop-up "Document Menu"
    Then user clicks on the action "Start"
    Then user lands on "Document Sections" module
    Then user clicks on the option "Prop_TST-701_Name"
    Then verify the tool "Clear" exists
    Then user signs the signature manually
    Then user clicks on tick-checkbox
    Then verify "Prop_TST-701_Name" with value "Signature Recorded"
    Then user clicks on the action icon
    Then verify pop-up "Save Document"
    Then user clicks on the action "Complete"
    Then verify pop-up "Document Submission"
    Then user clicks on tick-checkbox
    Then verify "Completed Successfully" after completing the form
    Then verify "The document has been successfully completed" after completing the form description
    Then user clicks on the action "View in Patient Record"
    Then switch to iframe "event-list-iframe"
    Then verify the signature

  @TST-702 @haider @e2eSprint @sprint4
  Scenario: V3 Documents: Patient Package - Verify Event Report (Document Report view)
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on "Documents" icon
    Then user lands on "Document Settings" page
    Then user lands on "Package List" module
    Then user clicks on "Properties"
    Then user lands on "Properties List" module
    Then filter item "All Names" with value "Prop_TST-702_Name_1"
    Then create a property with Code "Prop_TST-702_Code_1" Name "Prop_TST-702_Name_1" Desc "Prop_TST-702_Description_1" and Type "Text-Input-Inline" if not exist
    Then publish "Prop_TST-702_Name_1" if it is not published
    Then filter item "Prop_TST-702_Name_1" with value "Prop_TST-702_Name_2"
    Then create a property with Code "Prop_TST-702_Code_2" Name "Prop_TST-702_Name_2" Desc "Prop_TST-702_Description_2" and Type "Text-Input-Inline" if not exist
    Then publish "Prop_TST-702_Name_2" if it is not published
    Then user clicks on "Documents"
    Then user lands on "Documents List" module
    Then filter item "All Names" with value "Doc_TST-702_Name_1"
    Then create a document with Code "Doc_TST-702_Code_1" Name "Doc_TST-702_Name_1" Desc "Doc_TST-702_Description_1" Type "Standard" Ammendable "active" Ability To Save Draft "active" Summarisable "active" Abandonable "active" if not exist
    Then configure "Doc_TST-702_Name_1" with Property "Prop_TST-702_Name_1,Prop_TST-702_Name_2" if not published
    Then publish "Doc_TST-702_Name_1" if it is not published
    Then filter item "Doc_TST-702_Name_1" with value "Doc_TST-702_Name_2"
    Then create a document with Code "Doc_TST-702_Code_2" Name "Doc_TST-702_Name_2" Desc "Doc_TST-702_Description_2" Type "Standard" Ammendable "active" Ability To Save Draft "active" Summarisable "active" Abandonable "active" if not exist
    Then configure "Doc_TST-702_Name_2" with Property "Prop_TST-702_Name_2,Prop_TST-702_Name_1" if not published
    Then publish "Doc_TST-702_Name_2" if it is not published
    Then user clicks on "Packages"
    Then user lands on "Package List" module
    Then filter item "All Names" with value "Pack_TST-702_Name"
    Then create a Package with Code "Pack_TST-702_Code" Name "Pack_TST-702_Name" Desc "Pack_TST-702_Description" and Origin "Documents" if not exist
    Then wait for popup loading
    Then User Associates Document "Doc_TST-702_Name_1" to Package "Pack_TST-702_Name"
    Then User Associates Document "Doc_TST-702_Name_2" to Package "Pack_TST-702_Name"
    Then wait for popup loading
    Then publish "Pack_TST-702_Name" if it is not published
    Then user clicks on "Patient Quick Search" in menu bar section
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "documentPersistanceData|patientNHSNumber"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in profile menu "Documents"
    Then user clicks on the plus icon
    Then verify pop-up "Search Documents"
    Then user clicks on the action "Search All Documents"
    Then user inputs "Document Name" with value "Pack_TST-702_Name"
    Then user clicks on tick-checkbox
    Then user clicks on the action "Published"
    Then verify pop-up "Add Package Confirmation"
    Then verify "Name" with value "Pack_TST-702_Name" in the pop-up
    Then verify "Updated By" with value "loginData|credentials.name" in the pop-up
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then verify the first row "Name" is "Pack_TST-702_Name"
    Then verify the first row "Status" is "Not Started"
    Then user clicks on Table first row "Pack_TST-702_Name"
    Then verify pop-up "Document Menu"
    Then user clicks on the action "Start"
    Then verify pop-up "Forms"
    Then user clicks on the action "Doc_TST-702_Name_1"
    Then user lands on "Patient Documents" page
    Then user inputs "Prop_TST-702_Name_1" with value "Value_TST-702_Name_1" inline
    Then user inputs "Prop_TST-702_Name_2" with value "Value_TST-702_Name_2" inline
    Then user clicks on the action icon
    Then verify pop-up "Save Document"
    Then user clicks on the action "Complete"
    Then verify pop-up "Document Submission"
    Then user clicks on tick-checkbox
    Then verify pop-up "Complete Document"
    Then verify "Completed Successfully" after completing the form
    Then user clicks on the action "Display Package Documents"
    Then verify pop-up "Package Documents"
    Then user clicks on the action "Doc_TST-702_Name_2"
    Then user lands on "Patient Documents" page
    Then user inputs "Prop_TST-702_Name_2" with value "Value_TST-702_Name_2" inline
    Then user inputs "Prop_TST-702_Name_1" with value "Value_TST-702_Name_1" inline
    Then user clicks on the action icon
    Then verify pop-up "Save Document"
    Then user clicks on the action "Complete"
    Then verify pop-up "Document Submission"
    Then user clicks on tick-checkbox
    Then verify pop-up "Complete Document"
    Then verify "Completed Successfully" after completing the form
    Then user clicks on the action "View In Patient Record"
    Then wait for "30" seconds
    Then user lands on "Patient Records" page
    Then verify package name in event report value "Pack_TST-702_Name"
    Then verify document "Pack_TST-702_Name" label "Status" value is "Complete"
    Then verify document "Pack_TST-702_Name" label "Completed By" value is "loginData|credentials.name"
    Then verify document "Doc_TST-702_Name_1" label "Status" value is "Complete"
    Then verify document "Doc_TST-702_Name_1" label "Completed By" value is "loginData|credentials.name"
    Then verify document "Doc_TST-702_Name_2" label "Status" value is "Complete"
    Then verify document "Doc_TST-702_Name_2" label "Completed By" value is "loginData|credentials.name"
    Then verify "Doc_TST-702_Name_1,Doc_TST-702_Name_2" exists in that specific order in event report
    Then verify document "Doc_TST-702_Name_1" has a section "Section_TST-702_Name" with property "Prop_TST-702_Name_1" has a value "Value_TST-702_Name_1"
    Then verify document "Doc_TST-702_Name_1" has a section "Section_TST-702_Name" with property "Prop_TST-702_Name_2" has a value "Value_TST-702_Name_2"
    Then verify document "Doc_TST-702_Name_2" has a section "Section_TST-702_Name" with property "Prop_TST-702_Name_1" has a value "Value_TST-702_Name_1"
    Then verify document "Doc_TST-702_Name_2" has a section "Section_TST-702_Name" with property "Prop_TST-702_Name_2" has a value "Value_TST-702_Name_2"
    Then verify document "Doc_TST-702_Name_1" has a section "Section_TST-702_Name" with properties in order "Prop_TST-702_Name_1,Prop_TST-702_Name_2"
    Then verify document "Doc_TST-702_Name_2" has a section "Section_TST-702_Name" with properties in order "Prop_TST-702_Name_2,Prop_TST-702_Name_1"

  @TST-703 @haider @e2eSprint @sprint5
  Scenario: V3 Documents : Patient Packages - Filter Package list by selecting search criteria
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on "Documents" icon
    Then user lands on "Document Settings" page
    Then user clicks on "Images"
    Then user lands on "Images List" module
    Then filter item "All Names" with value "Image_TST-703_Name_1"
    Then create an image with code "Image_TST-703_Code" name "Image_TST-703_Name_1" desc "Image_TST-703_Description" anatomical site "Hip" orientation "Portrait" image "uploadImage.jpg" if not exist
    Then publish "Image_TST-703_Name_1" if it is not published
    Then user clicks on "Properties"
    Then user lands on "Properties List" module
    Then filter item "All Names" with value "Prop_TST-703_Name_1"
    Then create a property with Code "Prop_TST-703_Code_1" Name "Prop_TST-703_Name_1" Desc "Prop_TST-703_Description_1" and Type "Signature" if not exist
    Then publish "Prop_TST-703_Name_1" if it is not published
    Then filter item "Prop_TST-703_Name_1" with value "Prop_TST-703_Name_2"
    Then create a property with Code "Prop_TST-703_Code_2" Name "Prop_TST-703_Name_2" Desc "Prop_TST-703_Description_2" and Type "Image" if not exist
    Then publish "Prop_TST-703_Name_2" if it is not published
    Then user clicks on "Documents"
    Then user lands on "Documents List" module
    Then filter item "All Names" with value "Doc_TST-703_Name_1"
    Then create a document with Code "Doc_TST-703_Code_1" Name "Doc_TST-703_Name_1" Desc "Doc_TST-703_Description_1" Type "Standard" Ammendable "active" Ability To Save Draft "active" Summarisable "active" Abandonable "active" if not exist
    Then configure "Doc_TST-703_Name_1" with Property "Prop_TST-703_Name_1" if not published
    Then configure "Doc_TST-703_Name_1" with Property "Prop_TST-703_Name_2" if not published
    Then publish "Doc_TST-703_Name_1" if it is not published
    Then user clicks on "Packages"
    Then user lands on "Package List" module
    Then filter item "All Names" with value "Pack_TST-703_Name"
    Then create a Package with Code "Pack_TST-703_Code" Name "Pack_TST-703_Name" Desc "Pack_TST-703_Description" and Origin "Documents" if not exist
    Then User Associates Document "Doc_TST-703_Name_1" to Package "Pack_TST-703_Name"
    Then publish "Pack_TST-703_Name" if it is not published
    Then user clicks on "Patient Quick Search" in menu bar section
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "documentPersistanceData|patientNHSNumber"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in profile menu "Documents"
    Then user clicks on the plus icon
    Then verify pop-up "Search Documents"
    Then user clicks on the action "Search All Documents"
    Then user inputs "Document Name" with value "Pack_TST-703_Name"
    Then user clicks on tick-checkbox
    Then user clicks on the action "Published"
    Then verify pop-up "Add Package Confirmation"
    Then verify "Name" with value "Pack_TST-703_Name" in the pop-up
    Then verify "Updated By" with value "loginData|credentials.name" in the pop-up
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then verify the first row "Name" is "Pack_TST-703_Name"
    Then verify the first row "Status" is "Not Started"
    Then user clicks on Table first row "Pack_TST-703_Name"
    Then verify pop-up "Document Menu"
    Then user clicks on the action "Start"
    Then verify page "Patient Documents"
    Then user clicks on the option "Prop_TST-703_Name_1"
    Then verify the tool "Clear" exists
    Then user signs the signature manually
    Then user clicks on tick-checkbox
    Then verify "Prop_TST-703_Name_1" with value "Signature Recorded"
    Then user clicks on the option "Prop_TST-703_Name_2"
    Then user clicks on the option "Line"
    Then wait for 10 seconds
    Then user clicks on the option "Shape"
    Then wait for 10 seconds
    Then user clicks on tick-checkbox
    Then verify "Prop_TST-703_Name_2" with value "Annotation Recorded"
    Then user clicks on the action icon
    Then user clicks on the action "Complete"
    Then user clicks on tick-checkbox
    Then user clicks on the action "View In Patient Record"
    Then wait for "30" seconds
    Then user lands on "Patient Records" page
    Then switch to iframe "event-list-iframe"
    Then verify property "Prop_TST-703_Name_1" with image in Event Report
    Then verify property "Prop_TST-703_Name_2" with image in Event Report

  @TST-705 @haider @e2eSprint @sprint4
  Scenario: V3 Documents : Patient Package - Verify Completed Package details
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on "Documents" icon
    Then user lands on "Document Settings" page
    Then user lands on "Package List" module
    Then user clicks on "Properties"
    Then user lands on "Properties List" module
    Then filter item "All Names" with value "Prop_TST-705_Name_1"
    Then create a property with Code "Prop_TST-705_Code_1" Name "Prop_TST-705_Name_1" Desc "Prop_TST-705_Description_1" and Type "Text-Input-Inline" if not exist
    Then publish "Prop_TST-705_Name_1" if it is not published
    Then user clicks on "Documents"
    Then user lands on "Documents List" module
    Then filter item "All Names" with value "Doc_TST-705_Name_1"
    Then create a document with Code "Doc_TST-705_Code_1" Name "Doc_TST-705_Name_1" Desc "Doc_TST-705_Description_1" Type "Standard" Ammendable "active" Ability To Save Draft "active" Summarisable "active" Abandonable "active" if not exist
    Then configure "Doc_TST-705_Name_1" with Property "Prop_TST-705_Name_1" if not published
    Then publish "Doc_TST-705_Name_1" if it is not published
    Then user clicks on "Packages"
    Then user lands on "Package List" module
    Then filter item "All Names" with value "Pack_TST-705_Name"
    Then create a Package with Code "Pack_TST-705_Code" Name "Pack_TST-705_Name" Desc "Pack_TST-705_Description" and Origin "Documents" if not exist
    Then wait for popup loading
    Then User Associates Document "Doc_TST-705_Name_1" to Package "Pack_TST-705_Name"
    Then wait for popup loading
    Then publish "Pack_TST-705_Name" if it is not published
    Then user clicks on "Patient Quick Search" in menu bar section
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "documentPersistanceData|patientNHSNumber"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in profile menu "Documents"
    Then user clicks on the plus icon
    Then verify pop-up "Search Documents"
    Then user clicks on the action "Search All Documents"
    Then user inputs "Document Name" with value "Pack_TST-705_Name"
    Then user clicks on tick-checkbox
    Then user clicks on the action "Published"
    Then verify pop-up "Add Package Confirmation"
    Then verify "Name" with value "Pack_TST-705_Name" in the pop-up
    Then verify "Updated By" with value "loginData|credentials.name" in the pop-up
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then wait for 10 seconds
    Then verify the first row "Name" is "Pack_TST-705_Name"
    Then verify the first row "Status" is "Not Started"
    Then user clicks on Table first row "Pack_TST-705_Name"
    Then verify pop-up "Document Menu"
    Then user clicks on the action "Start"
    Then verify page "Patient Documents"
    Then user inputs "Prop_TST-705_Name_1" with value "Value_TST-705_Name_1" inline
    Then user clicks on the action icon
    Then user clicks on the action "Complete"
    Then user clicks on tick-checkbox
    Then user clicks on the action "Return To Menu"
    Then verify "Name" is displayed as the table header
    Then verify "Category" is displayed as the table header
    Then verify "table-version" is displayed as the table header with no visual text
    Then verify "Specialty" is displayed as the table header
    Then verify "Status" is displayed as the table header
    Then verify "Updated" is displayed as the table header
    Then verify "table-document" is displayed as the table header with no visual text
    Then reload page
    Then verify the first row "Name" is "Pack_TST-705_Name"
    Then verify the first row "Status" is "Complete"
    Then user clicks on the ellipse of the newly created item
    Then verify pop-up "Package Details"
    Then wait for popup loading
    Then verify "Status" with value "Complete" in the pop-up
    Then verify "Updated By" with value "loginData|credentials.name" in the pop-up
    Then verify "Name" with value "Pack_TST-705_Name" in the pop-up
    Then verify "Description" with value "Pack_TST-705_Description" in the pop-up
    Then verify "Code" with value "Pack_TST-705_Code" in the pop-up
    Then verify "Version" with value "1" in the pop-up
    Then verify "Category" with value "Not Known" in the pop-up
    Then verify "Specialty" with value "Not Known" in the pop-up
    Then verify there are "1" number of "Linked Documents" in the pop-up
    Then user clicks on the action icon
    Then user verify action "ActionMark the document as actioned." is available
    Then user verify action "AmendMake further changes to this document." is available
    Then user verify action "RemoveRemove this document from the patient record." is available
    Then user verify action "Table ViewSelect a document to view in table format." is available
    Then user verify action "ViewSee this document in the patient event list." is available

  @TST-706 @haider @e2eSprint @sprint4
  Scenario: V3 documents  : Complete a Patient Package and verify event record (Properties  & Values)
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on "Documents" icon
    Then user lands on "Document Settings" page
    Then user lands on "Package List" module
    Then user clicks on "Properties"
    Then user lands on "Properties List" module
    Then filter item "All Names" with value "Prop_TST-706_Name_1"
    Then create a property with Code "Prop_TST-706_Code_1" Name "Prop_TST-706_Name_1" Desc "Prop_TST-706_Description_1" and Type "Text-Input-Inline" if not exist
    Then publish "Prop_TST-706_Name_1" if it is not published
    Then filter item "Prop_TST-706_Name_1" with value "Prop_TST-706_Name_2"
    Then create a property with Code "Prop_TST-706_Code_2" Name "Prop_TST-706_Name_2" Desc "Prop_TST-706_Description_2" and Type "Text-Input-Inline" if not exist
    Then publish "Prop_TST-706_Name_2" if it is not published
    Then user clicks on "Documents"
    Then user lands on "Documents List" module
    Then filter item "All Names" with value "Doc_TST-706_Name_1"
    Then create a document with Code "Doc_TST-706_Code_1" Name "Doc_TST-706_Name_1" Desc "Doc_TST-706_Description_1" Type "Standard" Ammendable "active" Ability To Save Draft "active" Summarisable "active" Abandonable "active" if not exist
    Then configure "Doc_TST-706_Name_1" with Property "Prop_TST-706_Name_1,Prop_TST-706_Name_2" if not published
    Then publish "Doc_TST-706_Name_1" if it is not published
    Then user clicks on "Packages"
    Then user lands on "Package List" module
    Then filter item "All Names" with value "Pack_TST-706_Name"
    Then create a Package with Code "Pack_TST-706_Code" Name "Pack_TST-706_Name" Desc "Pack_TST-706_Description" and Origin "Documents" if not exist
    Then wait for popup loading
    Then User Associates Document "Doc_TST-706_Name_1" to Package "Pack_TST-706_Name"
    Then wait for popup loading
    Then publish "Pack_TST-706_Name" if it is not published
    Then user clicks on "Patient Quick Search" in menu bar section
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "documentPersistanceData|patientNHSNumber"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in profile menu "Documents"
    Then user clicks on the plus icon
    Then verify pop-up "Search Documents"
    Then user clicks on the action "Search All Documents"
    Then user inputs "Document Name" with value "Pack_TST-706_Name"
    Then user clicks on tick-checkbox
    Then user clicks on the action "Published"
    Then verify pop-up "Add Package Confirmation"
    Then verify "Name" with value "Pack_TST-706_Name" in the pop-up
    Then verify "Updated By" with value "loginData|credentials.name" in the pop-up
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then verify the first row "Name" is "Pack_TST-706_Name"
    Then verify the first row "Status" is "Not Started"
    Then user clicks on Table first row "Not Started"
    Then verify pop-up "Document Menu"
    Then user clicks on the action "Start"
    Then verify page "Patient Documents"
    Then verify patients demographics exist
    Then user inputs "Prop_TST-706_Name_1" with value "Value_TST-706_Name_1" inline
    Then user inputs "Prop_TST-706_Name_2" with value "1111111111" inline
    Then user clicks on the action icon
    Then user clicks on the action "Complete"
    Then user clicks on tick-checkbox
    Then user clicks on the action "View In Patient Record"
    Then user inputs "Pack_TST-706_Name" in the filter option
    Then wait for 10 seconds
    Then verify table header with current date exists
    Then user clicks on the first option "Pack_TST-706_Name"
    Then wait for 10 seconds
    Then verify package name in event report value "Pack_TST-706_Name"
    Then verify document "Pack_TST-706_Name" label "Status" value is "Complete"
    Then verify document "Pack_TST-706_Name" label "Completed By" value is "loginData|credentials.name"
    Then verify document "Doc_TST-706_Name_1" label "Status" value is "Complete"
    Then verify document "Doc_TST-706_Name_1" label "Completed By" value is "loginData|credentials.name"
    Then verify document "Doc_TST-706_Name_1" has a section "Section_TST-706_Name" with property "Prop_TST-706_Name_1" has a value "Value_TST-706_Name_1"
    Then verify document "Doc_TST-706_Name_1" has a section "Section_TST-706_Name" with property "Prop_TST-706_Name_2" has a value "1111111111"

  @TST-791 @haider @tableRemoveBug @e2eSprint @sprint4
  Scenario: V3 documents  : Complete a Patient Package and verify event record (Properties  & Values)
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on "Documents" icon
    Then user lands on "Document Settings" page
    Then user lands on "Package List" module
    Then user clicks on "Documents"
    Then user lands on "Documents List" module
    Then filter item "All Names" with value "Doc_TST-791_Name_1"
    Then create a document with Code "Doc_TST-791_Code_1" Name "Doc_TST-791_Name_1" Desc "Doc_TST-791_Description_1" Type "Standard" Ammendable "active" Ability To Save Draft "active" Summarisable "active" Abandonable "active" if not exist
    Then user clicks on Table first row "Doc_TST-791_Name_1"
    Then verify pop-up "Document Details"
    Then user clicks on the action icon
    Then verify pop-up "Document Menu"
    Then user clicks on the action "Configure"
    Then remove all sections in the document
    Then create a new section with Code "Section_TST-791_Code_1" Name "Section_TST-791_Name_1" Description "Section_TST-791_Descripiton_1"
    Then user clicks on the action icon for tab "Document Properties"
    Then verify pop-up "Property Menu"
    Then user clicks on the action "Add Property"
    Then verify pop-up "Property Search"
    Then user clicks on the action "Create Property"
    Then verify pop-up "Create Property"
    Then user verify action "Mandatory" is available
    Then user input "Code" with value "Prop_TST-791_Code"
    Then user clicks on the action "Name"
    Then verify pop-up "Enter Name"
    Then user enters "Prop_TST-791_Name" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on the action "Description"
    Then verify pop-up "Enter Description"
    Then user enters "Prop_TST-791_Description" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on the action "Type"
    Then verify pop-up "Select Type"
    Then user clicks on the action "Information"
    Then user clicks on the action "Persistence"
    Then verify pop-up "Select Persistence"
    Then user clicks on the action "Always"
    Then user clicks on the toggle button "Searchable" to "active"
    Then user clicks on the toggle button "Visible" to "active"
    Then user clicks on tick-checkbox
    Then verify pop-up "Property Summary"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Submission Successful" after completing the form
    Then verify "Property succesfully created" after completing the form description
    Then user verify action "Create Another Property" is available
    Then user verify action "Return to Property Menu" is available
    Then user clicks on tick-checkbox
    Then user clicks on the action icon for property "Prop_TST-791_Name"
    Then wait for popup loading
    Then verify pop-up "Property Details"
    Then user clicks on the action icon pop-up
    Then verify pop-up "Property Menu"
    Then user clicks on the action "Configure content"
    Then verify pop-up "Configure Content"
    Then user creates a table with row "1" and columns "1"
    Then user enters text "Bold" with text styling option "bold"
    Then user appends table with "row"
    Then user enters text "Underline" with text styling option "underline"
    Then user appends table with "row"
    Then user enters text "Italic" with text styling option "italic"
    Then user appends table with "row"
    Then user enters text "Strike" with text styling option "strike"
    Then user appends table with "row"
    Then user enters text "Link" with text styling option link
    Then user appends table with "row"
    Then user enters text "Left" with text aligning option "left"
    Then user appends table with "row"
    Then user enters text "Centre" with text aligning option "center"
    Then user appends table with "row"
    Then user enters text "Right" with text aligning option "right"
    Then user appends table with "row"
    Then user enters text "Justify" with text aligning option "justify"
    Then user appends table with "row"
    Then user enters text "OList" with text ordering "ordered"
    Then user appends table with "row"
    Then user enters text "UList" with text ordering "bullet"
    Then user appends table with "row"
    Then user enters text "Red" with text font color "red"
    Then user appends table with "row"
    Then user enters text "Orange" with text background color "orange"
    Then user appends table with "row"
    Then user enters text "Small" with text size "small"
    Then user appends table with "row"
    Then user enters text "Normal" with text size "normal"
    Then user appends table with "row"
    Then user enters text "Large" with text size "large"
    Then user appends table with "row"
    Then user enters text "Huge" with text size "huge"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Submission Successful" after completing the form
    Then verify "Content successfully updated" after completing the form description
    Then user clicks on tick-checkbox
    Then verify pop-up "Property Details"
    Then user clicks on pop-up back icon
    Then user clicks on the option "Prop_TST-791_Name"
    Then verify "Information" module exists "true"
    Then verify text "Bold" with styling "strong"
    Then verify text "Underline" with styling "u"
    Then verify text "Strike" with styling "s"
    Then verify text "Link" with styling "a"
    Then verify text "Left" with styling "left"
    Then verify text "Centre" with styling "center"
    Then verify text "Right" with styling "right"
    Then verify text "Justify" with styling "justify"
    Then verify text "OList" with styling "ol"
    Then verify text "UList" with styling "ul"
    Then verify text "Red" with styling "color"
    Then verify text "Orange" with styling "background-color"
    Then verify text "Small" with styling "small"
    Then verify text "Normal" with styling "normal"
    Then verify text "Large" with styling "large"
    Then verify text "Huge" with styling "huge"
    Then user clicks on tick-checkbox
    Then user clicks on the action icon for property "Prop_TST-791_Name"
    Then wait for popup loading
    Then verify pop-up "Property Details"
    Then user clicks on the action icon pop-up
    Then verify pop-up "Property Menu"
    Then user clicks on the action "Configure content"
    Then verify pop-up "Configure Content"
    Then user appends table with "col"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Submission Successful" after completing the form
    Then verify "Content successfully updated" after completing the form description
    Then user clicks on tick-checkbox
    Then verify pop-up "Property Details"
    Then user clicks on pop-up back icon
    Then user clicks on the option "Prop_TST-791_Name"
    Then verify "Information" module exists "true"
    Then verify a new column has been added

  @TST-792 @haider @e2eSprint @sprint3
  Scenario: V3 Documents : Patient Packages -  Verify Information Property
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on "Documents" icon
    Then user lands on "Document Settings" page
    Then user lands on "Package List" module
    Then user clicks on "Properties"
    Then user lands on "Properties List" module
    Then filter item "All Names" with value "Prop_TST-792_Name_1"
    Then create a property with Code "Prop_TST-792_Code_1" Name "Prop_TST-792_Name_1" Desc "Prop_TST-792_Description_1" and Type "Information" if not exist
    Then configure information property "Prop_TST-792_Name_1" with value "This is Property Prop_TST-792_Name_1" if not published
    Then publish "Prop_TST-792_Name_1" if it is not published
    Then filter item "Prop_TST-792_Name_1" with value "Prop_TST-792_Name_2"
    Then create a property with Code "Prop_TST-792_Code_2" Name "Prop_TST-792_Name_2" Desc "Prop_TST-792_Description_2" and Type "Selection" if not exist
    Then configure selection property "Prop_TST-792_Name_2" with selection values "This is Prop_TST-792_1,This is Prop_TST-792_2" if not published
    Then publish "Prop_TST-792_Name_2" if it is not published
    Then user clicks on "Documents"
    Then user lands on "Documents List" module
    Then filter item "All Names" with value "Doc_TST-792_Name"
    Then create a document with Code "Doc_TST-792_Code" Name "Doc_TST-792_Name" Desc "Doc_TST-792_Description" Type "Standard" Ammendable "active" Ability To Save Draft "active" Summarisable "active" Abandonable "active" if not exist
    Then configure "Doc_TST-792_Name" with Property "Prop_TST-792_Name_1,Prop_TST-792_Name_2" if not published
    Then configure document "Doc_TST-792_Name" for TST-792 pre-requisites
    Then publish "Doc_TST-792_Name" if it is not published
    Then user clicks on "Packages"
    Then user lands on "Package List" module
    Then filter item "All Names" with value "Pack_TST-792_Name"
    Then create a Package with Code "Pack_TST-792_Code" Name "Pack_TST-792_Name" Desc "Pack_TST-792_Description" and Origin "Documents" if not exist
    Then wait for popup loading
    Then User Associates Document "Doc_TST-792_Name" to Package "Pack_TST-792_Name"
    Then wait for popup loading
    Then publish "Pack_TST-792_Name" if it is not published
    Then user clicks on "Patient Quick Search" in menu bar section
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "documentPersistanceData|patientNHSNumber"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in profile menu "Documents"
    Then user clicks on the plus icon
    Then verify pop-up "Search Documents"
    Then user clicks on the action "Search All Documents"
    Then user inputs "Document Name" with value "Pack_TST-792_Name"
    Then user clicks on tick-checkbox
#    Then verify pop-up "Document Search Results"
    Then user clicks on the action "Published"
    Then verify pop-up "Add Package Confirmation"
    Then verify "Name" with value "Pack_TST-792_Name" in the pop-up
    Then verify "Updated By" with value "loginData|credentials.name" in the pop-up
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then verify "Your changes were saved successfully." after completing the form description
    Then user clicks on tick-checkbox
    Then wait for 10 seconds
    Then verify the first row "Name" is "Pack_TST-792_Name"
    Then verify the first row "Status" is "Not Started"
    Then user clicks on Table first row "Pack_TST-792_Name"
    Then verify pop-up "Document Menu"
    Then user clicks on the action "Start"
    Then verify page "Patient Documents"
    Then wait for 10 seconds
    Then verify "This is Property Prop_TST-792_Name_1" is present in the document
    Then user clicks on the option "Select a Value"
    Then user clicks on the option "This is Prop_TST-792_2"
    Then user clicks on tick-checkbox
    Then verify "This is Property Prop_TST-792_Name_1" is not present in the document
    Then user clicks on the action icon
    Then verify pop-up "Save Document"
    Then user clicks on the action "Complete"
    Then user clicks on tick-checkbox

  @TST-793 @haider @e2eSprint @sprint5
  Scenario: V3 Documents : Patient Package - Verify all outstanding Documents
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "documentPersistanceData|patientNHSNumber"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then wait for popup loading
    Then wait for loading in "Document Information" section
    Then check if Document Information has documents with Status Not Started or In-Progress
    Then user clicks on the option "View All Outstanding Patient Documents"
    Then verify all the "Status" are "Not Started,In Progress,Complete" as filtered result

  @TST-796 @haider @defectViewingAsTable @e2eSprint @sprint5
  Scenario: V3 Documents : Patient  Documents - View as Table
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on "Documents" icon
    Then user lands on "Document Settings" page
    Then user lands on "Package List" module
    Then user clicks on "Properties"
    Then user lands on "Properties List" module
    Then filter item "All Names" with value "Prop_TST-796_Name_1"
    Then create a property with Code "Prop_TST-796_Code_1" Name "Prop_TST-796_Name_1" Desc "Prop_TST-796_Description_1" and Type "Text-Input-Inline" if not exist
    Then publish "Prop_TST-796_Name_1" if it is not published
    Then user clicks on "Documents"
    Then user lands on "Documents List" module
    Then filter item "All Names" with value "Doc_TST-796_Name_1"
    Then create a document with Code "Doc_TST-796_Code_1" Name "Doc_TST-796_Name_1" Desc "Doc_TST-796_Description_1" Type "Standard" Ammendable "active" Ability To Save Draft "active" Summarisable "active" Abandonable "active" if not exist
    Then configure "Doc_TST-796_Name_1" with Property "Prop_TST-796_Name_1" if not published
    Then publish "Doc_TST-796_Name_1" if it is not published
    Then user clicks on "Packages"
    Then user lands on "Package List" module
    Then filter item "All Names" with value "Pack_TST-796_Name"
    Then create a Package with Code "Pack_TST-796_Code" Name "Pack_TST-796_Name" Desc "Pack_TST-786_Description" and Origin "Documents" if not exist
    Then wait for popup loading
    Then User Associates Document "Doc_TST-796_Name_1" to Package "Pack_TST-796_Name"
    Then wait for popup loading
    Then publish "Pack_TST-796_Name" if it is not published
    Then user clicks on "Patient Quick Search" in menu bar section
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "documentPersistanceData|patientNHSNumber"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in profile menu "Documents"
    Then user clicks on the plus icon
    Then verify pop-up "Search Documents"
    Then user clicks on the action "Search All Documents"
    Then user inputs "Document Name" with value "Pack_TST-796_Name"
    Then user clicks on tick-checkbox
    Then user clicks on the action "Published"
    Then verify pop-up "Add Package Confirmation"
    Then verify "Name" with value "Pack_TST-796_Name" in the pop-up
    Then verify "Updated By" with value "loginData|credentials.name" in the pop-up
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then verify the first row "Name" is "Pack_TST-796_Name"
    Then verify the first row "Status" is "Not Started"
    Then user clicks on Table first row "Not Started"
    Then verify pop-up "Document Menu"
    Then user clicks on the action "Start"
    Then verify page "Patient Documents"
    Then verify patients demographics exist
    Then user inputs "Prop_TST-796_Name_1" with value "Value_TST-796_Name_1" inline
    Then user clicks on the action icon
    Then user clicks on the action "Complete"
    Then user clicks on tick-checkbox
    Then user clicks on the action "Return To Menu"
    Then user lands on "Patient Documents" page
    Then user clicks on "Pack_TST-796_Name" in the table
    Then verify pop-up "Document Menu"
    Then user clicks on the action "Table View"
    Then verify pop-up "Forms"
    Then user clicks on the action "Doc_TST-796_Name_1"
    Then user lands on "View Document As Table" page
    Then user lands on "Doc_TST-796_Name_1" module
#    Then verify the table is populated

  @TST-797 @haider @email @e2eSprint @sprint5
  Scenario: V3 Documents : Verify Emails received after amending a Completed document/ Documents
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Interfaces" icon
    Then user lands on "Interface Settings" page
    Then user lands on "Interface List" module
    Then user clicks on "WebV Email Processor" in the table
    Then verify pop-up "Interface Actions"
    Then start the interface
    Then wait for "30" seconds
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on "Documents" icon
    Then user lands on "Document Settings" page
    Then user clicks on "Properties"
    Then user lands on "Properties List" module
    Then filter item "All Names" with value "Prop_TST-797_Name_1"
    Then create a property with Code "Prop_TST-797_Code_1" Name "Prop_TST-797_Name_1" Desc "Prop_TST-797_Description_1" and Type "Text-Input-Inline" if not exist
    Then publish "Prop_TST-797_Name_1" if it is not published
    Then filter item "Prop_TST-797_Name_1" with value "Prop_TST-797_Name_2"
    Then create a property with Code "Prop_TST-797_Code_2" Name "Prop_TST-797_Name_2" Desc "Prop_TST-797_Description_2" and Type "Text-Input-Inline" if not exist
    Then publish "Prop_TST-797_Name_2" if it is not published
    Then user clicks on "Documents"
    Then user lands on "Documents List" module
    Then filter item "All Names" with value "Doc_TST-797_Name_1"
    Then create a document with Code "Doc_TST-797_Code_1" Name "Doc_TST-797_Name_1" Desc "Doc_TST-797_Description_1" Type "Standard" Ammendable "active" Ability To Save Draft "active" Summarisable "active" Abandonable "active" if not exist
    Then configure "Doc_TST-797_Name_1" with Property "Prop_TST-797_Name_1,Prop_TST-797_Name_2" if not published
    Then publish "Doc_TST-797_Name_1" if it is not published
    Then user clicks on "Packages"
    Then user lands on "Package List" module
    Then filter item "All Names" with value "Pack_TST-797_Name"
    Then create a Package with Code "Pack_TST-797_Code" Name "Pack_TST-797_Name" Desc "Pack_TST-797_Description" and Origin "Documents" if not exist
    Then edit the package "Pack_TST-797_Name" with emails "automation.kualitee@outlook.com"
    Then User Associates Document "Doc_TST-797_Name_1" to Package "Pack_TST-797_Name"
    Then publish "Pack_TST-797_Name" if it is not published
    Then user clicks on "Patient Quick Search" in menu bar section
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "documentPersistanceData|patientNHSNumber"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in profile menu "Documents"
    Then user clicks on the plus icon
    Then verify pop-up "Search Documents"
    Then user clicks on the action "Search All Documents"
    Then user inputs "Document Name" with value "Pack_TST-797_Name"
    Then user clicks on tick-checkbox
    Then user clicks on the action "Published"
    Then verify pop-up "Add Package Confirmation"
    Then verify "Name" with value "Pack_TST-797_Name" in the pop-up
    Then verify "Updated By" with value "loginData|credentials.name" in the pop-up
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then verify the first row "Name" is "Pack_TST-797_Name"
    Then verify the first row "Status" is "Not Started"
    Then user clicks on Table first row "Pack_TST-797_Name"
    Then verify pop-up "Document Menu"
    Then user clicks on the action "Start"
    Then verify page "Patient Documents"
    Then user inputs "Prop_TST-797_Name_1" with value "Value_TST-797_Name_1" inline
    Then user inputs "Prop_TST-797_Name_2" with value "Value_TST-797_Name_2" inline
    Then user clicks on the action icon
    Then user clicks on the action "Complete"
    Then user clicks on tick-checkbox
    Then user clicks on the action "Return To Menu"
    Then user clicks on Table first row "Pack_TST-797_Name"
    Then verify pop-up "Document Menu"
    Then user clicks on the action "Amend"
    Then verify page "Patient Documents"
    Then user inputs "Prop_TST-797_Name_1" with value "Value_TST-797_Name_3" inline
    Then user inputs "Prop_TST-797_Name_2" with value "Value_TST-797_Name_4" inline
    Then user clicks on the action icon
    Then user clicks on the action "Save Amendments"
    Then user clicks on tick-checkbox
    Then user clicks on the action "Return To Menu"
    Then user clicks on Table first row "Pack_TST-797_Name"
    Then user clicks on the action "View"
    Then wait for the page to load
    Then verify package name in event report value "Pack_TST-797_Name"
    Then verify document "Pack_TST-797_Name" label "Status" value is "Amended"
    Then verify document "Doc_TST-797_Name_1" label "Status" value is "Amended"
    Then verify document "Doc_TST-797_Name_1" has a section "Section_TST-797_Name" with property "Prop_TST-797_Name_1" has a value "Value_TST-797_Name_3"
    Then verify document "Doc_TST-797_Name_1" has a section "Section_TST-797_Name" with property "Prop_TST-797_Name_2" has a value "Value_TST-797_Name_4"
    Then verify document received in email
    Then verify document "Pack_TST-797_Name" label "Status" value is "Amended" in local file
    Then verify document "Doc_TST-797_Name_1" label "Status" value is "Amended" in local file
    Then verify document "Doc_TST-797_Name_1" has a section "Section_TST-797_Name" with property "Prop_TST-797_Name_1" has a value "Value_TST-797_Name_3" in local file
    Then verify document "Doc_TST-797_Name_1" has a section "Section_TST-797_Name" with property "Prop_TST-797_Name_2" has a value "Value_TST-797_Name_4" in local file

  @TST-800 @haider @e2eSprint @sprint5
  Scenario: V3 Documents : Patient  Documents - View as Table
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on "Documents" icon
    Then user lands on "Document Settings" page
    Then user lands on "Package List" module
    Then user clicks on "Properties"
    Then user lands on "Properties List" module
    Then filter item "All Names" with value "Prop_TST-800_Name_1"
    Then create a property with Code "Prop_TST-800_Code_1" Name "Prop_TST-800_Name_1" Desc "Prop_TST-800_Description_1" and Type "Text-Input-Inline" if not exist
    Then publish "Prop_TST-800_Name_1" if it is not published
    Then user clicks on "Documents"
    Then user lands on "Documents List" module
    Then filter item "All Names" with value "Doc_TST-800_Name_1"
    Then create a document with Code "Doc_TST-800_Code_1" Name "Doc_TST-800_Name_1" Desc "Doc_TST-800_Description_1" Type "Standard" Ammendable "active" Ability To Save Draft "active" Summarisable "active" Abandonable "active" if not exist
    Then configure "Doc_TST-800_Name_1" with Property "Prop_TST-800_Name_1" if not published
    Then publish "Doc_TST-800_Name_1" if it is not published
    Then user clicks on "Packages"
    Then user lands on "Package List" module
    Then filter item "All Names" with value "Pack_TST-800_Name"
    Then create a Package with Code "Pack_TST-800_Code" Name "Pack_TST-800_Name" Desc "Pack_TST-786_Description" and Origin "Documents" if not exist
    Then wait for popup loading
    Then User Associates Document "Doc_TST-800_Name_1" to Package "Pack_TST-800_Name"
    Then wait for popup loading
    Then publish "Pack_TST-800_Name" if it is not published
    Then user clicks on "Patient Quick Search" in menu bar section
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "documentPersistanceData|patientNHSNumber"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in profile menu "Documents"
    Then user clicks on the plus icon
    Then verify pop-up "Search Documents"
    Then user clicks on the action "Search All Documents"
    Then user inputs "Document Name" with value "Pack_TST-800_Name"
    Then user clicks on tick-checkbox
    Then user clicks on the action "Published"
    Then verify pop-up "Add Package Confirmation"
    Then verify "Name" with value "Pack_TST-800_Name" in the pop-up
    Then verify "Updated By" with value "loginData|credentials.name" in the pop-up
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then verify the first row "Name" is "Pack_TST-800_Name"
    Then verify the first row "Status" is "Not Started"
    Then user clicks on Table first row "Not Started"
    Then verify pop-up "Document Menu"
    Then user clicks on the action "Start"
    Then verify page "Patient Documents"
    Then verify patients demographics exist
    Then user inputs "Prop_TST-800_Name_1" with value "Value_TST-800_Name_1" inline
    Then user clicks on the action icon
    Then user clicks on the action "Complete"
    Then user clicks on tick-checkbox
    Then user clicks on the action "Return To Menu"
    Then user lands on "Patient Documents" page
    Then user clicks on back icon
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in profile menu "Records"
    Then verify patients demographics exist
    Then verify panel "Event List" exists
    Then verify panel "Event Report" exists
    Then user inputs "Pack_TST-800_Name" in the filter option
    Then user click on the result "Pack_TST-800_Name" within the event list
    Then wait for loading in "Event Report" section
    Then verify package name in event report value "Pack_TST-800_Name"
    Then verify document "Pack_TST-800_Name" label "Status" value is "Complete"
    Then verify document "Doc_TST-800_Name_1" label "Status" value is "Complete"
    Then verify "Doc_TST-800_Name_1" exists in that specific order in event report
    Then verify document "Doc_TST-800_Name_1" has a section "Section_TST-800_Name" with property "Prop_TST-800_Name_1" has a value "Value_TST-800_Name_1"

  @TST-807 @haider @e2eSprint @sprint5
  Scenario: V3 Documents :  Patient Documents - Verify Package Actions when a Patient Package is  'In Progress'
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on "Documents" icon
    Then user lands on "Document Settings" page
    Then user lands on "Package List" module
    Then user clicks on "Properties"
    Then user lands on "Properties List" module
    Then filter item "All Names" with value "Prop_TST-807_Name_1"
    Then create a property with Code "Prop_TST-807_Code_1" Name "Prop_TST-807_Name_1" Desc "Prop_TST-807_Description_1" and Type "Text-Input-Inline" if not exist
    Then publish "Prop_TST-807_Name_1" if it is not published
    Then filter item "Prop_TST-807_Name_1" with value "Prop_TST-807_Name_2"
    Then create a property with Code "Prop_TST-807_Code_2" Name "Prop_TST-807_Name_2" Desc "Prop_TST-807_Description_2" and Type "Text-Input-Inline" if not exist
    Then publish "Prop_TST-807_Name_2" if it is not published
    Then user clicks on "Documents"
    Then user lands on "Documents List" module
    Then filter item "All Names" with value "Doc_TST-807_Name_1"
    Then create a document with Code "Doc_TST-807_Code_1" Name "Doc_TST-807_Name_1" Desc "Doc_TST-807_Description_1" Type "Standard" Ammendable "active" Ability To Save Draft "active" Summarisable "active" Abandonable "active" if not exist
    Then configure "Doc_TST-807_Name_1" with Property "Prop_TST-807_Name_1,Prop_TST-807_Name_2" if not published
    Then publish "Doc_TST-807_Name_1" if it is not published
    Then user clicks on "Packages"
    Then user lands on "Package List" module
    Then filter item "All Names" with value "Pack_TST-807_Name"
    Then create a Package with Code "Pack_TST-807_Code" Name "Pack_TST-807_Name" Desc "Pack_TST-807_Description" and Origin "Documents" if not exist
    Then wait for popup loading
    Then User Associates Document "Doc_TST-807_Name_1" to Package "Pack_TST-807_Name"
    Then wait for popup loading
    Then publish "Pack_TST-807_Name" if it is not published
    Then user clicks on "Patient Quick Search" in menu bar section
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "documentPersistanceData|patientNHSNumber"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in profile menu "Documents"
    Then user clicks on the plus icon
    Then verify pop-up "Search Documents"
    Then user clicks on the action "Search All Documents"
    Then user inputs "Document Name" with value "Pack_TST-807_Name"
    Then user clicks on tick-checkbox
    Then user clicks on the action "Published"
    Then verify pop-up "Add Package Confirmation"
    Then verify "Name" with value "Pack_TST-807_Name" in the pop-up
    Then verify "Updated By" with value "loginData|credentials.name" in the pop-up
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then verify the first row "Name" is "Pack_TST-807_Name"
    Then verify the first row "Status" is "Not Started"
    Then user clicks on Table first row "Pack_TST-807_Name"
    Then verify pop-up "Document Menu"
    Then user clicks on the action "Start"
    Then verify page "Patient Documents"
    Then user inputs "Prop_TST-807_Name_1" with value "Value_TST-807_Name_1" inline
    Then user clicks on the action icon
    Then user clicks on the action "Save Draft"
    Then user clicks on the action "Return To Menu"
    Then user lands on "Patient Documents" page
    Then user lands on "Document List" module
    Then user clicks on Table first row "Pack_TST-807_Name"
    Then verify pop-up "Document Menu"
    Then user verify action "AbandonAbandon the selected incomplete document." is available
    Then user verify action "RemoveRemove this document from the patient record." is available
    Then user verify action "ResumeContinue the selected document." is available

  @TST-1003 @haider @e2eSprint @sprint3
  Scenario: V3 Documents : Amending Summarisable Documents and Event view
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on "Documents" icon
    Then user lands on "Document Settings" page
    Then user lands on "Package List" module
    Then user clicks on "Properties"
    Then user lands on "Properties List" module
    Then filter item "All Names" with value "Prop_TST-1003_Name_1"
    Then create a property with Code "Prop_TST-1003_Code_1" Name "Prop_TST-1003_Name_1" Desc "Prop_TST-1003_Description_1" and Type "Text-Input-Inline" if not exist
    Then publish "Prop_TST-1003_Name_1" if it is not published
    Then filter item "Prop_TST-1003_Name_1" with value "Prop_TST-1003_Name_2"
    Then create a property with Code "Prop_TST-1003_Code_2" Name "Prop_TST-1003_Name_2" Desc "Prop_TST-1003_Description_2" and Type "Text-Input-Inline" if not exist
    Then publish "Prop_TST-1003_Name_2" if it is not published
    Then user clicks on "Documents"
    Then user lands on "Documents List" module
    Then filter item "All Names" with value "Doc_TST-1003_Name"
    Then create a document with Code "Doc_TST-1003_Code" Name "Doc_TST-1003_Name" Desc "Doc_TST-1003_Description" Type "Standard" Ammendable "active" Ability To Save Draft "active" Summarisable "active" Abandonable "active" if not exist
    Then configure document "Doc_TST-1003_Name" for TST-1003 pre-requisites
    Then publish "Doc_TST-1003_Name" if it is not published
    Then user clicks on "Packages"
    Then user lands on "Package List" module
    Then filter item "All Names" with value "Pack_TST-1003_Name"
    Then create a Package with Code "Pack_TST-1003_Code" Name "Pack_TST-1003_Name" Desc "Pack_TST-1003_Description" and Origin "Documents" if not exist
    Then User Associates Document "Doc_TST-1003_Name" to Package "Pack_TST-1003_Name"
    Then publish "Pack_TST-1003_Name" if it is not published
    Then user clicks on "Patient Quick Search" in menu bar section
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "documentPersistanceData|patientNHSNumber"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in profile menu "Documents"
    Then user clicks on the plus icon
    Then verify pop-up "Search Documents"
    Then user clicks on the action "Search All Documents"
    Then user inputs "Document Name" with value "Pack_TST-1003_Name"
    Then user clicks on tick-checkbox
    Then verify pop-up "Document Search Results"
    Then user clicks on the action "Published"
    Then verify pop-up "Add Package Confirmation"
    Then verify "Name" with value "Pack_TST-1003_Name" in the pop-up
    Then verify "Updated By" with value "loginData|credentials.name" in the pop-up
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then verify "Your changes were saved successfully." after completing the form description
    Then user clicks on tick-checkbox
    Then user clicks on Table first row "Pack_TST-1003_Name"
    Then verify pop-up "Document Menu"
    Then user clicks on the action "Start"
    Then verify page "Patient Documents"
    Then user inputs "Prop_TST-1003_Name_1" with value "Name of Father" inline
    Then user inputs "Prop_TST-1003_Name_2" with value "Name of Consultant" inline
    Then user clicks on the action icon
    Then verify pop-up "Save Document"
    Then user clicks on the action "Complete"
    Then user clicks on tick-checkbox
    Then verify pop-up "Complete Document"
    Then user clicks on the action "View In Patient Record"
    Then wait for 10 seconds
    Then user lands on "Patient Records" page
    Then verify event report "Prop_TST-1003_Name_1" with value "Name of Father"
    Then verify event report "Prop_TST-1003_Name_2" with value "Name of Consultant"
    Then user clicks on back icon
    Then user lands on "Patient Documents" page
    Then user clicks on "Pack_TST-1003_Name" in the table
    Then verify pop-up "Document Menu"
    Then user clicks on the action "Amend"
    Then user clear inputs "Prop_TST-1003_Name_1"
    Then user clicks on the action icon
    Then verify pop-up "Save Document"
    Then user clicks on the action "Save Amendments"
    Then verify pop-up "Document Submission"
    Then user clicks on tick-checkbox
    Then verify pop-up "Complete Document"
    Then user clicks on the action "Return To Menu"
    Then user lands on "Patient Documents" page
    Then user lands on "Document List" module
    Then user clicks on Table first row "Pack_TST-1003_Name"
    Then verify pop-up "Document Menu"
    Then user clicks on the action "View"
    Then user lands on "Patient Records" page
    Then wait for the page to load
    Then verify event report "Prop_TST-1003_Name_1" with value "Not Recorded"
    Then verify event report "Prop_TST-1003_Name_2" with value "Name of Consultant"

  @TST-1138 @haider @e2eSprint @sprint3 @bug:episodicValueNotShowing
  Scenario: V3 Documents  : Episodic Persistence
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on "Documents" icon
    Then user lands on "Document Settings" page
    Then user clicks on "Properties"
    Then user lands on "Properties List" module
    Then filter item "All Names" with value "Prop_TST-1138_Name_1"
    Then create a property with Code "Prop_TST-1138_Code_1" Name "Prop_TST-1138_Name_1" Desc "Prop_TST-1138_Description_1" Type "Text-Input-Inline" and Persistence "Episodic" if not exist
    Then publish "Prop_TST-1138_Name_1" if it is not published
    Then user clicks on "Documents"
    Then user lands on "Documents List" module
    Then filter item "All Names" with value "Doc_TST-1138_Name_1"
    Then create a document with Code "Doc_TST-1138_Code_1" Name "Doc_TST-1138_Name_1" Desc "Doc_TST-1138_Description_1" Type "Standard" Ammendable "active" Ability To Save Draft "active" Summarisable "active" Abandonable "active" if not exist
    Then configure "Doc_TST-1138_Code_1" with Property "Prop_TST-1138_Name_1" if not published
    Then publish "Doc_TST-1138_Name_1" if it is not published
    Then user clicks on "Packages"
    Then user lands on "Package List" module
    Then filter item "All Names" with value "Pack_TST-1138_Name"
    Then create a Package with Code "Pack_TST-1138_Code" Name "Pack_TST-1138_Name" Desc "Pack_TST-1138_Description" and Origin "Documents" if not exist
    Then User Associates Document "Doc_TST-1138_Name_1" to Package "Pack_TST-1138_Name"
    Then publish "Pack_TST-1138_Name" if it is not published
    Then navigate to information screen in Site "Diana Princess of Wales Hospital" with Location "Ward C1K"
    Then add patient with NHS number "informationScreen|patientIdentifiers.patient1" in bed "Bay 1 / Bed 5"
    Then user clicks on "Patient Quick Search" in menu bar section
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "informationScreen|patientIdentifiers.patient1"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in profile menu "Documents"
    Then user clicks on the plus icon
    Then verify pop-up "Search Documents"
    Then user clicks on the action "Search All Documents"
    Then user inputs "Document Name" with value "Pack_TST-1138_Name"
    Then user clicks on tick-checkbox
    Then verify pop-up "Document Search Results"
    Then user clicks on the action "Published"
    Then verify pop-up "Add Package Confirmation"
    Then verify "Name" with value "Pack_TST-1138_Name" in the pop-up
    Then verify "Updated By" with value "loginData|credentials.name" in the pop-up
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then verify "Your changes were saved successfully." after completing the form description
    Then user clicks on tick-checkbox
    Then user clicks on Table first row "Pack_TST-1138_Name"
    Then verify pop-up "Document Menu"
    Then user clicks on the action "Start"
    Then verify page "Patient Documents"
    Then user inputs "Prop_TST-1138_Name_1" with value "First Value" inline
    Then user clicks on the action icon
    Then verify pop-up "Save Document"
    Then user clicks on the action "Complete"
    Then user clicks on tick-checkbox
    Then verify pop-up "Complete Document"
    Then user clicks on the action "View In Patient Record"
    Then wait for 10 seconds
    Then user lands on "Patient Records" page
    Then verify event report "Prop_TST-1138_Name_1" with value "First Value"
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in profile menu "Documents"
    Then user clicks on the plus icon
    Then verify pop-up "Search Documents"
    Then user clicks on the action "Search All Documents"
    Then user inputs "Document Name" with value "Pack_TST-1138_Name"
    Then user clicks on tick-checkbox
    Then verify pop-up "Document Search Results"
    Then user clicks on the action "Published"
    Then verify pop-up "Add Package Confirmation"
    Then verify "Name" with value "Pack_TST-1138_Name" in the pop-up
    Then verify "Updated By" with value "loginData|credentials.name" in the pop-up
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then verify "Your changes were saved successfully." after completing the form description
    Then user clicks on tick-checkbox
    Then user clicks on Table first row "Pack_TST-1138_Name"
    Then verify pop-up "Document Menu"
    Then user clicks on the action "Start"
    Then verify page "Patient Documents"
    Then wait for 10 seconds
    Then verify persistent property "Prop_TST-1138_Name_1" with value "First Value"
    Then user inputs "Prop_TST-1138_Name_1" with value "Second Value" inline
    Then user clicks on the action icon
    Then verify pop-up "Save Document"
    Then user clicks on the action "Complete"
    Then user clicks on tick-checkbox
    Then verify pop-up "Complete Document"
    Then user clicks on the action "View In Patient Record"
    Then wait for 10 seconds
    Then user lands on "Patient Records" page
    Then verify event report "Prop_TST-1138_Name_1" with value "Second Value"
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in profile menu "Documents"
    Then user clicks on the plus icon
    Then verify pop-up "Search Documents"
    Then user clicks on the action "Search All Documents"
    Then user inputs "Document Name" with value "Pack_TST-1138_Name"
    Then user clicks on tick-checkbox
    Then verify pop-up "Document Search Results"
    Then user clicks on the action "Published"
    Then verify pop-up "Add Package Confirmation"
    Then verify "Name" with value "Pack_TST-1138_Name" in the pop-up
    Then verify "Updated By" with value "loginData|credentials.name" in the pop-up
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then verify "Your changes were saved successfully." after completing the form description
    Then user clicks on tick-checkbox
    Then user clicks on Table first row "Pack_TST-1138_Name"
    Then verify pop-up "Document Menu"
    Then user clicks on the action "Start"
    Then verify page "Patient Documents"
    Then verify persistent property "Prop_TST-1138_Name_1" with value "Second Value"
    Then user inputs "Prop_TST-1138_Name_1" with value "Third Value" inline
    Then user clicks on the action icon
    Then verify pop-up "Save Document"
    Then user clicks on the action "Complete"
    Then user clicks on tick-checkbox
    Then user clicks on the action "View In Patient Record"
    Then wait for 10 seconds
    Then user lands on "Patient Records" page
    Then verify event report "Prop_TST-1138_Name_1" with value "Third Value"
    Then user clicks on "Systems" in menu bar section
    Then navigate to information screen in Site "Diana Princess of Wales Hospital" with Location "Ward C1K"
    Then discharge patient in bed "Bay 1 / Bed 5" on the basis of method "On Clinical Advice Or With Consent" and discharge location to be "Usual Place Of Residence"
    Then user clicks on "Patient Quick Search" in menu bar section
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "documentPersistanceData|patientNHSNumber"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in profile menu "Documents"
    Then user clicks on the plus icon
    Then verify pop-up "Search Documents"
    Then user clicks on the action "Search All Documents"
    Then user inputs "Document Name" with value "Pack_TST-1138_Name"
    Then user clicks on tick-checkbox
    Then verify pop-up "Document Search Results"
    Then user clicks on the action "Published"
    Then verify pop-up "Add Package Confirmation"
    Then verify "Name" with value "Pack_TST-1138_Name" in the pop-up
    Then verify "Updated By" with value "loginData|credentials.name" in the pop-up
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then verify "Your changes were saved successfully." after completing the form description
    Then user clicks on tick-checkbox
    Then user clicks on Table first row "Pack_TST-1003_Name"
    Then verify pop-up "Document Menu"
    Then user clicks on the action "Start"
    Then verify page "Patient Documents"
    Then wait for loading in "Document Properties" section
    Then verify persistent property "Prop_TST-1138_Name_1" with value ""
    Then user inputs "Prop_TST-1138_Name_1" with value "Fourth Value" inline
    Then user clicks on the action icon
    Then verify pop-up "Save Document"
    Then user clicks on the action "Complete"
    Then user clicks on tick-checkbox
    Then verify pop-up "Complete Document"
    Then user clicks on the action "View In Patient Record"
    Then wait for 10 seconds
    Then user lands on "Patient Records" page
    Then verify event report "Prop_TST-1138_Name_1" with value "Fourth Value"
    Then user clicks on "Systems" in menu bar section
    Then navigate to information screen in Site "Diana Princess of Wales Hospital" with Location "Ward C1K"
    Then add patient with NHS number "informationScreen|patientIdentifiers.patient1" in bed "Bay 1 / Bed 5"
    Then user clicks on "Patient Quick Search" in menu bar section
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "informationScreen|patientIdentifiers.patient1"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in profile menu "Documents"
    Then user clicks on the plus icon
    Then verify pop-up "Search Documents"
    Then user clicks on the action "Search All Documents"
    Then user inputs "Document Name" with value "Pack_TST-1138_Name"
    Then user clicks on tick-checkbox
    Then verify pop-up "Document Search Results"
    Then user clicks on the action "Published"
    Then verify pop-up "Add Package Confirmation"
    Then verify "Name" with value "Pack_TST-1138_Name" in the pop-up
    Then verify "Updated By" with value "loginData|credentials.name" in the pop-up
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then verify "Your changes were saved successfully." after completing the form description
    Then user clicks on tick-checkbox
    Then user clicks on Table first row "Pack_TST-1003_Name"
    Then verify pop-up "Document Menu"
    Then user clicks on the action "Start"
    Then verify page "Patient Documents"
    Then verify persistent property "Prop_TST-1138_Name_1" with value ""
    Then user inputs "Prop_TST-1138_Name_1" with value "Fifth Value" inline
    Then user clicks on the action icon
    Then verify pop-up "Save Document"
    Then user clicks on the action "Complete"
    Then user clicks on tick-checkbox
    Then user clicks on the action "View In Patient Record"
    Then wait for 10 seconds
    Then user lands on "Patient Records" page
    Then verify event report "Prop_TST-1138_Name_1" with value "Fifth Value"
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in profile menu "Documents"
    Then user clicks on the plus icon
    Then verify pop-up "Search Documents"
    Then user clicks on the action "Search All Documents"
    Then user inputs "Document Name" with value "Pack_TST-1138_Name"
    Then user clicks on tick-checkbox
    Then verify pop-up "Document Search Results"
    Then user clicks on the action "Published"
    Then verify pop-up "Add Package Confirmation"
    Then verify "Name" with value "Pack_TST-1138_Name" in the pop-up
    Then verify "Updated By" with value "loginData|credentials.name" in the pop-up
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then verify "Your changes were saved successfully." after completing the form description
    Then user clicks on tick-checkbox
    Then user clicks on Table first row "Pack_TST-1003_Name"
    Then verify pop-up "Document Menu"
    Then user clicks on the action "Start"
    Then verify page "Patient Documents"
    Then verify persistent property "Prop_TST-1138_Name_1" with value "Fifth Value"
    Then user inputs "Prop_TST-1138_Name_1" with value "Sixth Value" inline
    Then user clicks on the action icon
    Then verify pop-up "Save Document"
    Then user clicks on the action "Complete"
    Then user clicks on tick-checkbox
    Then user clicks on the action "View In Patient Record"
    Then wait for 10 seconds
    Then user lands on "Patient Records" page
    Then verify event report "Prop_TST-1138_Name_1" with value "Sixth Value"
    Then user clicks on "Systems" in menu bar section
    Then navigate to information screen in Site "Diana Princess of Wales Hospital" with Location "Ward C1K"
    Then discharge patient in bed "Bay 1 / Bed 5" on the basis of method "On Clinical Advice Or With Consent" and discharge location to be "Usual Place Of Residence"
