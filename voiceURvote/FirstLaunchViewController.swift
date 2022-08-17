//
//  FirstLaunchViewController.swift
//  voiceURvote
//
//  Created by Kasey Sexton on 8/17/22.
//

import UIKit

class FirstLaunchViewController: UIViewController {

    let defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if defaults.bool(forKey: "First Launch") == true {
            print("Second+")
            
            performSegue(withIdentifier: "moveToHomePage", sender: nil)

            
            //run code after first launch
            defaults.set(true, forKey: "First Launch")
            
        } else {
            
            print("First")
            
            //run code during first launch
            defaults.set(true, forKey: "First Launch")
        }
        
       
        
    }
    
    


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
