//
//  AbsenteeVotingViewController.swift
//  voiceURvote
//
//  Created by Kasey Sexton on 8/18/22.
//

import UIKit

class AbsenteeVotingViewController: UIViewController {


    @IBOutlet weak var absenteeStateLabel: UITextField!
    
    @IBOutlet weak var absenteeVotingLabel: UILabel!
    
    var pickerView = UIPickerView()
    
    let absenteeVoting = [
        "• You may vote by absentee ballot in Alabama if: you will be absent from the county on Election Day, you are ill or have a physical disability that prevents a trip to the polling place, you are a registered Alabama voter who is temporarily living outside the county (such as a member of the armed forces, a voter employed outside of the United States, a college student, or a spouse or child of such a person), you are an appointed election officer or poll watcher at a polling place other than your regular polling place, you work a required shift - 10 hours or more - that coincides with polling hours, you are a caregiver for a family member who is confined to the home, you are incarcerated but otherwise eligible to vote. \n• Absentee ballot applications must be received in person 5 days before Election Day or by mail 7 days before Election Day. \n• Voted absentee ballots should be received by noon on Election Day if delivered by mail or if delivered by medical emergency designee or received by close of business on the day before the election if hand delivered. \n• Voters are required to include a copy of valid photo ID with their application for an absentee ballot. A voter can use any of the following forms of voter ID: valid Driver's License (not expired or has been expired less than 60 days); valid Non-driver ID (not expired or has been expired less than 60 days); valid Alabama Photo Voter ID; valid State Issued ID, valid Federal Issued ID, valid US Passport; valid Employee ID from Federal Government, State of Alabama, County Government, Municipality, Board, Authority, or other entity of this state; valid student or employee ID from a college or university in the State of Alabama (including postgraduate technical or professional schools); valid Military ID; valid Tribal ID.",
        "• Absentee ballot applications must be received in person or by mail by the 7th day before Election Day. \n• Voted absentee ballots must be postmarked by Election Day and received no later than 7 days after the Election. \n• Absentee ballots will automatically be sent to all registered voters. If you need your ballot sent somewhere other than your usual address, contact your local election official at least one month before the election so you have time to receive the ballot. \n• If you're not voting for the first time in California, you don't need to provide a copy of your ID with your absentee ballot. \n• If you're a first time California voter who registered by mail and you didn't provide your driver's license or California ID number or the last 4 digits of your Social Security number when you registered, you'll need to provide a photocopy of one of the following forms of ID along with your mail ballot: a copy of a current photo ID showing your name and photograph; a copy of a current utility bill, bank statement, government check, paycheck, or other government document that shows your name and address.",
        "• Absentee ballot applications must be received in person  by 3pm,the day before Election Day or by mail 7 days before Election Day. \n• Voted absentee ballots must be received by Election Day, or Postmarked by Election Day and received 144 hours after polls close. \n• Any registered New Jersey voter may apply for an absentee ballot and vote by mail. \n• If you've voted in New Jersey before or provided ID at the time of registration, you don't need to provide ID to vote by mail. \n• If you're voting in New Jersey for the first time, registered to vote by mail, and didn't provide ID when you registered, be sure to enclose a copy of your photo ID, or a current utility bill, bank statement, government check, paycheck, or government document that shows your name and address when you return your ballot. \n• A person who delivers an absentee ballot to the county board in person must provide proof of their identity in the form of a New Jersey driver’s license or another form of identification issued or recognized as official by the federal government, the state of New Jersey, or any of its subdivisions, provided that the identification carries the full address and signature of the person.",
        "• You may vote by absentee ballot in New York if you expect to be: Absent from your county or, if a resident of New York City, absent from New York City, on Election Day; Unable to appear at the polling place because of illness or physical disability or duties related to the primary care of one or more individuals who are ill or physically disabled, or because you will be or are a patient in a hospital; A resident or patient of a Veterans Health Administration Hospital; Detained in jail awaiting Grand Jury action or confined in prison after conviction for an offense other than a felony. \n• Absentee ballot applications must be received 1 day before Election Day if delivering in person or 15 days before Election Day by mail or online. \n• Voted absentee ballots must be postmarked on Election Day and received 7 days after Election Day. Voted ballots can also be turned in by hand on election day. \n• If you've voted in New Jersey before or provided ID at the time of registration, you don't need to provide ID to vote by mail. \n• If you're voting in New Jersey for the first time, registered to vote by mail, and didn't provide ID when you registered, be sure to enclose a copy of your photo ID, or a current utility bill, bank statement, government check, paycheck, or government document that shows your name and address when you return your ballot.",
        "• Absentee ballot applications must be received in person, by mail, or online by 5pm on the third Monday preceding Election Day. \n• Voted absentee ballots must be received, if mailed, by 7pm on Election Day. If hand-delivered, it must be received by close of business the day before the election. \n• Any registered Oklahoma voter may vote by absentee ballot. \n• Oklahoma voters must provide proof of identity each time they vote. If you are voting absentee, you must show proof of identity by having your absentee ballot affidavit notarized."]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        pickerView.delegate = self
        pickerView.dataSource = self

        absenteeStateLabel.inputView = pickerView


    }
    

    @IBAction func showAbsenteeButtonTapped(_ sender: Any) {
        
        
        absenteeVotingLabel.frame = CGRect(x: 20,y: 203,width: 374,height: 1271)
        absenteeVotingLabel.numberOfLines = 0

        absenteeVotingLabel.sizeToFit()
      
        
    
    if absenteeStateLabel.text == "Alabama" {

        absenteeVotingLabel.text = absenteeVoting[0]

        } else if absenteeStateLabel.text == "California" {

            absenteeVotingLabel.text = absenteeVoting[1]

        } else if absenteeStateLabel.text == "New Jersey" {

            absenteeVotingLabel.text = absenteeVoting[2]

        } else if absenteeStateLabel.text == "New York" {

            absenteeVotingLabel.text = absenteeVoting[3]

        } else if absenteeStateLabel.text == "Oklahoma" {

            absenteeVotingLabel.text = absenteeVoting[4]

        } else {

            absenteeVotingLabel.text = "work in progress"

        }
        
        
        
        
    }
    
    
    
}



extension AbsenteeVotingViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    
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
        absenteeStateLabel.text = states[row]
        absenteeStateLabel.resignFirstResponder()
    }

}

