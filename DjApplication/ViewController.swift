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
    @IBOutlet var TrackRightLabel: UILabel!
    @IBOutlet var ImageRightLabel: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Loads right track data onto mainVC
        NotificationCenter.default.addObserver(forName: .loadRightTrackData, object: nil, queue: OperationQueue.main) { (notification) in
            let SongSelectorVC = notification.object as! RightSongSelectionViewController
            self.BPMLabel.text = BPMTrackRight
            self.TrackRightLabel.text = songNameTrackRight
            self.ImageRightLabel.image = UIImage(named: songImage)
        }
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


}

