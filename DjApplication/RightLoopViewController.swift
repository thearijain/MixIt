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
    
    
    @IBOutlet var exitLoop: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    //Removes popup this is connected to four invisible buttons
    @IBAction func closePopUp(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    //Attempt at doing the In and Out Loop Buttons
    @IBAction func inButton(_ sender: Any) {
        if inButtonPressed == false {
            InLoopTime = trackRight.currentTime
            inButtonPressed = true;
        }
    }
    
    
   
    var timer: Timer?
    
    @IBAction func outButton(_ sender: Any) {
    
        if outButtonPressed == false {
                OutLoopTime = trackRight.currentTime
                print("OUTLOOPTIME:" , OutLoopTime)
            }
        
        
        timer = Timer.scheduledTimer(timeInterval: 0.3, target: self, selector: #selector(RightLoopViewController.repeatLoop), userInfo: nil, repeats: true)
    }
        
        //while (outButtonOutlet. == true) {
         
            //loopcount = loopcount + 1

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

