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


class RightHotCuesViewController: UIViewController {
    
    //TEST
    @IBOutlet var greenButtonColor: UIButton!
    
    //END OF TEST
    
    
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
        if greenButton == false {
            greenCurrentTime = trackRight.currentTime
            print(greenCurrentTime)
            print(greenButton)
            greenButton = true
        }
        else {
            //trackRight.stop()
            greenButtonColor.setImage(UIImage(named:"HotCueGreenPressed")?.withRenderingMode(.alwaysTemplate), for: [])
            trackRight.currentTime = greenCurrentTime
            trackRight.play()
            print(greenCurrentTime)
            print(greenButton)
        }
    }
    
    //loads blue hot cue then plays song from recorded time stamp
    @IBAction func blueHotCue(_ sender: Any) {
        if blueButton == false {
            blueCurrentTime = trackRight.currentTime
            print(blueCurrentTime)
            print(blueButton)
            blueButton = true
        }
        else {
            trackRight.stop()
            trackRight.currentTime = blueCurrentTime
            trackRight.play()
            print(blueCurrentTime)
            print(blueButton)
        }
    }

    //loads pink hot cue then plays song from recorded time stamp
    @IBAction func pinkHotCue(_ sender: Any) {
        if pinkButton == false {
            pinkCurrentTime = trackRight.currentTime
            print(pinkCurrentTime)
            print(pinkButton)
            pinkButton = true
        }
        else {
            trackRight.stop()
            trackRight.currentTime = pinkCurrentTime
            trackRight.play()
            print(pinkCurrentTime)
            print(pinkButton)
        }
    }

    //loads yellow hot cue then plays song from recorded time stamp
    @IBAction func yellowHotCue(_ sender: Any) {
        if yellowButton == false {
            yellowCurrentTime = trackRight.currentTime
            print(yellowCurrentTime)
            print(yellowButton)
            yellowButton = true
        }
        else {
            trackRight.stop()
            trackRight.currentTime = yellowCurrentTime
            trackRight.play()
            print(yellowCurrentTime)
            print(yellowButton)
        }
}
    
//    used to reset the hot cue if the cue button gets pressed (not used atm)
//    func setGreenCurrentTime(time: Double, cue: Bool){
//        greenCurrentTime = time
//        greenButton = false
//        cuePressed = cue
//
//    }
//
//    //resets cuePressed if a new song is loaded (not used atm)
//    func setCuePressed(resetCue: Bool){
//        cuePressed = resetCue
//    }
//
//    func getCuePressed() -> Bool{
//        return cuePressed
//    }
}
