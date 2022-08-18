//
//  InPersonVotingViewController.swift
//  voiceURvote
//
//  Created by Kasey Sexton on 8/18/22.
//

import UIKit

class InPersonVotingViewController: UIViewController {

    @IBOutlet weak var yourStateIPLabel: UITextField!
    
    @IBOutlet weak var inPersonVotingLabel: UILabel!
    
    var pickerView = UIPickerView()
    
    let inPersonVotingProcedures = [
        "• Must be registered 15 days prior to Election Day. \n• Must show photo identification at the polls to vote. \n• Accepted forms of identification: Valid Driver's License (not expired or has been expired less than 60 days); Alabama Law Enforcement Agency Digital Driver's License; Valid Non-driver ID (not expired or has been expired less than 60 days); Alabama Law Enforcement Agency Digital Non-driver ID; Valid Alabama Photo Voter ID; Valid State Issued ID (Alabama or any other state), such as: a Valid AL Department of Corrections Release- Temporary ID (Photo Required), a Valid AL Movement/Booking Sheet from Prison/Jail System (Photo Required), or a Valid Pistol Permit (Photo Required); Valid Federal Issued ID; Valid US Passport; Valid Employee ID from Federal Government, State of Alabama, County Government, Municipality, Board, Authority, or other entity of Alabama; Valid student or employee ID from a college or university in the State of Alabama (including postgraduate technical or professional schools); Valid Military ID; Valid Tribal ID.",
        "• Must be registered 15 days prior to Election Day. \n• If you're not voting for the first time in California, you don't need to show ID to vote. \n• If you're a first-time voter, you are voting in a federal election, you registered by mail, and didn't include your driver's license or California ID number or the last 4 digits of your Social Security number on your registration, you may be asked to provide ID if you vote in person. \n• Acceptable forms of ID include a current and valid photo ID that includes your name and photograph. Examples: Driver's license or ID card of any state, Passport, Employee ID card, ID card provided by a commercial establishment, Credit or debit card, Military ID card, Student ID card, Health club ID card, Insurance plan ID card, Public housing ID card.",
        "• Must be registered 21 days before Election Day. \n• If you've voted in New Jersey before or provided ID at the time of registration, you don't need to show ID to vote. \n• If you're voting in New Jersey for the first time, registered to vote by mail, and didn't provide ID when you registered, be sure to bring a copy of your photo ID, or a current utility bill, bank statement, government check, paycheck, or government document that shows your name and address when you vote.",
        "• Must be registered 25 days before Election Day. \n• If you've voted in New York before or provided ID at the time of registration, you don't need to show ID to vote. \n• If you're voting in New York for the first time, registered to vote by mail, and didn't provide ID when you registered, be sure to bring a copy of your photo ID, or a current utility bill, bank statement, government check, paycheck, or government document that shows your name and address when you vote.",
        "• Must be registered 25 days before Election Day. \n• If you are voting in person in Oklahoma, you must present one of the following forms of ID at the time you vote: a current Oklahoma driver's license; acurrent photo ID issued by Oklahoma, the US government, or a federally recognized tribal government; a county election board voter ID card."]

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        pickerView.delegate = self
        pickerView.dataSource = self

        yourStateIPLabel.inputView = pickerView

    }
    

    @IBAction func inPersonInfoButtonTapped(_ sender: Any) {
        
                
        
        inPersonVotingLabel.frame = CGRect(x: 21,y: 174,width: 374,height: 647)
        inPersonVotingLabel.numberOfLines = 0

        inPersonVotingLabel.sizeToFit()
      
        
    
    if yourStateIPLabel.text == "Alabama" {

            inPersonVotingLabel.text = inPersonVotingProcedures[0]

        } else if yourStateIPLabel.text == "California" {

            inPersonVotingLabel.text = inPersonVotingProcedures[1]

        } else if yourStateIPLabel.text == "New Jersey" {

            inPersonVotingLabel.text = inPersonVotingProcedures[2]

        } else if yourStateIPLabel.text == "New York" {

            inPersonVotingLabel.text = inPersonVotingProcedures[3]

        } else if yourStateIPLabel.text == "Oklahoma" {

            inPersonVotingLabel.text = inPersonVotingProcedures[4]

        } else {

            inPersonVotingLabel.text = "work in progress"

        }
        
        
        
    }
    
    
    

}


extension InPersonVotingViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        yourStateIPLabel.text = states[row]
        yourStateIPLabel.resignFirstResponder()
    }

}

