//
//  HomeInputCell.swift
//  FloatingLabelTextField
//
//  Created by Nirzar Gandhi on 23/09/25.
//

import UIKit

class HomeInputCell: UITableViewCell {
    
    // MARK: - IBOutlets
    @IBOutlet weak var container: UIView!
    
    @IBOutlet weak var firstNameTF: FloatingLabelTextField!
    @IBOutlet weak var lastNameTF: FloatingLabelTextField!
    @IBOutlet weak var ageTF: FloatingLabelTextField!
    @IBOutlet weak var genderTF: FloatingLabelTextField!
    @IBOutlet weak var mobileNoTF: FloatingLabelTextField!
    @IBOutlet weak var emailIdTF: FloatingLabelTextField!
    @IBOutlet weak var companyNameTF: FloatingLabelTextField!
    @IBOutlet weak var jobDescTF: FloatingLabelTextField!
    
    
    // MARK: - Cell init methods
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.backgroundColor = .clear
        self.selectionStyle = .none
        
        // Container
        self.container.backgroundColor = .clear
        
        // First Name TextField
        self.firstNameTF.keyboardType = .asciiCapable
        self.firstNameTF.updateProperty(placeholderText: "Enter first name", floatingLabelText: "First Name")
        self.firstNameTF.text = ""
        
        // Last Name TextField
        self.lastNameTF.keyboardType = .asciiCapable
        self.lastNameTF.updateProperty(placeholderText: "Enter last name", floatingLabelText: "Last Name")
        self.lastNameTF.text = ""
        
        // Age TextField
        self.ageTF.keyboardType = .phonePad
        self.ageTF.updateProperty(placeholderText: "Enter age", floatingLabelText: "Age")
        self.ageTF.text = ""
        
        // Gender TextField
        self.genderTF.keyboardType = .asciiCapable
        self.genderTF.updateProperty(placeholderText: "Enter gender", floatingLabelText: "Gender")
        self.genderTF.text = ""
        
        // Mobile No. TextField
        self.mobileNoTF.keyboardType = .phonePad
        self.mobileNoTF.updateProperty(placeholderText: "Enter mobile number", floatingLabelText: "Mobile Number")
        self.mobileNoTF.text = ""
        
        // Email Id TextField
        self.emailIdTF.keyboardType = .emailAddress
        self.emailIdTF.updateProperty(placeholderText: "Enter email id", floatingLabelText: "Email Id")
        self.emailIdTF.text = ""
        
        // Company Name TextField
        self.companyNameTF.keyboardType = .asciiCapable
        self.companyNameTF.updateProperty(placeholderText: "Enter company name", floatingLabelText: "Company Name")
        self.companyNameTF.text = ""
        
        // Job Description TextField
        self.jobDescTF.keyboardType = .asciiCapable
        self.jobDescTF.updateProperty(placeholderText: "Enter job description", floatingLabelText: "Job Description")
        self.jobDescTF.text = ""
    }
    
    
    // MARK: - Cell Configuration
    func configureCell(fName: String,
                       lName: String,
                       age: String,
                       gender: String,
                       mobile: String,
                       email: String,
                       companyName: String,
                       jobDesc: String) {
        
        // First Name TextField
        self.firstNameTF.text = fName
        self.firstNameTF.updateTextFieldUI()
        
        // Last Name TextField
        self.lastNameTF.text = lName
        self.lastNameTF.updateTextFieldUI()
        
        // Age TextField
        self.ageTF.text = age
        self.ageTF.updateTextFieldUI()
        
        // Gender TextField
        self.genderTF.text = gender
        self.genderTF.updateTextFieldUI()
        
        // Mobile Number TextField
        self.mobileNoTF.text = mobile
        self.mobileNoTF.updateTextFieldUI()
        
        // Email Id TextField
        self.emailIdTF.text = email
        self.emailIdTF.updateTextFieldUI()
        
        // Company Name TextField
        self.companyNameTF.text = companyName
        self.companyNameTF.updateTextFieldUI()
        
        // Job Description TextField
        self.jobDescTF.text = jobDesc
        self.jobDescTF.updateTextFieldUI()
    }
}
