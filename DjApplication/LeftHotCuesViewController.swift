//
//  LeftHotCuesViewController.swift
//  DjApplication
//
//  Created by Anand Jain on 7/14/19.
//  Copyright © 2019 Arihant Jain. All rights reserved.
//

import UIKit

//Button pressed twice variables
var greenCurrentTimeLeft = 0.0
var greenButtonLeft = false
var blueCurrentTimeLeft = 0.0
var blueButtonLeft = false
var pinkCurrentTimeLeft = 0.0
var pinkButtonLeft = false
var yellowCurrentTimeLeft = 0.0
var yellowButtonLeft = false
var cuePressedLeft = true

//Resets the HotCues so that the color change works
func resetHotCuesLeft() {
    greenButtonLeft = false
    blueButtonLeft = false
    pinkButtonLeft = false
    yellowButtonLeft = false
}
class LeftHotCuesViewController: UIViewController {
    
    var hotCuesColorTimerLeft: Timer?

    //Used to change colors for hot cues when pressed
    @IBOutlet var blueButtonColor: UIButton!
    @IBOutlet var yellowButtonColor: UIButton!
    @IBOutlet var pinkButtonColor: UIButton!
    @IBOutlet var greenButtonColor: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        //Makes sure the pressed down buttons retain color
        hotCuesColorTimerLeft = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(LeftHotCuesViewController.setImage), userInfo: nil, repeats: true)
    }
    

    @IBAction func greenHotCue(_ sender: Any) {
        if greenButtonLeft == false {
            greenCurrentTimeLeft = trackLeft.currentTime
            greenButtonLeft = true
            greenButtonColor.setImage(UIImage(named: "HotCueGreenPressed"), for: .normal)
        } else {
            trackLeft.currentTime = greenCurrentTimeLeft
            trackLeft.play()
        }
    }
    
    @IBAction func blueHotCue(_ sender: Any) {
        if blueButtonLeft == false {
            blueCurrentTimeLeft = trackLeft.currentTime
            blueButtonLeft = true
            blueButtonColor.setImage(UIImage(named: "HotCueBluePressed"), for: .normal)
        } else {
            trackLeft.currentTime = blueCurrentTimeLeft
            trackLeft.play()
        }
    }
    
    @IBAction func pinkHotCue(_ sender: Any) {
        if pinkButtonLeft == false {
            pinkCurrentTimeLeft = trackLeft.currentTime
            pinkButtonLeft = true
            pinkButtonColor.setImage(UIImage(named: "HotCuePinkPressed"), for: .normal)
        } else {
            trackLeft.currentTime = pinkCurrentTimeLeft
            trackLeft.play()
        }
    }
    
    @IBAction func yellowHotCue(_ sender: Any) {
        if yellowButtonLeft == false {
            yellowCurrentTimeLeft = trackLeft.currentTime
            yellowButtonLeft = true
            yellowButtonColor.setImage(UIImage(named: "HotCueYellowPressed"), for: .normal)
        } else {
            trackLeft.currentTime = yellowCurrentTimeLeft
            trackLeft.play()
        }
    }
    
    //Closes popup
    @IBAction func closePopUp(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        }
    
    //Makes sure the background image retains color
    @objc func setImage() {
        if (greenButtonLeft == true) {
            greenButtonColor.setImage(UIImage(named: "HotCueGreenPressed"), for: .normal)
        }
        if (blueButtonLeft == true) {
            blueButtonColor.setImage(UIImage(named: "HotCueBluePressed"), for: .normal)
        }
        if (pinkButtonLeft == true) {
            pinkButtonColor.setImage(UIImage(named: "HotCuePinkPressed"), for: .normal)
        }
        if (yellowButtonLeft == true) {
            yellowButtonColor.setImage(UIImage(named: "HotCueYellowPressed"), for: .normal)
        }
    }
    }
    
    

