//
//  HomeVC.swift
//  FloatingLabelTextField
//
//  Created by Nirzar Gandhi on 23/09/25.
//

import UIKit

class HomeVC: BaseVC {
    
    // MARK: - IBOutlets
    @IBOutlet weak var tableView: UITableView!
    
    
    // MARK: - Properties
    fileprivate var refFirstNameTF: FloatingLabelTextField?
    fileprivate var refLastNameTF: FloatingLabelTextField?
    fileprivate var refAgeTF: FloatingLabelTextField?
    fileprivate var refGenderTF: FloatingLabelTextField?
    fileprivate var refMobileNoTF: FloatingLabelTextField?
    fileprivate var refEmailIdTF: FloatingLabelTextField?
    fileprivate var refCompanyNameTF: FloatingLabelTextField?
    fileprivate var refJobDescTF: FloatingLabelTextField?
    
    fileprivate lazy var fName = ""
    fileprivate lazy var lName = ""
    fileprivate lazy var age = ""
    fileprivate lazy var gender = ""
    fileprivate lazy var mobile = ""
    fileprivate lazy var email = ""
    fileprivate lazy var companyName = ""
    fileprivate lazy var jobDesc = ""
    
    
    // MARK: -
    // MARK: - View init Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Home"
        
        self.setControlsProperty()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.navigationController?.navigationBar.isHidden = false
        self.navigationItem.hidesBackButton = true
        self.navigationController?.navigationBar.tintColor = .white
        
        self.tableView.contentInsetAdjustmentBehavior = .never
    }
    
    fileprivate func setControlsProperty() {
        
        self.view.backgroundColor = .black
        self.view.isOpaque = false
        
        // Tableview
        self.tableView.backgroundColor = .clear
        
        self.tableView.tag = 0
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        self.tableView.separatorStyle = .none
        self.tableView.showsVerticalScrollIndicator = false
        self.tableView.rowHeight = UITableView.automaticDimension
        
        self.tableView.tableFooterView = UIView().addTableFooter(height: UIDevice.current.hasNotch ? getBottomSafeAreaHeight() : 20)
        self.tableView.tableFooterView?.backgroundColor = .clear
    }
}


// MARK: -
// MARK: - UITableView DataSource
extension HomeVC: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if tableView.tag == 0 {
            return 1
        }
        
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if tableView.tag == 0 {
            
            var cell = tableView.dequeueReusableCell(withIdentifier: "HomeInputCell") as? HomeInputCell
            if cell == nil {
                let nib = Bundle.main.loadNibNamed("HomeInputCell", owner: self, options: nil)
                cell = nib![0] as? HomeInputCell
            }
            
            cell?.firstNameTF.delegate = self
            cell?.lastNameTF.delegate = self
            cell?.ageTF.delegate = self
            cell?.genderTF.delegate = self
            cell?.mobileNoTF.delegate = self
            cell?.emailIdTF.delegate = self
            cell?.companyNameTF.delegate = self
            cell?.jobDescTF.delegate = self
            
            self.refFirstNameTF = cell?.firstNameTF
            self.refLastNameTF = cell?.lastNameTF
            self.refAgeTF = cell?.ageTF
            self.refGenderTF = cell?.genderTF
            self.refMobileNoTF = cell?.mobileNoTF
            self.refEmailIdTF = cell?.emailIdTF
            self.refCompanyNameTF = cell?.companyNameTF
            self.refJobDescTF = cell?.jobDescTF
            
            cell?.configureCell(fName: self.fName,
                                lName: self.lName,
                                age: self.age,
                                gender: self.gender,
                                mobile: self.mobile,
                                email: self.email,
                                companyName: self.companyName,
                                jobDesc: self.jobDesc)
            
            self.refFirstNameTF?.addTarget(self, action: #selector(self.textFieldDidChange(_:)), for: .editingChanged)
            self.refLastNameTF?.addTarget(self, action: #selector(self.textFieldDidChange(_:)), for: .editingChanged)
            self.refAgeTF?.addTarget(self, action: #selector(self.textFieldDidChange(_:)), for: .editingChanged)
            self.refGenderTF?.addTarget(self, action: #selector(self.textFieldDidChange(_:)), for: .editingChanged)
            self.refMobileNoTF?.addTarget(self, action: #selector(self.textFieldDidChange(_:)), for: .editingChanged)
            self.refEmailIdTF?.addTarget(self, action: #selector(self.textFieldDidChange(_:)), for: .editingChanged)
            self.refCompanyNameTF?.addTarget(self, action: #selector(self.textFieldDidChange(_:)), for: .editingChanged)
            self.refJobDescTF?.addTarget(self, action: #selector(self.textFieldDidChange(_:)), for: .editingChanged)
            
            return cell!
            
        } else {
            return getTableCell()
        }
    }
    
    // MARK: - UITableView Delegate
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) { }
}


// MARK: - UITextField Delegate
extension HomeVC: UITextFieldDelegate {
    
    @objc fileprivate func textFieldDidChange(_ sender: UITextField) {
        
        if sender == self.refFirstNameTF {
            
            // First Name TextField
            if let fname = self.refFirstNameTF?.text, !fname.isEmpty {
                self.fName = fname
            } else {
                self.fName = ""
            }
            
        } else if sender == self.refLastNameTF {
            
            // Last Name TextField
            if let lname = self.refLastNameTF?.text, !lname.isEmpty {
                self.lName = lname
            } else {
                self.lName = ""
            }
            
        } else if sender == self.refAgeTF {
            
            // Age TextField
            if let refAge = self.refAgeTF?.text, !refAge.isEmpty {
                self.age = refAge
            } else {
                self.age = ""
            }
            
        } else if sender == self.refGenderTF {
            
            // Gender TextField
            if let refGender = self.refAgeTF?.text, !refGender.isEmpty {
                self.gender = refGender
            } else {
                self.gender = ""
            }
            
        } else if sender == self.refMobileNoTF {
            
            // Mobile Number TextField
            if let mobileno = self.refMobileNoTF?.text, !mobileno.isEmpty {
                self.mobile = mobileno
            } else {
                self.mobile = ""
            }
            
        } else if sender == self.refEmailIdTF {
            
            // Email Id TextField
            if let refEmail = self.refEmailIdTF?.text, !refEmail.isEmpty {
                self.email = refEmail
            } else {
                self.email = ""
            }
            
        } else if sender == self.refCompanyNameTF {
            
            // Company Name TextField
            if let compayname = self.refCompanyNameTF?.text, !compayname.isEmpty {
                self.companyName = compayname
            } else {
                self.companyName = ""
            }
            
        } else if sender == self.refJobDescTF {
            
            // Job Description TextField
            if let jobdesc = self.refJobDescTF?.text, !jobdesc.isEmpty {
                self.jobDesc = jobdesc
            } else {
                self.jobDesc = ""
            }
        }
    }
}
