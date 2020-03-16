# C0769778_MidTerm_MAD3115W2020

## CUSTOMER BILL CALCULATOR

## PROJECT CONTRIBUTORS

Abhishek Santhosh Jaya (C0769778)

## PROJECT DESCRIPTION
Mid term test: A program that calculates the total bills of a customer. A bill could be for the internet, hydro or mobile usage. A customer may have multiple bills. 

* Evaluation #1 - Edit launchScreen, implement proper login/logout, display a list of customers, add new customers, data access and storage with singleton class, validations, display errors and alerts, display basic customer information
* Evaluation #2 - Adding additional bills. Picker/Segment view for bill types. Proper total calculation, proper validations.

## PROJECT STRUCTURE
<img src="https://i93.servimg.com/u/f93/18/45/29/87/classt10.png" alt="Class Structure" style="float: left; margin-right: 10px;"/>
<img src="https://i93.servimg.com/u/f93/18/45/29/87/classt11.png" alt="Class Structure" style="float: center; margin-right: 50px;"/>

## PROJECT OUTPUT
Screenshot | Description
--- | ---
<img src="https://i.servimg.com/u/f93/18/45/29/87/simula11.png" alt="loginScreen"/> | Login screen for the app. Added validations. Added toggle hide password. Added Remember me. 'Sign up' button goes to add customer view controller.
<img src="https://i93.servimg.com/u/f93/18/45/29/87/simula14.png" alt="customerScreen"/> | List of customers. Search bar added. Logout button and new customer button added.
<img src="https://i93.servimg.com/u/f93/18/45/29/87/simula15.png" alt="addnewcustomer"/> | Adding a new customer. Added validations for phone number and email ID. Added picker view for date of birth. 
<img src="https://i93.servimg.com/u/f93/18/45/29/87/simula16.png" alt="detailedCustomerView"/> | Detailed view of a single customer. View bills button moves to a screen with all that customer's bills.
<img src = "https://i93.servimg.com/u/f93/18/45/29/87/simula17.png" alt="detailedBillView"/> |  View of bills. Contains bill amounts and the total amount. Clicking on a bill moves to a more detailed view of the bill. New bill button move to a screen to add a new bill. 
<img src = "https://i93.servimg.com/u/f93/18/45/29/87/simula18.png" alt = "addingabill"/> | Adding a new bill. Added segment for picking bill type. Removes unncessary text fields when swapping bill types. 
<img src = "https://i.servimg.com/u/f93/18/45/29/87/simula19.png" alt = "billAddedSuccess" /> | Adding a new hydro bill with ID "HY500"
<img src = "https://i93.servimg.com/u/f93/18/45/29/87/simula20.png" alt = "newlyaddedbill" /> | The newly added bill with ID "HY500" is now showing on the bill list for the customer.
<img src= "https://i.servimg.com/u/f93/18/45/29/87/simula21.png" alt = "detailedBillViewer" /> | Clicking on any bill will lead to a more detailed view with additional information.

## REFERENCES 
* [Hackingwithswift.com](https://www.hackingwithswift.com/example-code/system/how-to-save-user-settings-using-userdefaults) - Used in remember me on loginViewController
* [Learnappmaking.com](https://learnappmaking.com/uialertcontroller-alerts-swift-how-to/) - Used in displaying alerts to user
* [Learnappmaking.com](https://learnappmaking.com/pass-data-between-view-controllers-swift-how-to/) - Passing values between controllers
* [Learnappmaking.com](https://learnappmaking.com/table-view-controller-uitableviewcontroller-how-to/) - Working with tables
* [Stackoverflow.com](https://stackoverflow.com/questions/25471114/how-to-validate-an-e-mail-address-in-swift) - Used in email validation
* [Stackoverflow.com](https://stackoverflow.com/questions/50236308/is-is-possible-to-click-an-imageview-and-open-a-new-view-controller) - Clicking on an image to move to a new view controller
* [Swiftdevcenter.com](https://www.swiftdevcenter.com/uidatepicker-as-input-view-to-uitextfield-swift/) - Adding datepicker as textfield input
