//
//  ViewController.swift
//  DjApplication
//
//  Created by Anand Jain on 7/2/19.
//  Copyright © 2019 Arihant Jain. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet var BPMLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        BPMLabel.text = BPMTrackRight
    }
    
    //Plays and pauses the trackRight song
    @IBAction func playPause(_ sender: Any) {
        if trackRight.isPlaying {
            trackRight.pause()
        } else {
            trackRight.play()
        }
    }
    
    //Restarts the trackRight song but does not play it
    @IBAction func cueButton(_ sender: Any) {
        trackRight.stop()
        trackRight.currentTime = 0
        trackRight.pause()
    }

    //Thinking outloud, make a function that changes the label, call this function inside the song selector buttons
    func updateBPM() {
        BPMLabel.text = "100" //Crashes here because it finds nil
    }
}

