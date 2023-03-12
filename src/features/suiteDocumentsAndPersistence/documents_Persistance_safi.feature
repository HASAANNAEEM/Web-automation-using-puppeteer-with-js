@v3Documents @v3Documents&Persistance @v3DocumentsSafi @e2e
Feature: To check the V3 Documents
#Sprint 3
  #refactoring
  @TST-982 @safi @summarisable @sprint3
  Scenario: V3 Documents - Patient Record - Information Property display when Document isn't Summarisable
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then user enters Patient Identifier NHS in search bar
    Then user clicks on tick-checkbox
    Then user clicks "Continue" to navigate to Patient Summary page
    Then user clicks on patient menu in top right corner of the page
    Then user selects "Documents" option from dropdown
    Then user clicks on "Settings" in menu bar section
    Then user clicks on the "Systems" card in Settings section
    Then user clicks on "Documents" card
    Then user clicks on "Documents" radio icon on top of page
    Then user clicks on filter parameter "Table Parameters"
    Then user clicks on "Code" option and enter code
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user selects first document in filtered rows
    Then user verify that Document is Summarised as "No"

  @TST-658 @safi @imgPropertyCreation
  Scenario: V3 Documents - Create a new Image Property
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user clicks on the "Systems" card in Settings section
    Then user clicks on "Documents" card
    Then user clicks on "Properties" radio icon on top of page
    Then user clicks on plus icon on top right corner of the page
    Then user enter Code value
    Then user clicks on "Name" option and enter name
    Then user clicks on tick-checkbox
    Then user clicks on the "Type"
    Then user selects "Image" from the options
    Then user click on "Add Image" from Image Information
    Then user clicks on "Name" option in parameter list and enter name
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user clicks on first row of filtered result
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user clicks on the action icon
    Then user clicks on "Publish" to publish the image
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user clicks on the back icon
    Then user clicks on "Updated" to verify the Image is being "Published" or not

  @TST-811 @safi @dateProperty @refactored
  Scenario: V3 Documents - Patient documents - Verify Date Property (Date picker tool)
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then user enters Patient Identifier NHS in search bar
    Then user clicks on tick-checkbox
    Then user clicks "Continue" to navigate to Patient Summary page
    Then user clicks on patient menu in top right corner of the page
    Then user selects "Documents" option from dropdown
#    Then user clicks on filter parameter "Table Parameters"
#    Then verify pop-up "Table Parameters"
#    Then user verify action "Name" is available
#    Then user verify action "Categories" is available
#    Then user verify action "Specialties" is available
#    Then user verify action "Status" is available
#    Then user verify action "Date" is available
#    Then user clicks on the action "Status"
#    Then verify pop-up "Select Status"
#    Then user clicks on the action "Not Started"
#    Then user clicks on tick-checkbox
#    Then user clicks on tick-checkbox
    Then user lands on "Patient Documents" page
    Then user selects first document in Document list
    Then verify pop-up "Document Menu"
    Then user verify action "RemoveRemove this document from the patient record." is available
    Then user verify action "StartBegin the selected document." is available
    Then user clicks on the action "Start"
    Then user lands on "Patient Documents" page
    Then user verify the date in patient Documents
    Then user clicks on "time test" property
    Then user clicks on "Select Current Time"
    Then user clicks on tick-checkbox

  @TST-804 @safi @clearVals
  Scenario: V3 Documents - Patient Packages - Verify Clear Value option for Selection Properties
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user clicks on the "Systems" card in Settings section
    Then user clicks on "Documents" card
    Then user clicks on filter parameter "Table Parameters"
    Then user clicks on "Category" option and verify "Clear Values" working or not
    Then user clicks on tick-checkbox

  @TST-802 @safi @rmvPatientPkg
  Scenario: V3 Documents - Remove / Abandon a Patient Package
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then user enters Patient Identifier NHS in search bar
    Then user clicks on tick-checkbox
    Then user clicks "Continue" to navigate to Patient Summary page
    Then user clicks on patient menu in top right corner of the page
    Then user selects "Documents" option from dropdown
    Then user clicks on filter parameter "Table Parameters"
    Then verify pop-up "Table Parameters"
    Then user verify action "Name" is available
    Then user verify action "Categories" is available
    Then user verify action "Specialties" is available
    Then user verify action "Status" is available
    Then user verify action "Date" is available
    Then user clicks on the action "Status"
    Then verify pop-up "Select Status"
    Then user clicks on the action "Not Started"
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user selects first document in Document list
    Then verify pop-up "Document Menu"
    Then user verify action "RemoveRemove this document from the patient record." is available
    Then user verify action "StartBegin the selected document." is available
    Then user clicks on the action "Remove"
    Then verify pop-up "Package Menu"
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox

  @TST-798 @safi @syncDoc
  Scenario: V3 Documents - Verify Package details page after synchronising a superseded Linked Document
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user clicks on the "Systems" card in Settings section
    Then user clicks on "Documents" card
    Then user clicks on filter parameter "Table Parameters"
    Then user clicks on "Code" option in Package filter
    Then user enters Code in textarea
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user selects first package in filtered rows
    Then user clicks on "Linked Documents" in Package details
    Then user clicks on linked document in linked document list
    Then user clicks on the action icon
    Then user clicks on "Revise"
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user clicks on the action icon
    Then user clicks "Publish" from Document menu
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox

  @TST-672 @safi @docRules @1
  Scenario: V3 Documents - Document Config - Create Rules to make a Section Visible / Hidden
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
    Then filter item "All Names" with value "Prop_TST-672_Name_1"
    Then create a property with Code "Prop_TST-672_Code_1" Name "Prop_TST-672_Name_1" Desc "Prop_TST-672_Description_1" and Type "Text-Input-Inline" if not exist
    Then publish "Prop_TST-672_Name_1" if it is not published
    Then filter item "Prop_TST-672_Name_1" with value "Prop_TST-672_Name_2"
    Then create a property with Code "Prop_TST-672_Code_2" Name "Prop_TST-672_Name_2" Desc "Prop_TST-672_Description_2" and Type "Selection" if not exist
    Then configure selection property "Prop_TST-672_Name_2" with selection values "This is Prop_TST-672_1,This is Prop_TST-672_2" if not published
    Then publish "Prop_TST-672_Name_2" if it is not published
    Then user clicks on "Documents"
    Then user lands on "Documents List" module
    Then filter item "All Names" with value "Doc_TST-672_Name"
    Then create a document with Code "Doc_TST-672_Code" Name "Doc_TST-672_Name" Desc "Doc_TST-672_Description" Type "Standard" Ammendable "active" Ability To Save Draft "active" Summarisable "active" Abandonable "active" if not exist
    Then configure document "Doc_TST-672_Name" for TST-672 pre-requisites
    Then user clicks on "Doc_TST-672_Name" in the table
    Then verify pop-up "Document Details"
    Then user clicks on the action icon
    Then user clicks on the action "Configure"
    Then user lands on "Document Settings" page
    Then verify "Prop_TST-672_Name_1" has rules applied
    Then user clicks on the action icon for property "Prop_TST-672_Name_1"
    Then verify pop-up "Property Details"
    Then verify "Status" with value "Published" in the pop-up details
    Then verify "Updated By" with value "loginData|credentials.name" in the pop-up details
    Then verify "Code" with value "Prop_TST-672_Code_1" in the pop-up details
    Then verify "Name" with value "Prop_TST-672_Name_1" in the pop-up details
    Then verify "Description" with value "Prop_TST-672_Description_1" in the pop-up details
    Then verify "Searchable" with value "Yes" in the pop-up details
    Then verify "Type" with value "Text-Input-Inline" in the pop-up details
    Then verify "Persistence" with value "Never" in the pop-up details
    Then verify there are "1" number of "Linked Documents" in the pop-up
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
#    Given user lands on "Systems" page
#    Then user clicks on "Settings" in menu bar section
#    Then user clicks on the "Systems" card in Settings section
#    Then user clicks on "Documents" card
#    Then user clicks on "Documents" radio icon on top of page
#    Then user clicks on filter parameter "Table Parameters"
#    Then user clicks on "Code" option and enter code
#    Then user clicks on tick-checkbox
#    Then user clicks on tick-checkbox
#    Then user selects first document in filtered rows
#    Then verify pop-up "Document Details"
#    Then user clicks on the action icon
#    Then user clicks "Configure" from Document menu
#    Then user clicks on meatball menu in Document section
#    Then verify pop-up "Property Details"
#    Then user clicks on "Rules" in section details popup
#    Then verify pop-up "Property Rules"
#    Then user clicks on the plus icon
#    Then verify pop-up "Configure Rule"
#    Then user clicks on the action "Property"
#    Then verify pop-up "Select Section"
#    Then user clicks on the action "section 1"
#    Then verify pop-up "Select Property"
#    Then user clicks on the action "TEST - Pick an option"
#    Then verify pop-up "Select Value"
#    Then user clicks on the action "TEST VALUE - ONE"
#    Then user clicks on tick-checkbox
#    Then verify pop-up "Configure Rule"
#    Then user clicks on tick-checkbox
#    Then verify pop-up "Rule Summary"
#    Then user clicks on tick-checkbox
#    Then user clicks on tick-checkbox

  @TST-1249 @safi @linkDocProp @1
  Scenario: V3 Documents - Linked Documents Property
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user clicks on the "Systems" card in Settings section
    Then user clicks on "Documents" card
    Then user clicks on "Properties" radio icon on top of page
    Then user clicks on plus icon on top right corner of the page
    Then user enter Code value
    Then user clicks on "Name" option and enter name
    Then user clicks on tick-checkbox
    Then user clicks on the "Type"
    Then user selects "Linked-Documents" from the options
    Then user clicks on "Linked Document" to link document with property
    Then user clicks on "Search All Documents" in Search Documents popup
    Then user enters Document Name to search
    Then user clicks on tick-checkbox
    Then user selects the first option in filtered result with value "TEST"
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox

  @TST-663 @safi @publishDoc @1
  Scenario: V3 Documents - Publish a Document and Verify Document Details
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user clicks on the "Systems" card in Settings section
    Then user clicks on "Documents" card
    Then user lands on "Document Settings" page
    Then user clicks on "Documents" radio icon on top of page
    Then user lands on "Documents List" module
    Then filter item "All Names" with value "Doc_TST-663_Name"
    Then create a document with Code "Doc_TST-663_Code" Name "Doc_TST-663_Name" Desc "Doc_TST-663_Description" Type "Standard" Ammendable "active" Ability To Save Draft "active" Summarisable "active" Abandonable "active" if not exist
   # Then user clicks on filter parameter "Table Parameters"
#    Then user clicks on header "Status" on table
#    Then user selects first filtered result from the table
    Then user clicks on "Doc_TST-663_Name" in the table
    Then verify pop-up "Document Details"
    Then user clicks on the action icon
    Then user clicks "Publish" from Document menu
    Then verify pop-up "Publish Document"
   # Then user clicks on "Publish All Unpublished Properties" in Publish Document popup
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then verify pop-up "Document Details"
    Then user verify the status "Published" in Document Details popUp
    Then user clicks on the action icon
    Then verify pop-up "Document Menu"
    Then user clicks on the action "Suspend"
    Then verify pop-up "Suspend Document"
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then verify pop-up "Document Details"
    Then user clicks on the action icon
    Then verify pop-up "Document Menu"
    Then user clicks on the action "Reinstate"
    Then verify pop-up "Reinstate Document"
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then verify pop-up "Document Details"
    Then user clicks on the action icon
    Then verify pop-up "Document Menu"
    Then user clicks on the action "Go to latest version"

  @TST-653 @safi @verifyImg @1
  Scenario: V3 Documents - Verify Image list when New Images are added
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user clicks on the "Systems" card in Settings section
    Then user clicks on "Documents" card
    Then user lands on "Document Settings" page
    Then user clicks on "Images" radio icon on top of page
    Then user lands on "Images List" module
#    Then filter item "All Names" with value "Image_TST-653_Name"
    Then create an image with code "Image_TST-653_Code" name "Image_TST-653_Name" desc "Image_TST-653_Description" anatomical site "Hip" orientation "Portrait" image "uploadImage.jpg" if not exist
#    Then user clicks on header "Updated" on the table
    Then user clicks on "Image_TST-653_Name" in the table
#    Then user selects first package in filtered rows
    Then verify pop-up "Image Details"
    Then user clicks on the action icon
    Then verify pop-up "Image Menu"
    Then user clicks "Publish" from Document menu
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user verify "Published" image and verify list

  #sprint 4
  @TST-801 @safi
  Scenario: V3 Documents - Patient Documents - Verify Date / Time Properties
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then user enters Patient Identifier NHS in search bar
    Then user clicks on tick-checkbox
    Then user clicks "Continue" to navigate to Patient Summary page
    Then user clicks on patient menu in top right corner of the page
    Then user selects "Documents" option from dropdown
    Then user clicks on plus icon in Document list
    Then verify pop-up "Search Documents"
    Then user clicks on "Search All Documents" in Search Documents popup
    Then user enters Document Name to search
    Then user clicks on tick-checkbox
    Then user selects the first option in filtered result with value "TEST"
    Then verify pop-up "Add Package Confirmation"
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
  #  Then user clicks on header "Status" on the table
    Then user selects first document in the filtered rows
    Then verify pop-up "Document Menu"
    Then user clicks on "Start" in the document menu
    Then user lands on "Patient Documents" page
    Then user verify the date in patient Documents
    Then user clicks on "time test" property
    Then user clicks on "Select Current Time"
    Then user clicks on tick-checkbox

  @TST-803 @safi
  Scenario: V3 Documents - Event Report - Verify Property order on Patient  Document
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then user enters Patient Identifier NHS in search bar
    Then user clicks on tick-checkbox
    Then user clicks "Continue" to navigate to Patient Summary page
    Then user clicks on patient menu in top right corner of the page
    Then user selects "Records" option from dropdown
    Then user lands on "Patient Records" page
    Then user selects report "Plain (CR)" in result section in event report
    Then switch to iframe "iframe-container"
    Then user verify the properties in event report
    Then switch to main context

  @TST-809 @safi
  Scenario: V3 Documents - Patient documents - Verify abandoned Packages
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then user enters Patient Identifier NHS in search bar
    Then user clicks on tick-checkbox
    Then user clicks "Continue" to navigate to Patient Summary page
    Then user clicks on patient menu in top right corner of the page
    Then user selects "Documents" option from dropdown
    Then user clicks on plus icon in Document list
    Then verify pop-up "Search Documents"
    Then user clicks on "Search All Documents" in Search Documents popup
    Then user enters Document Name to search
    Then user clicks on tick-checkbox
    Then user selects the first option in filtered result with value "LJTEST"
    Then verify pop-up "Add Package Confirmation"
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user selects first document in the filtered rows
    Then verify pop-up "Document Menu"
    Then user clicks on "Abandon" in the document menu
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user clicks on cross icon
    Then user verify the status of first document in the filtered rows

  @TST-812 @safi @bugNoPackageunderAmendmentAvailable
  Scenario: V3 Documents - Patient documents - Amend a Completed Document and verify Table View
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then user enters Patient Identifier Search "8888888888"
    Then user clicks on tick-checkbox
    Then user clicks "Continue" to navigate to Patient Summary page
    Then user clicks on patient menu in top right corner of the page
    Then user selects "Documents" option from dropdown
    Then user clicks on meatballs icon in document list table
    Then user verify the Package details popUp is visible with all details
    Then user clicks on the action icon
    Then user clicks on "Amend" in Document Menu popUp
    Then user clicks on the action icon
    Then user clicks on "Save Amendments" in Save Document popUp
    Then user clicks on tick-checkbox
    Then user clicks on "Return To Menu" in Complete Document popUp
    Then user verify the Package details popUp is visible with all details

  @TST-813 @safi
  Scenario: V3 documents - Open a Completed Patient Document in Amend Mode and verify Properties with applied rules
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then user enters Patient Identifier NHS in search bar
    Then user clicks on tick-checkbox
    Then user clicks "Continue" to navigate to Patient Summary page
    Then user clicks on patient menu in top right corner of the page
    Then user selects "Documents" option from dropdown
    Then user clicks on plus icon in Document list
    Then verify pop-up "Search Documents"
    Then user clicks on "Search All Documents" in Search Documents popup
    Then user enters Document Name to search
    Then user clicks on tick-checkbox
    Then user selects the first option in filtered result with value "Skin Prick Test Request Form"
    Then verify pop-up "Add Package Confirmation"
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user selects first document in the filtered rows
    Then verify pop-up "Document Menu"
    Then user clicks on "Start" in the document menu
    Then user clicks on the action icon
    Then verify pop-up "Save Document"
    Then user clicks on the action "Complete"
    Then verify pop-up "Document Submission"
    Then user clicks on tick-checkbox
    Then verify pop-up "Complete Document"
    Then user clicks on the action "Return To Menu"
    Then user selects first document in the filtered rows
    Then verify pop-up "Document Menu"
    Then user clicks on the action "Amend"
    Then user clicks on the action icon
    Then verify pop-up "Save Document"
    Then user clicks on the action "Save Amendments"
    Then verify pop-up "Document Submission"
    Then user clicks on tick-checkbox
    Then verify pop-up "Complete Document"
    Then user clicks on the action "Return To Menu"
    Then user selects first document in the filtered rows
    Then verify pop-up "Document Menu"
    Then user clicks on the action "View"
    Then user verify the status of document in event report section

  @TST-815 @safi
  Scenario: V3 documents - Document Config - Verify Property Rules when a Selection Property value is removed
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user clicks on the "Systems" card in Settings section
    Then user clicks on "Documents" card
    Then user lands on "Document Settings" page
    Then user selects first document in the filtered rows
    Then verify pop-up "Package Details"
    Then user clicks on the action icon
    Then verify pop-up "Package Menu"
    Then user clicks on the action "Revise"
    Then verify pop-up "Edit Package"
    Then user clicks on the action "Specialty"
    Then verify pop-up "Select Specialty"
    Then user clicks on option "Accident & Emergency" in select specialty
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then verify pop-up "Package Summary"
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then verify pop-up "Package Details"
    Then user clicks on the action icon
    Then verify pop-up "Package Menu"
    Then user clicks on the action "Publish"

  @TST-816 @safi
  Scenario: V3 Documents - Document Timeline / Table view - Verify Text Input Property (Max Char length 10,000)
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user clicks on the "Systems" card in Settings section
    Then user clicks on "Documents" card
    Then user lands on "Package List" module
    Then filter item "All Names" with value "Pack_TST-816_Name"
    Then create a Package with Code "Pack_TST-816_Code" Name "Pack_TST-816_Name" Desc "Pack_TST-816_Description" and Origin "Documents" if not exist
#    Then User Associates Document "Doc_TST-816_Name" to Package "Pack_TST-816_Name"
    Then publish "Pack_TST-816_Name" if it is not published
    Then user clicks on "Pack_TST-816_Name" in the table
    Then verify pop-up "Package Details"
    Then verify "Status" with value "Published" in the pop-up details
    Then verify "Name" with value "Pack_TST-816_Name" in the pop-up details
#    Then verify there are "1" number of "Linked Documents" in the pop-up

  @TST-848 @safi
  Scenario: V3 documents - Patient documents -  Amend the Data of a Persistent Property and Verify the data on future packages
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user clicks on the "Systems" card in Settings section
    Then user clicks on "Documents" card
    Then user clicks on "Properties" radio icon on top of page
    Then user clicks on plus icon on top right corner of the page
    Then user enter Code value
    Then user clicks on "Name" option and enter name
    Then user clicks on tick-checkbox
    Then user clicks on the "Type"
    Then user selects "Linked-Documents" from the options
    Then user clicks on "Linked Document" to link document with property
    Then user clicks on "Search All Documents" in Search Documents popup
    Then user enters Document Name to search
    Then user clicks on tick-checkbox
    Then user selects the first option in filtered result with value "TEST"
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox

  @TST-979 @safi
  Scenario: V3 Documents - Highlighting incomplete mandatory fields
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user clicks on the "Systems" card in Settings section
    Then user clicks on "Documents" card
    Then user clicks on filter parameter "Table Parameters"
    Then user clicks on "Code" option in Package filter
    Then user enters Code in textarea
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user selects first package in filtered rows
    Then user clicks on "Linked Documents" in Package details
    Then user clicks on linked document in linked document list
    Then user clicks on the action icon
    Then user clicks on "Revise"
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user clicks on the action icon
    Then user clicks "Publish" from Document menu
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox

  @TST-981 @safi
  Scenario: V3 Documents - Patient Doc Library - Verify Package Actions
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then user enters Patient Identifier Search "5555555555"
    Then user clicks on tick-checkbox
    Then user clicks "Continue" to navigate to Patient Summary page
    Then user clicks on patient menu in top right corner of the page
    Then user selects "Documents" option from dropdown
    Then user lands on "Patient Documents" page
    Then user clicks on filter parameter "Table Parameters"
    Then verify pop-up "Table Parameters"
    Then user clicks on the action "Status"
    Then verify pop-up "Select Status"
    Then user clicks on the action "Complete"
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user selects first document in the filtered rows
    Then verify pop-up "Document Menu"
    Then user verify action "ActionMark the document as actioned." is available
    Then user verify action "AmendMake further changes to this document." is available
    Then user verify action "RemoveRemove this document from the patient record." is available
    Then user verify action "Table ViewSelect a document to view in table format." is available
    Then user verify action "ViewSee this document in the patient event list." is available
#    Then user verify action "Return to Document" is available

  @TST-1028 @safi
  Scenario: V3 Documents - Document Settings - Creating Sub header Property and Viewing Sub header property on Timeline
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
    Then filter item "All Names" with value "Prop_TST-1028_Name_1"
    Then create a property with Code "Prop_TST-1028_Code_1" Name "Prop_TST-1028_Name_1" Desc "Prop_TST-1028_Description_1" and Type "Subheader" if not exist
    Then publish "Prop_TST-1028_Name_1" if it is not published

  @TST-1292 @safi
  Scenario: V3 Documents - Creating a document with persistence
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on "Documents" icon
    Then user lands on "Document Settings" page
    Then user clicks on "Properties"
    Then user lands on "Properties List" module
    Then filter item "All Names" with value "Prop_TST-1292_Name_1"
    Then create a property with Code "Prop_TST-1292_Code_1" Name "Prop_TST-1292_Name_1" Desc "Prop_TST-1292_Description_1" Type "Text-Input-Inline" and Persistence "Episodic" if not exist
    Then publish "Prop_TST-1292_Name_1" if it is not published
    Then user clicks on "Documents"
    Then user lands on "Documents List" module
    Then filter item "All Names" with value "Doc_TST-1292_Name_1"
    Then create a document with Code "Doc_TST-1292_Code_1" Name "Doc_TST-1292_Name_1" Desc "Doc_TST-1292_Description_1" Type "Standard" Ammendable "active" Ability To Save Draft "active" Summarisable "active" Abandonable "active" if not exist
    Then configure "Doc_TST-1292_Code_1" with Property "Prop_TST-1292_Name_1" if not published
    Then publish "Doc_TST-1292_Name_1" if it is not published
    Then user clicks on "Packages"
    Then user lands on "Package List" module
    Then filter item "All Names" with value "Pack_TST-1292_Name"
    Then create a Package with Code "Pack_TST-1292_Code" Name "Pack_TST-1292_Name" Desc "Pack_TST-1292_Description" and Origin "Documents" if not exist
    Then User Associates Document "Doc_TST-1292_Name_1" to Package "Pack_TST-1292_Name"
    Then publish "Pack_TST-1292_Name" if it is not published
    Then navigate to information screen in Site "Diana Princess of Wales Hospital" with Location "Ward C1K"
    Then add patient with NHS number "documentPersistanceData|patientNHSNumber" in bed "Bay 2 / Bed 1"
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
    Then user inputs "Document Name" with value "Pack_TST-1292_Name"
    Then user clicks on tick-checkbox
    Then verify pop-up "Document Search Results"
    Then user clicks on the action "Published"
    Then verify pop-up "Add Package Confirmation"
    Then verify "Name" with value "Pack_TST-1292_Name" in the pop-up
    Then verify "Updated By" with value "loginData|credentials1.name" in the pop-up
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then verify "Your changes were saved successfully." after completing the form description
    Then user clicks on tick-checkbox
    Then user clicks on Table first row "Pack_TST-1292_Name"
    Then verify pop-up "Document Menu"
    Then user clicks on the action "Start"
    Then verify page "Patient Documents"
    Then user inputs "Prop_TST-1292_Name_1" with value "First Value" inline
    Then user clicks on the action icon
    Then verify pop-up "Save Document"
    Then user clicks on the action "Complete"
    Then user clicks on tick-checkbox
    Then verify pop-up "Complete Document"
    Then user clicks on the action "View In Patient Record"
    Then wait for 10 seconds
    Then user lands on "Patient Records" page
    Then verify event report "Prop_TST-1292_Name_1" with value "First Value"
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in profile menu "Documents"
    Then user clicks on the plus icon
    Then verify pop-up "Search Documents"
    Then user clicks on the action "Search All Documents"
    Then user inputs "Document Name" with value "Pack_TST-1292_Name"
    Then user clicks on tick-checkbox
    Then verify pop-up "Document Search Results"
    Then user clicks on the action "Published"
    Then verify pop-up "Add Package Confirmation"
    Then verify "Name" with value "Pack_TST-1292_Name" in the pop-up
    Then verify "Updated By" with value "loginData|credentials1.name" in the pop-up
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then verify "Your changes were saved successfully." after completing the form description
    Then user clicks on tick-checkbox
    Then user clicks on Table first row "Pack_TST-1292_Name"
    Then verify pop-up "Document Menu"
    Then user clicks on the action "Start"
    Then verify page "Patient Documents"
    Then wait for 10 seconds
    Then verify persistent property "Prop_TST-1292_Name_1" with value "First Value"
    Then user inputs "Prop_TST-1292_Name_1" with value "Second Value" inline
    Then user clicks on the action icon
    Then verify pop-up "Save Document"
    Then user clicks on the action "Complete"
    Then user clicks on tick-checkbox
    Then verify pop-up "Complete Document"
    Then user clicks on the action "View In Patient Record"
    Then wait for 10 seconds
    Then user lands on "Patient Records" page
    Then verify event report "Prop_TST-1292_Name_1" with value "Second Value"
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in profile menu "Documents"
    Then user clicks on the plus icon
    Then verify pop-up "Search Documents"
    Then user clicks on the action "Search All Documents"
    Then user inputs "Document Name" with value "Pack_TST-1292_Name"
    Then user clicks on tick-checkbox
    Then verify pop-up "Document Search Results"
    Then user clicks on the action "Published"
    Then verify pop-up "Add Package Confirmation"
    Then verify "Name" with value "Pack_TST-1292_Name" in the pop-up
    Then verify "Updated By" with value "loginData|credentials1.name" in the pop-up
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then verify "Your changes were saved successfully." after completing the form description
    Then user clicks on tick-checkbox
    Then user clicks on Table first row "Pack_TST-1292_Name"
    Then verify pop-up "Document Menu"
    Then user clicks on the action "Start"
    Then verify page "Patient Documents"
    Then verify persistent property "Prop_TST-1292_Name_1" with value "Second Value"
    Then user inputs "Prop_TST-1292_Name_1" with value "Third Value" inline
    Then user clicks on the action icon
    Then verify pop-up "Save Document"
    Then user clicks on the action "Complete"
    Then user clicks on tick-checkbox
    Then user clicks on the action "View In Patient Record"
    Then wait for 10 seconds
    Then user lands on "Patient Records" page
    Then verify event report "Prop_TST-1292_Name_1" with value "Third Value"
    Then user clicks on "Systems" in menu bar section
    Then navigate to information screen in Site "Diana Princess of Wales Hospital" with Location "Ward C1K"
    Then discharge patient in bed "Bay 2 / Bed 1" on the basis of method "On Clinical Advice Or With Consent" and discharge location to be "Usual Place Of Residence"
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
    Then user inputs "Document Name" with value "Pack_TST-1292_Name"
    Then user clicks on tick-checkbox
    Then verify pop-up "Document Search Results"
    Then user clicks on the action "Published"
    Then verify pop-up "Add Package Confirmation"
    Then verify "Name" with value "Pack_TST-1292_Name" in the pop-up
    Then verify "Updated By" with value "loginData|credentials1.name" in the pop-up
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then verify "Your changes were saved successfully." after completing the form description
    Then user clicks on tick-checkbox
    Then user clicks on Table first row "Pack_TST-1292_Name"
    Then verify pop-up "Document Menu"
    Then user clicks on the action "Start"
    Then verify page "Patient Documents"
    Then wait for loading in "Document Properties" section
    Then verify persistent property "Prop_TST-1292_Name_1" with value ""
    Then user inputs "Prop_TST-1292_Name_1" with value "Fourth Value" inline
    Then user clicks on the action icon
    Then verify pop-up "Save Document"
    Then user clicks on the action "Complete"
    Then user clicks on tick-checkbox
    Then verify pop-up "Complete Document"
    Then user clicks on the action "View In Patient Record"
    Then wait for 10 seconds
    Then user lands on "Patient Records" page
    Then verify event report "Prop_TST-1292_Name_1" with value "Fourth Value"
    Then user clicks on "Systems" in menu bar section
    Then navigate to information screen in Site "Diana Princess of Wales Hospital" with Location "Ward C1K"
    Then add patient with NHS number "documentPersistanceData|patientNHSNumber" in bed "Bay 2 / Bed 1"
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
    Then user inputs "Document Name" with value "Pack_TST-1292_Name"
    Then user clicks on tick-checkbox
    Then verify pop-up "Document Search Results"
    Then user clicks on the action "Published"
    Then verify pop-up "Add Package Confirmation"
    Then verify "Name" with value "Pack_TST-1292_Name" in the pop-up
    Then verify "Updated By" with value "loginData|credentials1.name" in the pop-up
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then verify "Your changes were saved successfully." after completing the form description
    Then user clicks on tick-checkbox
    Then user clicks on Table first row "Pack_TST-1292_Name"
    Then verify pop-up "Document Menu"
    Then user clicks on the action "Start"
    Then verify page "Patient Documents"
    Then verify persistent property "Prop_TST-1292_Name_1" with value ""
    Then user inputs "Prop_TST-1292_Name_1" with value "Fifth Value" inline
    Then user clicks on the action icon
    Then verify pop-up "Save Document"
    Then user clicks on the action "Complete"
    Then user clicks on tick-checkbox
    Then user clicks on the action "View In Patient Record"
    Then wait for 10 seconds
    Then user lands on "Patient Records" page
    Then verify event report "Prop_TST-1292_Name_1" with value "Fifth Value"
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in profile menu "Documents"
    Then user clicks on the plus icon
    Then verify pop-up "Search Documents"
    Then user clicks on the action "Search All Documents"
    Then user inputs "Document Name" with value "Pack_TST-1292_Name"
    Then user clicks on tick-checkbox
    Then verify pop-up "Document Search Results"
    Then user clicks on the action "Published"
    Then verify pop-up "Add Package Confirmation"
    Then verify "Name" with value "Pack_TST-1292_Name" in the pop-up
    Then verify "Updated By" with value "loginData|credentials1.name" in the pop-up
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then verify "Your changes were saved successfully." after completing the form description
    Then user clicks on tick-checkbox
    Then user clicks on Table first row "Pack_TST-1292_Name"
    Then verify pop-up "Document Menu"
    Then user clicks on the action "Start"
    Then verify page "Patient Documents"
    Then verify persistent property "Prop_TST-1292_Name_1" with value "Fifth Value"
    Then user inputs "Prop_TST-1292_Name_1" with value "Sixth Value" inline
    Then user clicks on the action icon
    Then verify pop-up "Save Document"
    Then user clicks on the action "Complete"
    Then user clicks on tick-checkbox
    Then user clicks on the action "View In Patient Record"
    Then wait for 10 seconds
    Then user lands on "Patient Records" page
    Then verify event report "Prop_TST-1292_Name_1" with value "Sixth Value"
    Then user clicks on "Systems" in menu bar section
    Then navigate to information screen in Site "Diana Princess of Wales Hospital" with Location "Ward C1K"
    Then discharge patient in bed "Bay 2 / Bed 1" on the basis of method "On Clinical Advice Or With Consent" and discharge location to be "Usual Place Of Residence"

  @TST-1297 @safi
  Scenario: V3 Documents - "Not Started" Document Updated by Indicator
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
    Then filter item "All Names" with value "Prop_TST-1297_Name_1"
    Then create a property with Code "Prop_TST-1297_Code_1" Name "Prop_TST-1297_Name_1" Desc "Prop_TST-1297_Description_1" and Type "Text-Input-Inline" if not exist
    Then publish "Prop_TST-1297_Name_1" if it is not published
    Then filter item "Prop_TST-1297_Name_1" with value "Prop_TST-1297_Name_2"
    Then create a property with Code "Prop_TST-1297_Code_2" Name "Prop_TST-1297_Name_2" Desc "Prop_TST-1297_Description_2" and Type "Text-Input-Inline" if not exist
    Then publish "Prop_TST-1297_Name_2" if it is not published
    Then user clicks on "Documents"
    Then user lands on "Documents List" module
    Then filter item "All Names" with value "Doc_TST-1297_Name_1"
    Then create a document with Code "Doc_TST-1297_Code_1" Name "Doc_TST-1297_Name_1" Desc "Doc_TST-1297_Description_1" Type "Standard" Ammendable "active" Ability To Save Draft "active" Summarisable "active" Abandonable "active" if not exist
    Then configure "Doc_TST-1297_Name_1" with Property "Prop_TST-1297_Name_1,Prop_TST-1297_Name_2" if not published
    Then publish "Doc_TST-1297_Name_1" if it is not published
    Then user clicks on "Packages"
    Then user lands on "Package List" module
    Then filter item "All Names" with value "Pack_TST-1297_Name"
    Then create a Package with Code "Pack_TST-1297_Code" Name "Pack_TST-1297_Name" Desc "Pack_TST-1297_Description" and Origin "Documents" if not exist
    Then wait for popup loading
    Then User Associates Document "Doc_TST-1297_Name_1" to Package "Pack_TST-1297_Name"
    Then wait for popup loading
    Then publish "Pack_TST-1297_Name" if it is not published
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
    Then user inputs "Document Name" with value "Pack_TST-1297_Name"
    Then user clicks on tick-checkbox
    Then user clicks on the action "Published"
    Then verify pop-up "Add Package Confirmation"
    Then verify "Name" with value "Pack_TST-1297_Name" in the pop-up
    Then verify "Updated By" with value "loginData|credentials1.name" in the pop-up
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then verify the first row "Name" is "Pack_TST-1297_Name"
    Then verify the first row "Status" is "Not Started"
    Then user clicks on Table first row "Pack_TST-1297_Name"
    Then verify pop-up "Document Menu"
    Then user clicks on the action "Start"
    Then verify page "Patient Documents"
    Then user inputs "Prop_TST-1297_Name_1" with value "Value_TST-1297_Name_1" inline
    Then user clicks on the action icon
    Then user clicks on the action "Save Draft"
    Then user clicks on the action "Return To Menu"
    Then user lands on "Patient Documents" page
    Then user lands on "Document List" module
    Then user clicks on Table first row "Pack_TST-1297_Name"
    Then verify pop-up "Document Menu"
    Then user verify action "AbandonAbandon the selected incomplete document." is available
    Then user verify action "RemoveRemove this document from the patient record." is available
    Then user verify action "ResumeContinue the selected document." is available

  @TST-1300 @safi
  Scenario: V3 Documents - Attempting to Complete a Mandatory Document with Persistence
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user clicks on the "Systems" card in Settings section
    Then user clicks on "Documents" card
    Then user clicks on "Properties" radio icon on top of page
    Then user clicks on plus icon on top right corner of the page
    Then user enter Code value
    Then user clicks on "Name" option and enter name
    Then user clicks on tick-checkbox
    Then user clicks on the "Type"
    Then user selects "Image" from the options
    Then user click on "Add Image" from Image Information
    Then user clicks on "Name" option in parameter list and enter name
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user clicks on first row of filtered result
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user clicks on the action icon
    Then user clicks on "Publish" to publish the image
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user clicks on the back icon
    Then user clicks on "Updated" to verify the Image is being "Published" or not

  @TST-1301 @safi
  Scenario: V3 Documents - Document and Indicator Always and Episodic Persistence
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on "Documents" icon
    Then user lands on "Document Settings" page
    Then user clicks on "Properties"
    Then user lands on "Properties List" module
    Then filter item "All Names" with value "Prop_TST-1301_Name_1"
    Then create a property with Code "Prop_TST-1301_Code_1" Name "Prop_TST-1301_Name_1" Desc "Prop_TST-1301_Description_1" Type "Text-Input-Inline" and Persistence "Episodic" if not exist
    Then publish "Prop_TST-1301_Name_1" if it is not published
    Then user clicks on "Documents"
    Then user lands on "Documents List" module
    Then filter item "All Names" with value "Doc_TST-1301_Name_1"
    Then create a document with Code "Doc_TST-1301_Code_1" Name "Doc_TST-1301_Name_1" Desc "Doc_TST-1301_Description_1" Type "Standard" Ammendable "active" Ability To Save Draft "active" Summarisable "active" Abandonable "active" if not exist
    Then configure "Doc_TST-1301_Code_1" with Property "Prop_TST-1301_Name_1" if not published
    Then publish "Doc_TST-1301_Name_1" if it is not published
    Then user clicks on "Packages"
    Then user lands on "Package List" module
    Then filter item "All Names" with value "Pack_TST-1301_Name"
    Then create a Package with Code "Pack_TST-1301_Code" Name "Pack_TST-1301_Name" Desc "Pack_TST-1301_Description" and Origin "Documents" if not exist
    Then User Associates Document "Doc_TST-1301_Name_1" to Package "Pack_TST-1301_Name"
    Then publish "Pack_TST-1301_Name" if it is not published
    Then navigate to information screen in Site "Diana Princess of Wales Hospital" with Location "Ward C1K"
    Then add patient with NHS number "documentPersistanceData|patientNHSNumber" in bed "Bay 2 / Bed 1"
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
    Then user inputs "Document Name" with value "Pack_TST-1301_Name"
    Then user clicks on tick-checkbox
    Then verify pop-up "Document Search Results"
    Then user clicks on the action "Published"
    Then verify pop-up "Add Package Confirmation"
    Then verify "Name" with value "Pack_TST-1301_Name" in the pop-up
    Then verify "Updated By" with value "loginData|credentials1.name" in the pop-up
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then verify "Your changes were saved successfully." after completing the form description
    Then user clicks on tick-checkbox
    Then user clicks on Table first row "Pack_TST-1301_Name"
    Then verify pop-up "Document Menu"
    Then user clicks on the action "Start"
    Then verify page "Patient Documents"
    Then user inputs "Prop_TST-1301_Name_1" with value "First Value" inline
    Then user clicks on the action icon
    Then verify pop-up "Save Document"
    Then user clicks on the action "Complete"
    Then user clicks on tick-checkbox
    Then verify pop-up "Complete Document"
    Then user clicks on the action "View In Patient Record"
    Then wait for 10 seconds
    Then user lands on "Patient Records" page
    Then verify event report "Prop_TST-1301_Name_1" with value "First Value"
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in profile menu "Documents"
    Then user clicks on the plus icon
    Then verify pop-up "Search Documents"
    Then user clicks on the action "Search All Documents"
    Then user inputs "Document Name" with value "Pack_TST-1301_Name"
    Then user clicks on tick-checkbox
    Then verify pop-up "Document Search Results"
    Then user clicks on the action "Published"
    Then verify pop-up "Add Package Confirmation"
    Then verify "Name" with value "Pack_TST-1301_Name" in the pop-up
    Then verify "Updated By" with value "loginData|credentials1.name" in the pop-up
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then verify "Your changes were saved successfully." after completing the form description
    Then user clicks on tick-checkbox
    Then user clicks on Table first row "Pack_TST-1301_Name"
    Then verify pop-up "Document Menu"
    Then user clicks on the action "Start"
    Then verify page "Patient Documents"
    Then wait for 10 seconds
    Then verify persistent property "Prop_TST-1301_Name_1" with value "First Value"
    Then user inputs "Prop_TST-1301_Name_1" with value "Second Value" inline
    Then user clicks on the action icon
    Then verify pop-up "Save Document"
    Then user clicks on the action "Complete"
    Then user clicks on tick-checkbox
    Then verify pop-up "Complete Document"
    Then user clicks on the action "View In Patient Record"
    Then wait for 10 seconds
    Then user lands on "Patient Records" page
    Then verify event report "Prop_TST-1301_Name_1" with value "Second Value"
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in profile menu "Documents"
    Then user clicks on the plus icon
    Then verify pop-up "Search Documents"
    Then user clicks on the action "Search All Documents"
    Then user inputs "Document Name" with value "Pack_TST-1301_Name"
    Then user clicks on tick-checkbox
    Then verify pop-up "Document Search Results"
    Then user clicks on the action "Published"
    Then verify pop-up "Add Package Confirmation"
    Then verify "Name" with value "Pack_TST-1301_Name" in the pop-up
    Then verify "Updated By" with value "loginData|credentials1.name" in the pop-up
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then verify "Your changes were saved successfully." after completing the form description
    Then user clicks on tick-checkbox
    Then user clicks on Table first row "Pack_TST-1301_Name"
    Then verify pop-up "Document Menu"
    Then user clicks on the action "Start"
    Then verify page "Patient Documents"
    Then verify persistent property "Prop_TST-1301_Name_1" with value "Second Value"
    Then user inputs "Prop_TST-1301_Name_1" with value "Third Value" inline
    Then user clicks on the action icon
    Then verify pop-up "Save Document"
    Then user clicks on the action "Complete"
    Then user clicks on tick-checkbox
    Then user clicks on the action "View In Patient Record"
    Then wait for 10 seconds
    Then user lands on "Patient Records" page
    Then verify event report "Prop_TST-1301_Name_1" with value "Third Value"
    Then user clicks on "Systems" in menu bar section
    Then navigate to information screen in Site "Diana Princess of Wales Hospital" with Location "Ward C1K"
    Then discharge patient in bed "Bay 2 / Bed 1" on the basis of method "On Clinical Advice Or With Consent" and discharge location to be "Usual Place Of Residence"
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
    Then user inputs "Document Name" with value "Pack_TST-1301_Name"
    Then user clicks on tick-checkbox
    Then verify pop-up "Document Search Results"
    Then user clicks on the action "Published"
    Then verify pop-up "Add Package Confirmation"
    Then verify "Name" with value "Pack_TST-1301_Name" in the pop-up
    Then verify "Updated By" with value "loginData|credentials1.name" in the pop-up
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
    Then verify persistent property "Prop_TST-1301_Name_1" with value ""
    Then user inputs "Prop_TST-1301_Name_1" with value "Fourth Value" inline
    Then user clicks on the action icon
    Then verify pop-up "Save Document"
    Then user clicks on the action "Complete"
    Then user clicks on tick-checkbox
    Then verify pop-up "Complete Document"
    Then user clicks on the action "View In Patient Record"
    Then wait for 10 seconds
    Then user lands on "Patient Records" page
    Then verify event report "Prop_TST-1301_Name_1" with value "Fourth Value"
    Then user clicks on "Systems" in menu bar section
    Then navigate to information screen in Site "Diana Princess of Wales Hospital" with Location "Ward C1K"
    Then add patient with NHS number "documentPersistanceData|patientNHSNumber" in bed "Bay 2 / Bed 1"
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
    Then user inputs "Document Name" with value "Pack_TST-1301_Name"
    Then user clicks on tick-checkbox
    Then verify pop-up "Document Search Results"
    Then user clicks on the action "Published"
    Then verify pop-up "Add Package Confirmation"
    Then verify "Name" with value "Pack_TST-1301_Name" in the pop-up
    Then verify "Updated By" with value "loginData|credentials1.name" in the pop-up
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then verify "Your changes were saved successfully." after completing the form description
    Then user clicks on tick-checkbox
    Then user clicks on Table first row "Pack_TST-1003_Name"
    Then verify pop-up "Document Menu"
    Then user clicks on the action "Start"
    Then verify page "Patient Documents"
    Then verify persistent property "Prop_TST-1301_Name_1" with value ""
    Then user inputs "Prop_TST-1301_Name_1" with value "Fifth Value" inline
    Then user clicks on the action icon
    Then verify pop-up "Save Document"
    Then user clicks on the action "Complete"
    Then user clicks on tick-checkbox
    Then user clicks on the action "View In Patient Record"
    Then wait for 10 seconds
    Then user lands on "Patient Records" page
    Then verify event report "Prop_TST-1301_Name_1" with value "Fifth Value"
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in profile menu "Documents"
    Then user clicks on the plus icon
    Then verify pop-up "Search Documents"
    Then user clicks on the action "Search All Documents"
    Then user inputs "Document Name" with value "Pack_TST-1301_Name"
    Then user clicks on tick-checkbox
    Then verify pop-up "Document Search Results"
    Then user clicks on the action "Published"
    Then verify pop-up "Add Package Confirmation"
    Then verify "Name" with value "Pack_TST-1301_Name" in the pop-up
    Then verify "Updated By" with value "loginData|credentials1.name" in the pop-up
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then verify "Your changes were saved successfully." after completing the form description
    Then user clicks on tick-checkbox
    Then user clicks on Table first row "Pack_TST-1003_Name"
    Then verify pop-up "Document Menu"
    Then user clicks on the action "Start"
    Then verify page "Patient Documents"
    Then verify persistent property "Prop_TST-1301_Name_1" with value "Fifth Value"
    Then user inputs "Prop_TST-1301_Name_1" with value "Sixth Value" inline
    Then user clicks on the action icon
    Then verify pop-up "Save Document"
    Then user clicks on the action "Complete"
    Then user clicks on tick-checkbox
    Then user clicks on the action "View In Patient Record"
    Then wait for 10 seconds
    Then user lands on "Patient Records" page
    Then verify event report "Prop_TST-1301_Name_1" with value "Sixth Value"
    Then user clicks on "Systems" in menu bar section
    Then navigate to information screen in Site "Diana Princess of Wales Hospital" with Location "Ward C1K"
    Then discharge patient in bed "Bay 2 / Bed 1" on the basis of method "On Clinical Advice Or With Consent" and discharge location to be "Usual Place Of Residence"

  @TST-1307 @safi
  Scenario: V3 Documents - Document locking
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then user enters Patient Identifier NHS in search bar
    Then user clicks on tick-checkbox
    Then user clicks "Continue" to navigate to Patient Summary page
    Then user clicks on patient menu in top right corner of the page
    Then user selects "Documents" option from dropdown
    Then user selects first document in the filtered rows
    Then verify pop-up "Document Menu"
    Then user clicks on "Start" in the document menu
    Then user lands on "Patient Documents" page
    
  @TST-808 @safi
  Scenario: V3 Documents - Document Config - Verify selection Property Value list after revising the Property and Values
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
    Then filter item "All Names" with value "Prop_TST-808_Name_1"
    Then create a property with Code "Prop_TST-808_Code_1" Name "Prop_TST-808_Name_1" Desc "Prop_TST-808_Description_1" and Type "Text-Input-Inline" if not exist
    Then publish "Prop_TST-808_Name_1" if it is not published
    Then filter item "Prop_TST-808_Name_1" with value "Prop_TST-808_Name_2"
    Then create a property with Code "Prop_TST-808_Code_2" Name "Prop_TST-808_Name_2" Desc "Prop_TST-808_Description_2" and Type "Selection" if not exist
    Then configure selection property "Prop_TST-808_Name_2" with selection values "This is Prop_TST-808_1,This is Prop_TST-808_2" if not published
    Then publish "Prop_TST-808_Name_2" if it is not published
    Then user clicks on "Documents"
    Then user lands on "Documents List" module
    Then filter item "All Names" with value "Doc_TST-808_Name"
    Then create a document with Code "Doc_TST-808_Code" Name "Doc_TST-808_Name" Desc "Doc_TST-808_Description" Type "Standard" Ammendable "active" Ability To Save Draft "active" Summarisable "active" Abandonable "active" if not exist
    Then configure document "Doc_TST-808_Name" for TST-808 pre-requisites
    Then user clicks on "Doc_TST-808_Name" in the table
    Then verify pop-up "Document Details"
    Then user clicks on the action icon
    Then user clicks on the action "Configure"
    Then user lands on "Document Settings" page
    Then verify "Prop_TST-808_Name_1" has rules applied
    Then user clicks on the action icon for property "Prop_TST-808_Name_1"
    Then verify pop-up "Property Details"
    Then verify "Status" with value "Published" in the pop-up details
    Then verify "Updated By" with value "loginData|credentials.name" in the pop-up details
    Then verify "Code" with value "Prop_TST-808_Code_1" in the pop-up details
    Then verify "Name" with value "Prop_TST-808_Name_1" in the pop-up details
    Then verify "Description" with value "Prop_TST-808_Description_1" in the pop-up details
    Then verify "Searchable" with value "Yes" in the pop-up details
    Then verify "Type" with value "Text-Input-Inline" in the pop-up details
    Then verify "Persistence" with value "Never" in the pop-up details
    Then verify there are "1" number of "Linked Documents" in the pop-up
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
    Then verify "Prop_TST-808_Name_1" has no rules applied

  @TST-810 @safi
  Scenario: V3 Documents - Completing Patient documents - Verify Warning messages (Abandon changes ) for back arrow button
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user clicks on the "Systems" card in Settings section
    Then user clicks on "Documents" card
    Then user lands on "Document Settings" page
    Then user clicks on filter parameter "Table Parameters"
    Then user clicks on "Code" option in Package filter
    Then user enters Code in textarea
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user selects first package in filtered rows
    Then user clicks on "Linked Documents" in Package details
    Then user clicks on linked document in linked document list
    Then user clicks on the action icon
    Then user clicks on "Revise"
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user clicks on the action icon
    Then user clicks "Publish" from Document menu
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox

  @TST-980 @safi
  Scenario: V3 Documents - Favourite Packages in list when searching
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then user enters Patient Identifier NHS in search bar
    Then user clicks on tick-checkbox
    Then user clicks "Continue" to navigate to Patient Summary page
    Then user clicks on patient menu in top right corner of the page
    Then user selects "Documents" option from dropdown
    Then user clicks on plus icon in Document list
    Then verify pop-up "Search Documents"
    Then user clicks on "Search All Documents" in Search Documents popup
    Then user enters Document Name to search
    Then user clicks on tick-checkbox
    Then user selects the first option in filtered result with value "TEST"
    Then verify pop-up "Add Package Confirmation"
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox



#  #Sprint 6
#  @TST-1165 @safi
#  Scenario: V3 Observations -  Recording NEWS - Summary of Vitals
#    Given user lands on "Systems" page
#    Then user clicks on "Patient Quick Search" in menu bar section
#    Then user enters Patient Identifier Search "8888888888"
#  #  Then user enters Patient Identifier NHS in search bar
#    Then user clicks on tick-checkbox
#    Then user clicks "Continue" to navigate to Patient Summary page
#    Then user clicks on patient menu in top right corner of the page
#    Then user selects "Assessments" option from dropdown
#    Then user clicks on plus icon on top right corner of the page
#    Then user clicks on "Vitals" in New Assessments popUp
#    Then user clicks on "National Early Warning Score (Scale 1)" in New Vitals Assessment popUp
#    Then user clicks on "Respiration" in Vitals list
#    Then user clicks on Input Method "Wheel" to turn to Inline
#    Then user "Enter Value" for selected option
#    Then user clicks on tick-checkbox
#    Then user clicks on "SPO2 Scale 1" in Vitals list
#    Then user "Enter Value" for selected option
#    Then user clicks on tick-checkbox
#    Then user clicks on "Air or Oxygen" in Vitals list
#    Then user clicks on "No O2 Supplement" in Value list
#    Then user clicks on "Blood Pressure" in Vitals list
#    Then user clicks on "Systolic" and enter values
#    Then user clicks on tick-checkbox
#    Then user clicks on "Pulse" in Vitals list
#    Then user "Enter Value" for selected option
#    Then user clicks on tick-checkbox
#    Then user clicks on "Consciousness" in Vitals list
#    Then user clicks on "Alert" in Value list
#    Then user clicks on "Temperature" in Vitals list
#    Then user "Enter Value" for selected option
#    Then user clicks on tick-checkbox
#    Then user clicks on tick-checkbox
#    Then user clicks on tick-checkbox
#    Then user clicks on tick-checkbox
#    Then user verify the Vitals summary from Patient Assessments page
#
#
#
#  @TST-1202 @safi
#  Scenario: Viewing Vital Signs Assessment in Patient Event List
#    Given user lands on "Systems" page
#    Then user clicks on "Patient Quick Search" in menu bar section
#    Then user enters Patient Identifier NHS in search bar
#    Then user clicks on tick-checkbox
#    Then user clicks "Continue" to navigate to Patient Summary page
#    Then user clicks on patient menu in top right corner of the page
#    Then user selects "Records" option from dropdown
#    Then user verify the records of patient
#
#
#  @TST-1166 @safi
#  Scenario: V3 Observations - Accessing Assessments Module
#    Given user lands on "Systems" page
#    Then user clicks on "Patient Quick Search" in menu bar section
#    Then user enters Patient Identifier NHS in search bar
#    Then user clicks on tick-checkbox
#    Then user clicks "Continue" to navigate to Patient Summary page
#    Then user clicks on patient menu in top right corner of the page
#    Then user selects "Assessments" option from dropdown
#    Then user verify the tabs displayed or not
#
#  @TST-1168 @safi
#  Scenario: V3 Observations -  Viewing Vital Signs Results Table
#    Given user lands on "Systems" page
#    Then user clicks on "Patient Quick Search" in menu bar section
#    Then user enters Patient Identifier NHS in search bar
#    Then user clicks on tick-checkbox
#    Then user clicks "Continue" to navigate to Patient Summary page
#    Then user clicks on patient menu in top right corner of the page
#    Then user selects "Assessments" option from dropdown
#
#
#  @TST-1199 @safi
#  Scenario: Recording a NEWS Vital Signs
#    Given user lands on "Systems" page
#    Then user clicks on "Patient Quick Search" in menu bar section
#    Then user enters Patient Identifier NHS in search bar
#    Then user clicks on tick-checkbox
#    Then user clicks "Continue" to navigate to Patient Summary page
#    Then user clicks on patient menu in top right corner of the page
#    Then user selects "Assessments" option from dropdown
#    Then user clicks on plus icon on top right corner of the page
#    Then user clicks on "Vitals" in New Assessments popUp
#
#  @TST-1203 @safi
#  Scenario: Show observation information on the ward handover
#    Given user lands on "Systems" page
#    Then user clicks on "Information Screens" card in Systems
#    Then user clicks on the action icon
#    #no action menu in Information screen
#
#  @TST-1204 @safi
#  Scenario: Recording a NEWS (Scale 2) Vital Signs
#    Given user lands on "Systems" page
#    Then user clicks on "Patient Quick Search" in menu bar section
#    Then user enters Patient Identifier NHS in search bar
#    Then user clicks on tick-checkbox
#    Then user clicks "Continue" to navigate to Patient Summary page
#    Then user clicks on patient menu in top right corner of the page
#    Then user selects "Assessments" option from dropdown
#    Then user clicks on plus icon on top right corner of the page
#    Then user clicks on "Vitals" in New Assessments popUp
#
#
#  @TST-1213 @safi
#  Scenario: Erroneous Vital Signs - Patient Timeline
#    Given user lands on "Systems" page
#    Then user clicks on "Patient Quick Search" in menu bar section
#    Then user enters Patient Identifier NHS in search bar
#    Then user clicks on tick-checkbox
#    Then user clicks "Continue" to navigate to Patient Summary page
#    Then user clicks on patient menu in top right corner of the page
#    Then user selects "Assessments" option from dropdown
#    Then user clicks on "Vitals" tab
#    Then user clicks on menu icon on Observation Details popUp
#    Then user clicks on "Suppress" option in Observation Action menu
#    Then user clicks on "Reason" in Suppress Vital popUp
#    Then user selects "Incorrect Details" option from Suppression reasons popUp
#    Then user clicks on tick-checkbox
#    Then user clicks on tick-checkbox
#
#
#  @TST-1206 @safi
#  Scenario: Graphing Vitals
#    Given user lands on "Systems" page
#    Then user clicks on "Patient Quick Search" in menu bar section
#    Then user enters Patient Identifier NHS in search bar
#    Then user clicks on tick-checkbox
#    Then user clicks "Continue" to navigate to Patient Summary page
#    Then user clicks on patient menu in top right corner of the page
#    Then user selects "Assessments" option from dropdown
#    Then user clicks on "Charts" tab under Vital tab
#
#  @TST-1164 @safi #superseded by 1165 so no test steps
#  Scenario: V3 Observations - Recording NEWS - Vital signs
#    Given user lands on "Systems" page