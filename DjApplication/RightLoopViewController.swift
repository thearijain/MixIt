//
//  RightLoopViewController.swift
//  DjApplication
//
//  Created by Komal Shrivastava on 7/17/19.
//  Copyright © 2019 Arihant Jain. All rights reserved.
//

import UIKit

var InLoopTime = 0.0
var OutLoopTime = 0.0
var inButtonPressed = false
var outButtonPressed = false

class RightLoopViewController: UIViewController {
   
    var loopTimer: Timer?
    var loopColorTimer: Timer?
    
    @IBOutlet var inButtonColor: UIButton!
    @IBOutlet var outButtonColor: UIButton!
    @IBOutlet var stopButtonColor: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Makes sure the in and out buttons retain color
        loopColorTimer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(RightLoopViewController.setImage) , userInfo: nil, repeats: true)
    }
    
    //Removes popup this is connected to four invisible buttons
    @IBAction func closePopUp(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    //inButton
    @IBAction func inButton(_ sender: Any) {
        if (inButtonPressed == false && outButtonPressed == false) {
            InLoopTime = trackRight.currentTime
            inButtonPressed = true;
            inButtonColor.setImage(UIImage(named: "IN-PRESSED"), for: .normal)
        }
    }
    
    //stopButton
    @IBAction func exitButton(_ sender: Any) {
        if (outButtonPressed == true && inButtonPressed == true) {
        loopTimer?.invalidate()
        inButtonPressed = false
        outButtonPressed = false
        inButtonColor.setImage(UIImage(named: "IN-NEW"), for: .normal)
        outButtonColor.setImage(UIImage(named: "OUT-NEW"), for: .normal)
        }
    }
    
    //outButton
    @IBAction func outButton(_ sender: Any) {
        if (outButtonPressed == false && inButtonPressed == true) {
            OutLoopTime = trackRight.currentTime
            outButtonPressed = true
            outButtonColor.setImage(UIImage(named: "OUT-PRESSED"), for: .normal)
        }
        //Calls the repeatLoop function every .00001 sec
        loopTimer = Timer.scheduledTimer(timeInterval: 0.00001, target: self, selector: #selector(RightLoopViewController.repeatLoop), userInfo: nil, repeats: true)
    }
    
    //Repeats the loop set by the user
    @objc func repeatLoop() {
        if (trackRight.currentTime >= OutLoopTime && outButtonPressed == true && inButtonPressed == true) {
                trackRight.stop()
                trackRight.currentTime = InLoopTime
                trackRight.prepareToPlay()
                trackRight.play()
        }
    }
    
    //Makes sure the background image retains color
    @objc func setImage() {
        if (inButtonPressed == true) {
            inButtonColor.setImage(UIImage(named: "IN-PRESSED"), for: .normal)
        }
        if (outButtonPressed == true) {
            outButtonColor.setImage(UIImage(named: "OUT-PRESSED"), for: .normal)
        }
    }
}

