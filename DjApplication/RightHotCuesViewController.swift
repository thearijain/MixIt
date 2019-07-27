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
var cuePressed = false


class RightHotCuesViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    //Removes popup this is connected to four invisible buttons
    @IBAction func closePopUp(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    //loads green hot cue then plays song from recorded time stamp
    @IBAction func greenHotCue(_ sender: Any) {
        if cuePressed == false {
            if greenButton == false {
                greenCurrentTime = trackRight.currentTime
                print(greenCurrentTime)
                print(greenButton)
                greenButton = true
            }
            else {
                trackRight.stop()
                trackRight.currentTime = greenCurrentTime
                trackRight.play()
                print(greenCurrentTime)
                print(greenButton)
            }
        }
    }
    
    //used to reset the hot cue if the cue button gets pressed
    func setGreenCurrentTime(time: Double, cue: Bool){
        greenCurrentTime = time
        greenButton = false
        cuePressed = cue
    
    }
    
    //resets cuePressed if a new song is loaded
    func setCuePressed(resetCue: Bool){
        cuePressed = resetCue
    }
}
