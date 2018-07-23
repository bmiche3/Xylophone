//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AudioToolbox

class ViewController: UIViewController{
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        if let soundUrl = Bundle.main.url(forResource: "note"+String(sender.tag), withExtension: "wav"){
        var mySound: SystemSoundID = 0
        AudioServicesCreateSystemSoundID(soundUrl as CFURL, &mySound)
        AudioServicesPlaySystemSound(mySound)
    }
    }
    
  

}

