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
    
    //Crossfader
    @IBOutlet var CrossfaderSlider: DesignableSlider!
    
    
    //Left Side Variables
    @IBOutlet var TrackLeftLabel: UILabel!
    @IBOutlet var BPMLabelLeft: UILabel!
    @IBOutlet var TrackLeftSlider: DesignableSlider!{
        didSet {
            //Makes the TrackLeftSlider verticle
            TrackLeftSlider.transform = CGAffineTransform(rotationAngle: CGFloat(-Double.pi / 2))
        }
    }
    @IBOutlet var ImageLeftLabel: UIImageView!
    @IBOutlet var LeftWaveform: UIImageView!
    @IBOutlet var WaveformSliderLeft: UISlider!
    @IBOutlet var LeftVinyl: UIImageView!
    
    
    //Right Side Variables
    @IBOutlet var WaveformSliderRight: UISlider!
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
        
        //Right waveform slider
        WaveformSliderRight.maximumValue = Float(trackRight.duration)
        WaveformSliderRight.value = 0
        
        //Left waveform slider
        //WaveformSliderLeft.maximumValue = Float(trackLeft.duration)
        //WaveformSliderLeft.value = 0

        //Loads right track data onto mainVC, Notification Catcher
        NotificationCenter.default.addObserver(forName: .loadRightTrackData, object: nil, queue: OperationQueue.main) { (notification) in
            //let SongSelectorVC = notification.object as! RightSongSelectionViewController
            self.BPMLabel.text = BPMTrackRight
            self.TrackRightLabel.text = songNameTrackRight
            self.ImageRightLabel.image = UIImage(named: songImageRight)
            self.RightWaveform.image = UIImage(named: waveformImageRight)
            self.WaveformSliderRight.maximumValue = Float(trackRight.duration)
            self.WaveformSliderRight.value = 0
            trackRight.volume = 0.5
        }
        
        //starts vinyl spinning
        NotificationCenter.default.addObserver(forName: .startRotating, object: nil, queue: OperationQueue.main) { (notification) in
            self.RightVinyl.startRotating()
            self.ImageRightLabel.startRotating()
            self.LeftVinyl.startRotating()
            self.ImageLeftLabel.startRotating()
        }
        
        //Loads left track data onto mainVC
        NotificationCenter.default.addObserver(forName: .loadLeftTrackData, object: nil, queue: OperationQueue.main) { (notification) in
            self.BPMLabelLeft.text = BPMTrackLeft
            self.TrackLeftLabel.text = songNameTrackLeft
            trackLeft.volume = 0.5
            self.ImageLeftLabel.image = UIImage(named: songImageLeft)
            self.LeftWaveform.image = UIImage(named: waveformImageLeft)
//            self.WaveformSliderLeft.maximumValue = Float(trackLeft.duration)
//            self.WaveformSliderLeft.value = 0
        }
        
        //Sets attributes for the WaveformSliderRight
        WaveformSliderRight.setThumbImage(UIImage(named: "WaveformSlider"), for: .normal)
        
        //Sets attributes for the WaveformSliderLeft
        //WaveformSliderLeft.setThumbImage(UIImage(named: "WaveformSlider"), for: .normal)

        //This is supposed to make the slider move as the song is playing, breaks build when outside loop
        //Right waveform slider
        Timer.scheduledTimer(timeInterval: 0.00001, target: self, selector: #selector(ViewController.updateWaveformSliderRight) , userInfo: nil, repeats: true)
        //Left waveform slider
//        Timer.scheduledTimer(timeInterval: 0.00001, target: self, selector: #selector(ViewController.updateWaveformSliderLeft) , userInfo: nil, repeats: true)
    }
    
    //Plays and pauses the trackRight song
    @IBAction func playPause(_ sender: Any) {
        if (trackRight.isPlaying) {
            trackRight.pause()
            RightVinyl.pauseRotating()
            ImageRightLabel.pauseRotating()
        } else {
            trackRight.play()
            RightVinyl.startRotating()
            ImageRightLabel.startRotating()
        }
    }
    
    //Plays and pauses the trackLeft song
    @IBAction func playPauseTrackLeft(_ sender: Any) {
        if (trackLeft.isPlaying) {
            trackLeft.pause()
            LeftVinyl.stopRotating()
            ImageLeftLabel.stopRotating()
        } else {
            trackLeft.play()
            LeftVinyl.startRotating()
            ImageLeftLabel.startRotating()
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
    
    //Restarts the trackLeft song but does not play it
    @IBAction func cueButtonLeft(_ sender: Any) {
        LeftVinyl.stopRotating()
        ImageLeftLabel.stopRotating()
        trackLeft.stop()
        trackLeft.currentTime = 0
        trackLeft.pause()
    }
    
    
    //Controls the volume of trackRight with the slider
    @IBAction func controlTrackRightVolume(_ sender: Any) {
        trackRight.volume = TrackRightSlider.value
    }
    
    //Controls the volume of trackLeft with the slider
    @IBAction func controlTrackLeftVolume(_ sender: Any) {
        trackLeft.volume = TrackLeftSlider.value
    }
    
    //Crossfader Volume Control
    @IBAction func crossfaderVolume(_ sender: Any) {
        trackRight.volume = CrossfaderSlider.value
        trackLeft.volume = 1 - CrossfaderSlider.value
    }
    
    @IBAction func audioSlider(_ sender: Any) {
        if (trackRight.isPlaying == true) {
            trackRight.currentTime = TimeInterval(WaveformSliderRight.value)
            trackRight.prepareToPlay()
            trackRight.play()
        } else {
            trackRight.currentTime = TimeInterval(WaveformSliderRight.value)
            trackRight.prepareToPlay()
        }
    }
    
    //Makes sure that the right waveform slider continuously moves
    @objc func updateWaveformSliderRight() {
        WaveformSliderRight.value = Float(trackRight.currentTime)
    }
    
    //Makes sure that the left waveform slider continuously moves
//    @objc func updateWaveformSliderLeft() {
//        WaveformSliderLeft.value = Float(trackLeft.currentTime)
//    }
    
}

