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
var loopcount = 0
class RightLoopViewController: UIViewController {
    
    var loopTimer: Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet var inButtonColor: UIButton!
    @IBOutlet var outButtonColor: UIButton!
    @IBOutlet var stopButtonColor: UIButton!
    
    
    //Removes popup this is connected to four invisible buttons
    @IBAction func closePopUp(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    //inButton
    @IBAction func inButton(_ sender: Any) {
        if inButtonPressed == false {
            InLoopTime = trackRight.currentTime
            inButtonPressed = true;
            inButtonColor.setBackgroundImage(UIImage(named: "IN-PRESSED"), for: .normal)
        }
    }
    
    //stopButton
    @IBAction func exitButton(_ sender: Any) {
        loopTimer?.invalidate()
        inButtonPressed = false
        outButtonPressed = false
        inButtonColor.setBackgroundImage(UIImage(named: "IN-NEW"), for: .normal)
        outButtonColor.setBackgroundImage(UIImage(named: "OUT-NEW"), for: .normal)
    }
    
    //outButton
    @IBAction func outButton(_ sender: Any) {
    
        if outButtonPressed == false {
            OutLoopTime = trackRight.currentTime
            outButtonPressed = true
            outButtonColor.setBackgroundImage(UIImage(named: "OUT-PRESSED"), for: .normal)
        }
        //Calls the repeatLoop function every .00001 sec
        loopTimer = Timer.scheduledTimer(timeInterval: 0.00001, target: self, selector: #selector(RightLoopViewController.repeatLoop), userInfo: nil, repeats: true)
    }
    
    //Repeats the loop set by the user
    @objc func repeatLoop() {
            if (trackRight.currentTime > OutLoopTime) {
                trackRight.stop()
                trackRight.currentTime = InLoopTime
                trackRight.prepareToPlay()
                trackRight.play()
        }
    }
}

