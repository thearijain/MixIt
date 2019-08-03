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
    
    @IBAction func outButton(_ sender: Any) {
        if outButtonPressed == false {
            OutLoopTime = trackRight.currentTime
            print("OUTLOOPTIME:" , OutLoopTime)
        }
        
        
        //
//        while ((outButtonPressed == false) && (trackRight.currentTime != InLoopTime)) {
//            trackRight.stop()
//            trackRight.currentTime = InLoopTime
//            trackRight.prepareToPlay()
//            trackRight.play()
//            if (trackRight.currentTime == OutLoopTime) {
//                trackRight.stop()
//                trackRight.currentTime = InLoopTime
//                trackRight.prepareToPlay()
//                trackRight.play()
//            }
//        }
        //
//        repeat {
//            trackRight.stop()
//            trackRight.currentTime = InLoopTime
//            trackRight.prepareToPlay()
//            trackRight.play()
////            if (trackRight.currentTime == OutLoopTime) {
////            }
//        } while (trackRight.currentTime == OutLoopTime)
        
        while (outButtonPressed == false) {
         
            loopcount = loopcount + 1

            
            if (trackRight.currentTime > OutLoopTime && loopcount >= 1) {
                trackRight.stop()
                trackRight.currentTime = InLoopTime
                trackRight.prepareToPlay()
                trackRight.play()
                
                print("IT WORKED")
            }
            
            if (outButtonPressed == true) {
                break
            }
            
            
        }
    }
    
    @IBAction func exitsWhileLoop(_ sender: Any) {
        outButtonPressed = true
    }
    
    
    
    
    
    
}

