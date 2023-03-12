@documentUpload @e2e

Feature: To verify and validate Document Upload module

  @TST-1302 @hamzaAhmad @e2eSprint @sprint13 @HamzaRefactorSP13
  Scenario: Document - Upload Settings Category
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on "Document Upload" card in Systems
    Then user lands on "Document Upload Settings" page
    Then user lands on "Categories" module
    Then verify module navigator "Categories" exits
    Then verify module navigator "Sub-Categories" exits
    Then verify module navigator "Names" exits
    Then verify module navigator "Categories" is selected
    Then user verify table header "Name" exists "true"
    Then user verify table header "Updated By" exists "true"
    Then user verify table header "Updated On" exists "true"
    Then user verify table header "Status" exists "true"
    Then user clicks on "Status"
    Then change old data "CategoryTST-1305" to new "Testing"
    Then reload page
    Then verify plus button exists
    Then user clicks on the plus icon
    Then verify pop-up "New Category"
    Then user enters new category "documentUpload|categories.category2.categoryName"
    Then user clicks on tick-checkbox
    Then verify pop-up "New Category Summary"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then user clicks on tick-checkbox
    Then reload page
    Then user clicks on "Status"
    Then verify column "3" of name "documentUpload|categories.category2.categoryName" contains value "Inactive"
    Then user clicks on "documentUpload|categories.category2.categoryName"
    Then verify pop-up "Category Details"
    Then verify "Status" with value "Inactive" in the pop-up
    Then verify "Updated By" with value "K Kualitatem" in the pop-up
    Then verify "Name" with value "documentUpload|categories.category2.categoryName" in the pop-up
    Then verify cross exists on pop-up
    Then verify action menu exists on pop-up
    Then user clicks on the action icon
    Then verify pop-up "Actions"
    Then user clicks on "Edit"
    Then verify pop-up "Edit Category"
    Then user clears the text-area
    Then user enters new category "documentUpload|categories.category2.categoryUpdatedName"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then user clicks on tick-checkbox
    Then reload page
    Then user clicks on "Status"
    Then verify value "documentUpload|categories.category2.categoryUpdatedName" is present in the table
    Then user clicks on "documentUpload|categories.category2.categoryUpdatedName"
    Then verify pop-up "Category Details"
    Then user clicks on the action icon
    Then verify pop-up "Actions"
    Then user clicks on "Activate"
    Then verify pop-up "Confirm Status Change"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then user clicks on tick-checkbox
    Then reload page
    Then verify column "3" of name "documentUpload|categories.category2.categoryUpdatedName" contains value "Active"



  @TST-1303 @hamzaAhmad @e2eSprint @sprint13 @HamzaRefactorSP13
  Scenario: Document - Upload Settings Sub-Category
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on "Document Upload" card in Systems
    Then user lands on "Document Upload Settings" page
    Then user click on module navigator "Sub-Categories"
    Then user lands on "Sub-Categories" module
    Then user verify table header "Name" exists "true"
    Then user verify table header "Count of categories" exists "true"
    Then user verify table header "Updated By" exists "true"
    Then user verify table header "Updated On" exists "true"
    Then user verify table header "Status" exists "true"
    Then user clicks on "Status"
    Then change old data "subCategoryTST-1305" to new "Testing"
    Then reload page
    Then verify plus button exists
    Then user clicks on the plus icon
    Then verify pop-up "New Sub Category"
    Then user enters new category "documentUpload|subCategories.subCategory1.subCategoryName"
    Then user clicks on "Categories" on popup
    Then verify pop-up "Select Categories"
    Then user clicks on "documentUpload|categories.category1.categoryName"
    Then user clicks on tick-checkbox
    Then verify pop-up "New Sub Category"
    Then user clicks on tick-checkbox
    Then verify pop-up "New Sub Category Summary"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then user clicks on tick-checkbox
    Then reload page
    Then user clicks on "Status"
    Then verify column "4" of name "documentUpload|subCategories.subCategory1.subCategoryName" contains value "Inactive"
    Then user clicks on "documentUpload|subCategories.subCategory1.subCategoryName"
    Then verify pop-up "SubCategory Details"
    Then verify "Status" with value "Inactive" in the pop-up
    Then verify "Updated By" with value "K Kualitatem" in the pop-up
    Then verify "Categories" with value "1" in the pop-up
    Then verify cross exists on pop-up
    Then verify action menu exists on pop-up
    Then user clicks on the action icon
    Then verify pop-up "Actions"
    Then user clicks on "Edit"
    Then verify pop-up "Edit Sub Category"
    Then user clears the text-area
    Then user enters new category "documentUpload|subCategories.subCategory1.subCategoryUpdatedName"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then user clicks on tick-checkbox
    Then reload page
    Then user clicks on "Status"
    Then verify value "documentUpload|subCategories.subCategory1.subCategoryUpdatedName" is present in the table
    Then user clicks on "documentUpload|subCategories.subCategory1.subCategoryUpdatedName"
    Then verify pop-up "SubCategory Details"
    Then user clicks on the action icon
    Then verify pop-up "Actions"
    Then user clicks on "Activate"
    Then verify pop-up "Confirm Status Change"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then user clicks on tick-checkbox
    Then reload page
    Then verify column "4" of name "documentUpload|subCategories.subCategory1.subCategoryUpdatedName" contains value "Active"



  @TST-1304 @hamzaAhmad @e2eSprint @sprint13 @HamzaRefactorSP13
  Scenario: Document - Upload Settings Names
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on "Document Upload" card in Systems
    Then user lands on "Document Upload Settings" page
    Then user click on module navigator "Names"
    Then user lands on "Names" module
    Then user verify table header "Name" exists "true"
    Then user verify table header "Count of sub-categories" exists "true"
    Then user verify table header "Updated By" exists "true"
    Then user verify table header "Updated On" exists "true"
    Then user verify table header "Status" exists "true"
    Then user clicks on "Status"
    Then change old data "NameTST-1305" to new "Testing"
    Then reload page
    Then verify plus button exists
    Then user clicks on the plus icon
    Then verify pop-up "New Name"
    Then user enters new category "documentUpload|names.name1.nameValue"
    Then user clicks on "Sub Categories"
    Then verify pop-up "Select Sub Categories"
    Then user clicks on "documentUpload|subCategories.subCategory1.subCategoryUpdatedName"
    Then user clicks on tick-checkbox
    Then verify pop-up "New Name"
    Then user clicks on tick-checkbox
    Then verify pop-up "New Name Summary"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then user clicks on tick-checkbox
    Then reload page
    Then user clicks on "Status"
    Then verify column "4" of name "documentUpload|names.name1.nameValue" contains value "Inactive"
    Then user clicks on "documentUpload|names.name1.nameValue"
    Then verify pop-up "Name Details"
    Then verify "Status" with value "Inactive" in the pop-up
    Then verify "Updated By" with value "K Kualitatem" in the pop-up
    Then verify "Sub Categories" with value "1" in the pop-up
    Then verify cross exists on pop-up
    Then verify action menu exists on pop-up
    Then user clicks on the action icon
    Then verify pop-up "Actions"
    Then user clicks on "Edit"
    Then verify pop-up "Edit Name"
    Then user clears the text-area
    Then user enters new category "documentUpload|names.name1.nameValueUpdated"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then user clicks on tick-checkbox
    Then reload page
    Then user clicks on "Status"
    Then verify value "documentUpload|names.name1.nameValueUpdated" is present in the table
    Then user clicks on "documentUpload|names.name1.nameValueUpdated"
    Then verify pop-up "Name Details"
    Then user clicks on the action icon
    Then verify pop-up "Actions"
    Then user clicks on "Activate"
    Then verify pop-up "Confirm Status Change"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then user clicks on tick-checkbox
    Then reload page
    Then user clicks on "Status"
    Then verify column "4" of name "documentUpload|names.name1.nameValueUpdated" contains value "Active"



  @TST-1305 @hamzaAhmad @e2eSprint @sprint13 @HamzaRefactorSP13
  Scenario: Document Upload Adding an Uploaded Document
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then wait for popup loading
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "documentUpload|patientIdentifiers.patient1.patientID"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then user clicks on the action icon
    Then verify pop-up "Patient Menu"
    Then user clicks on "Documents" on popup
    Then user lands on "Patient Documents" page
    Then verify patients demographics exist
    Then verify module navigator "Packages" exits
    Then verify module navigator "Uploaded Documents" exits
    Then user click on module navigator "Uploaded Documents"
    Then user lands on "Uploaded Document List" module
    Then user clicks on filter Parameter
    Then verify pop-up "Filter Parameters"
    Then verify popup option "Category" is visible
    Then verify popup option "Document Date" is visible
    Then verify popup option "Type" is visible
    Then verify popup option "Uploaded By" is visible
    Then verify popup option "Uploaded On" is visible
    Then verify popup option "Sensitive" is visible
    Then verify popup option "Specialty" is visible
    Then user verify table header "Document Date" exists "true"
    Then user verify table header "Code" exists "true"
    Then user verify table header "Name" exists "true"
    Then user verify table header "Type" exists "true"
    Then user verify table header "Category" exists "true"
    Then user verify table header "Sensitive" exists "true"
    Then user verify table header "Specialty" exists "true"
    Then user verify table header "Sub-Category" exists "true"
    Then user verify table header "Uploaded On" exists "true"
    Then user verify table header "Uploaded By" exists "true"
    Then user clicks on tick-checkbox
    Then user clicks on the plus icon
    Then user lands on "File Import" page
    Then verify "Selected File" module exists "true"
    Then verify "File Details" module exists "true"
    Then verify "Document Date" is present in the document
    Then verify "Category" is present in the document
    Then verify "Sub-Category" is present in the document
    Then verify "Name" is present in the document
    Then verify "Specialty" is present in the document
    Then verify "Code" is present in the document
    Then verify "Description" is present in the document
    Then verify "Sensitive" is present in the document
    Then verify "File Name" is present in the document
    Then verify "File Type" is present in the document
    Then verify "File Size" is present in the document
    Then user uploads file "documentUpload|uploadedFiles.file1.fileName"
    Then user clicks on "Document Date"
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user clicks on "Category"
    Then user clicks on "documentUpload|categories.category1.categoryName"
    Then user clicks on "Sub-Category"
    Then user clicks on "documentUpload|subCategories.subCategory1.subCategoryUpdatedName"
    Then user clicks on "Name"
    Then user clicks on "documentUpload|names.name1.nameValueUpdated"
    Then user clicks on "Specialty"
    Then user clicks on "Accident & Emergency"
    Then user enters code "documentUpload|codes.code1.codeValue"
    Then user enters description "documentUpload|descriptions.description1.descriptionValue"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then click on submission tick
    Then user clicks on back icon
    Then reload page
    Then verify column "1" of name "documentUpload|uploadedDocumentList.document1.documentCode" contains value "documentUpload|uploadedDocumentList.document1.documentName"
    Then verify column "2" of name "documentUpload|uploadedDocumentList.document1.documentCode" contains value "documentUpload|uploadedDocumentList.document1.documentType"
    Then verify column "3" of name "documentUpload|uploadedDocumentList.document1.documentCode" contains value "documentUpload|uploadedDocumentList.document1.documentCategory"
    Then verify column "4" of name "documentUpload|uploadedDocumentList.document1.documentCode" contains value "documentUpload|uploadedDocumentList.document1.documentSensitive"
    Then verify column "5" of name "documentUpload|uploadedDocumentList.document1.documentCode" contains value "documentUpload|uploadedDocumentList.document1.documentSpeciality"
    Then verify column "6" of name "documentUpload|uploadedDocumentList.document1.documentCode" contains value "documentUpload|uploadedDocumentList.document1.documentSubCategory"
    Then user clicks on back icon
    Then user clicks on the action icon
    Then verify pop-up "Patient Menu"
    Then user clicks on "Records" on popup
    Then user lands on "Patient Records" page
    Then user clicks on "documentUpload|uploadedDocumentList.document1.documentName"
