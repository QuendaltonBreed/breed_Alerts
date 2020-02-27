//
//  ViewController2.swift
//  breed_Alerts
//
//  Created by Brendan Reed on 2/26/20.
//  Copyright © 2020 Brendan Reed. All rights reserved.
//

import UIKit
import AudioToolbox

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func displayAlert(_ sender: Any) {
        
        // Set up the alert
        let alert = UIAlertController(title: "Lego Yoda Says:", message: "Ow.", preferredStyle: .alert)
        
        // Add the action
        alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .`default`, handler: { _ in}))
        
        // Display the alert
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func playMedia(_ sender: Any) {
         
     // Play wav file
    var soundID: SystemSoundID = 0
    let soundFile:String=Bundle.main.path(forResource:"alert1",ofType: "mp3")!
    let soundURL: NSURL = NSURL(fileURLWithPath: soundFile)
    AudioServicesCreateSystemSoundID(soundURL, &soundID)
    AudioServicesPlaySystemSound(soundID)
    
         
         
         
     // Vibrate phone
     AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
         
     }
    
    @IBAction func displayAlertHan(_ sender: Any) {
        
        // Set up the alert
        let alert = UIAlertController(title: "Who shot first?", message: "Han", preferredStyle: .alert)
        
        // Add the action
        alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action1"), style: .`default`, handler: { _ in}))
        
        // Display the alert
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func playMedia2(_ sender: Any) {
         
     // Play wav file
    var soundID: SystemSoundID = 2
    let soundFile:String=Bundle.main.path(forResource:"alert2",ofType: "mp3")!
    let soundURL: NSURL = NSURL(fileURLWithPath: soundFile)
    AudioServicesCreateSystemSoundID(soundURL, &soundID)
    AudioServicesPlaySystemSound(soundID)
    
         
         
         
     // Vibrate phone
     AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
         
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
