//
//  RightHotCuesViewController.swift
//  DjApplication
//
//  Created by Anand Jain on 7/14/19.
//  Copyright © 2019 Arihant Jain. All rights reserved.
//

import UIKit


//Button pressed twice variables
var greenCurrentTime = 0.0
var greenButton = false



class RightHotCuesViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    //Removes popup this is connected to four invisible buttons
    @IBAction func closePopUp(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func greenHotCue(_ sender: Any) {
        if (greenButton == false) {
            greenCurrentTime = trackRight.currentTime
            print(greenCurrentTime)
            print(greenButton)
            greenButton = true
        }
        else {
//            trackRight.prepareToPlay()
//            trackRight.play(atTime: 0.0)
//            trackRight.play(atTime: greenCurrentTime)
//            trackRight.play()
            trackRight.stop()
            trackRight.currentTime = greenCurrentTime
            trackRight.play()
            print(greenCurrentTime)
            print(greenButton)
        }
    }
    
}
