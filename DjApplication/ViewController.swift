//
//  ViewController.swift
//  DjApplication
//
//  Created by Anand Jain on 7/2/19.
//  Copyright © 2019 Arihant Jain. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet var WaveformSlider: UISlider!
    @IBOutlet var BPMLabel: UILabel!
    @IBOutlet var TrackRightLabel: UILabel!
    @IBOutlet var ImageRightLabel: UIImageView!
    @IBOutlet var RightVinyl: UIImageView!
    @IBOutlet var RightWaveform: UIImageView!
    @IBOutlet var TrackRightSlider: DesignableSlider!{
        didSet {
            //Makes the TrackRightSlider verticle
            TrackRightSlider.transform = CGAffineTransform(rotationAngle: CGFloat(-Double.pi / 2))
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Gives trackRight an empty audio file to start with
        do {
            trackRight = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "emptyaudio", ofType: "mp3")!))
            trackRight.prepareToPlay() }
        catch {
            print("error")
        }
        
        //Loads right track data onto mainVC, Notification Catcher
        NotificationCenter.default.addObserver(forName: .loadRightTrackData, object: nil, queue: OperationQueue.main) { (notification) in
            let SongSelectorVC = notification.object as! RightSongSelectionViewController
            self.BPMLabel.text = BPMTrackRight
            self.TrackRightLabel.text = songNameTrackRight
            self.ImageRightLabel.image = UIImage(named: songImage)
            self.RightWaveform.image = UIImage(named: waveformImage)
            self.WaveformSlider.maximumValue = Float(trackRight.duration)
            self.WaveformSlider.value = 0
            var timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: "updateWaveformSlider", userInfo: nil, repeats: true)


        }
        
        //Sets attributes for the WaveformSlider
    }
    
    //Plays and pauses the trackRight song
    @IBAction func playPause(_ sender: Any) {
 
        if (trackRight.isPlaying) {
            trackRight.pause()
            RightVinyl.stopRotating()
            ImageRightLabel.stopRotating()
            } else {
            trackRight.play()
            RightVinyl.startRotating()
            ImageRightLabel.startRotating()
            print("test")
        }
    }
    
    
    //Restarts the trackRight song but does not play it
    @IBAction func cueButton(_ sender: Any) {
        RightVinyl.stopRotating()
        ImageRightLabel.stopRotating()
        trackRight.stop()
        trackRight.currentTime = 0
        trackRight.pause()
    }
    
    //Controls the volume of trackRight with the slider
    @IBAction func controlTrackRightVolume(_ sender: Any) {
        trackRight.volume = TrackRightSlider.value
    }
    
    @IBAction func audioSlider(_ sender: Any) {
       
        //trackRight.stop()
        trackRight.currentTime = TimeInterval(WaveformSlider.value)
        trackRight.prepareToPlay()
        trackRight.play()
    }
    
    //Makes sure that the waveform slider continuously moves
    func updateWaveformSlider() {
        WaveformSlider.value = Float(trackRight.currentTime)
        NSLog("Hi")
    }
    
}

