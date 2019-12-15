//
//  LeftLoopViewController.swift
//  DjApplication
//
//  Created by Komal Shrivastava on 7/17/19.
//  Copyright © 2019 Arihant Jain. All rights reserved.
//

import UIKit

var InLoopTimeLeft = 0.0
var OutLoopTimeLeft = 0.0
var inButtonPressedLeft = false
var outButtonPressedLeft = false

class LeftLoopViewController: UIViewController {
    
    var loopTimer: Timer?
    var loopColorTimer: Timer?
    
    @IBOutlet var inButtonColor: UIButton!
    @IBOutlet var outButtonColor: UIButton!
    @IBOutlet var stopButtonColor: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Makes sure the in and out buttons retain color
        loopColorTimer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(LeftLoopViewController.setImage) , userInfo: nil, repeats: true)
    }
    
    @IBAction func inButton(_ sender: Any) {
        if (inButtonPressedLeft == false && outButtonPressedLeft == false) {
            InLoopTimeLeft = trackLeft.currentTime
            inButtonPressedLeft = true;
            inButtonColor.setImage(UIImage(named: "IN-PRESSED"), for: .normal)
        }
    }
    
    @IBAction func outButton(_ sender: Any) {
        if (outButtonPressedLeft == false && inButtonPressedLeft == true) {
            OutLoopTimeLeft = trackLeft.currentTime
            outButtonPressedLeft = true
            outButtonColor.setImage(UIImage(named: "OUT-PRESSED"), for: .normal)
        }
        //Calls the repeatLoop function every .00001 sec
        loopTimer = Timer.scheduledTimer(timeInterval: 0.00001, target: self, selector: #selector(LeftLoopViewController.repeatLoop), userInfo: nil, repeats: true)
    }
    
    @IBAction func exitButton(_ sender: Any) {
        if (outButtonPressedLeft == true && inButtonPressedLeft == true) {
            loopTimer?.invalidate()
            inButtonPressedLeft = false
            outButtonPressedLeft = false
            inButtonColor.setImage(UIImage(named: "IN-NEW"), for: .normal)
            outButtonColor.setImage(UIImage(named: "OUT-NEW"), for: .normal)
        }
    }
    
    //Repeats the loop set by the user
    @objc func repeatLoop() {
        if (trackLeft.currentTime >= OutLoopTimeLeft && outButtonPressedLeft == true && inButtonPressedLeft == true) {
            trackLeft.stop()
            trackLeft.currentTime = InLoopTimeLeft
            trackLeft.prepareToPlay()
            trackLeft.play()
        }
    }
    
    //Makes sure the background image retains color
    @objc func setImage() {
        if (inButtonPressedLeft == true) {
            inButtonColor.setImage(UIImage(named: "IN-PRESSED"), for: .normal)
        }
        if (outButtonPressedLeft == true) {
            outButtonColor.setImage(UIImage(named: "OUT-PRESSED"), for: .normal)
        }
    }
    
    //Removes popup this is connected to four invisible buttons
    @IBAction func closePopUp(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
