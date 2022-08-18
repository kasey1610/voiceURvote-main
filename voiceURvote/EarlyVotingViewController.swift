//
//  EarlyVotingViewController.swift
//  voiceURvote
//
//  Created by Kasey Sexton on 8/18/22.
//

import UIKit



class EarlyVotingViewController: UIViewController {
    
    @IBOutlet weak var earlyStateLabel: UITextField!
    
    @IBOutlet weak var earlyVotingLabel: UILabel!
    
    let earlyVoting = [
    "Alabama does not have early voting",
    "• Early voting starts 29 days before Election Day. Varies by county. Voters should contact their county elections office to see if they offer early voting. \n• Early voting ends the day before Election Day. Varies by county. Voters should contact their county elections office to see if they offer early voting.",
    "• Early voting starts 10 days before the General Election. \n• Early voting ends 2 days before the General Election.",
    "• Early voting starts 10 days before the General Election. \n• Early voting ends 2 days before the General Election.",
    "• For primary elections, early voting starts the Thursday before Election Day. For general elections, Wednesday before Election Day. \n• Early voting ends at 2pm the Saturday before Election Day."]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func showEarlyVotingButton(_ sender: Any) {
        
        earlyVotingLabel.frame = CGRect(x: 20,y: 174,width: 374,height: 647)
        earlyVotingLabel.numberOfLines = 0

        earlyVotingLabel.sizeToFit()
      
        
    
    if earlyStateLabel.text == "Alabama" {

        earlyVotingLabel.text = earlyVoting[0]

        } else if earlyStateLabel.text == "California" {

            earlyVotingLabel.text = earlyVoting[1]

        } else if earlyStateLabel.text == "New Jersey" {

            earlyVotingLabel.text = earlyVoting[2]

        } else if earlyStateLabel.text == "New York" {

            earlyVotingLabel.text = earlyVoting[3]

        } else if earlyStateLabel.text == "Oklahoma" {

            earlyVotingLabel.text = earlyVoting[4]

        } else {

            earlyVotingLabel.text = "work in progress"

        }
        
        
        
    }
    
    
    

}
