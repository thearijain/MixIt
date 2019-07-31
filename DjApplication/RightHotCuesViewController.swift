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
var blueCurrentTime = 0.0
var blueButton = false
var pinkCurrentTime = 0.0
var pinkButton = false
var yellowCurrentTime = 0.0
var yellowButton = false
var cuePressed = true

//Resets the HotCues so that the color change works
func resetHotCues() {
    greenButton = false
    blueButton = false
    pinkButton = false
    yellowButton = false
}

class RightHotCuesViewController: UIViewController {
    
    //Used to change colors for hot cues when pressed
    @IBOutlet var greenButtonColor: UIButton!
    @IBOutlet var blueButtonColor: UIButton!
    @IBOutlet var pinkButtonColor: UIButton!
    @IBOutlet var yellowButtonColor: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    //Removes popup this is connected to four invisible buttons
    @IBAction func closePopUp(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    //loads green hot cue then plays song from recorded time stamp
    @IBAction func greenHotCue(_ sender: Any) {
        if greenButton == false {
            greenCurrentTime = trackRight.currentTime
            greenButton = true
            greenButtonColor.setBackgroundImage(UIImage(named: "HotCueGreenPressed"), for: .normal)
        }
        else {
            trackRight.currentTime = greenCurrentTime
            trackRight.play()
        }
    }
    
    //loads blue hot cue then plays song from recorded time stamp
    @IBAction func blueHotCue(_ sender: Any) {
        if blueButton == false {
            blueCurrentTime = trackRight.currentTime
            blueButton = true
            blueButtonColor.setBackgroundImage(UIImage(named: "HotCueBluePressed"), for: .normal)
        }
        else {
            trackRight.currentTime = blueCurrentTime
            trackRight.play()
        }
    }

    //loads pink hot cue then plays song from recorded time stamp
    @IBAction func pinkHotCue(_ sender: Any) {
        if pinkButton == false {
            pinkCurrentTime = trackRight.currentTime
            pinkButton = true
            pinkButtonColor.setBackgroundImage(UIImage(named: "HotCuePinkPressed"), for: .normal)
        }
        else {
            trackRight.stop()
            trackRight.currentTime = pinkCurrentTime
            trackRight.play()
        }
    }

    //loads yellow hot cue then plays song from recorded time stamp
    @IBAction func yellowHotCue(_ sender: Any) {
        if yellowButton == false {
            yellowCurrentTime = trackRight.currentTime
            yellowButton = true
            yellowButtonColor.setBackgroundImage(UIImage(named: "HotCueYellowPressed"), for: .normal)
        }
        else {
            trackRight.stop()
            trackRight.currentTime = yellowCurrentTime
            trackRight.play()
        }
    }
}
