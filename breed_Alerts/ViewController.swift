//
//  ViewController.swift
//  breed_Alerts
//
//  Created by Brendan Reed on 2/26/20.
//  Copyright © 2020 Brendan Reed. All rights reserved.
//

import UIKit
import AudioToolbox

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func displayAlert(_ sender: Any) {
        
        // Set up the alert
        let alert = UIAlertController(title: "Important Update", message: "Eye ham thug ray test.", preferredStyle: .alert)
        
        // Add the action
        alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .`default`, handler: { _ in}))
        
        // Display the alert
        self.present(alert, animated: true, completion: nil)
    }

    @IBAction func playMedia3(_ sender: Any) {
         
     // Play wav file
    var soundID: SystemSoundID = 3
    let soundFile:String=Bundle.main.path(forResource:"alert3",ofType: "mp3")!
    let soundURL: NSURL = NSURL(fileURLWithPath: soundFile)
    AudioServicesCreateSystemSoundID(soundURL, &soundID)
    AudioServicesPlaySystemSound(soundID)
    
}

}
