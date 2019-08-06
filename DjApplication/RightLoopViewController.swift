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
    
    var timer: Timer?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    //Removes popup this is connected to four invisible buttons
    @IBAction func closePopUp(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    //inButton
    @IBAction func inButton(_ sender: Any) {
        if inButtonPressed == false {
            InLoopTime = trackRight.currentTime
            inButtonPressed = true;
            print("INLOOPTIME:" , InLoopTime)
        }
    }
    
    //stopButton
    @IBAction func exitButton(_ sender: Any) {
        timer?.invalidate()
        inButtonPressed = false
        outButtonPressed = false
    }
    
    //outButton
    @IBAction func outButton(_ sender: Any) {
    
        if outButtonPressed == false {
                OutLoopTime = trackRight.currentTime
            outButtonPressed = true
                print("OUTLOOPTIME:" , OutLoopTime)
                print("you hit outButton")
            }
        //Calls the repeatLoop function every .00001 sec
        timer = Timer.scheduledTimer(timeInterval: 0.00001, target: self, selector: #selector(RightLoopViewController.repeatLoop), userInfo: nil, repeats: true)
    }
    
    //Repeats the loop set by the user
    @objc func repeatLoop() {
            if (trackRight.currentTime > OutLoopTime) {
                trackRight.stop()
                trackRight.currentTime = InLoopTime
                trackRight.prepareToPlay()
                trackRight.play()
                
                print("IT WORKED")
                
        }
    }
    
    
    
}

