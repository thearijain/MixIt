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
    
    var hotCuesColortimer: Timer?
    
    //Used to change colors for hot cues when pressed
    @IBOutlet var blueButtonColor: UIButton!
    @IBOutlet var pinkButtonColor: UIButton!
    @IBOutlet var yellowButtonColor: UIButton!
    @IBOutlet var greenButtonColor: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
        //Makes sure the pressed down buttons retain color
        hotCuesColortimer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(RightHotCuesViewController.setImage), userInfo: nil, repeats: true)
//
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
            greenButtonColor.setImage(UIImage(named: "HotCueGreenPressed"), for: .normal)
        } else {
            trackRight.currentTime = greenCurrentTime
            trackRight.play()
        }
    }
    

    //loads blue hot cue then plays song from recorded time stamp
    @IBAction func blueHotCue(_ sender: Any) {
        if blueButton == false {
            blueCurrentTime = trackRight.currentTime
            blueButton = true
            blueButtonColor.setImage(UIImage(named: "HotCueBluePressed"), for: .normal)
        } else {
            trackRight.currentTime = blueCurrentTime
            trackRight.play()
        }
    }

    //loads pink hot cue then plays song from recorded time stamp
    @IBAction func pinkHotCue(_ sender: Any) {
    if pinkButton == false {
            pinkCurrentTime = trackRight.currentTime
            pinkButton = true
            pinkButtonColor.setImage(UIImage(named: "HotCuePinkPressed"), for: .normal)
        } else {
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
            yellowButtonColor.setImage(UIImage(named: "HotCueYellowPressed"), for: .normal)
        } else {
            trackRight.stop()
            trackRight.currentTime = yellowCurrentTime
            trackRight.play()
        }
    }
    
    //Makes sure the background image retains color
    @objc func setImage() {
        if (greenButton == true) {
            greenButtonColor.setImage(UIImage(named: "HotCueGreenPressed"), for: .normal)
        }
        if (blueButton == true) {
            blueButtonColor.setImage(UIImage(named: "HotCueBluePressed"), for: .normal)
        }
        if (pinkButton == true) {
            pinkButtonColor.setImage(UIImage(named: "HotCuePinkPressed"), for: .normal)
        }
        if (yellowButton == true) {
            yellowButtonColor.setImage(UIImage(named: "HotCueYellowPressed"), for: .normal)
        }
    }
}
