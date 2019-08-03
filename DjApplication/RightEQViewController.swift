//
//  RightEQViewController.swift
//  DjApplication
//
//  Created by Komal Shrivastava on 7/17/19.
//  Copyright © 2019 Arihant Jain. All rights reserved.
//

import UIKit
import AVFoundation

class RightEQViewController: UIViewController {
    @IBOutlet var HiSlider: DesignableSlider!{
        didSet {
            //Makes the HiSlider verticle
            HiSlider.transform = CGAffineTransform(rotationAngle: CGFloat(-Double.pi / 2))
        }
    }
    
    
    
    
    var audioEngine: AVAudioEngine = AVAudioEngine()
    var equalizer: AVAudioUnitEQ!
    var audioPlayerNode: AVAudioPlayerNode = AVAudioPlayerNode()
    var audioFile: AVAudioFile!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        // in viewDidLoad():
        equalizer = AVAudioUnitEQ(numberOfBands: 5)
        audioEngine.attach(audioPlayerNode)
        audioEngine.attach(equalizer)
        let bands = equalizer.bands
        let freqs = [60, 230, 910, 4000, 14000]
        audioEngine.connect(audioPlayerNode, to: equalizer, format: nil)
        audioEngine.connect(equalizer, to: audioEngine.outputNode, format: nil)
        for i in 0...(bands.count - 1) {
            bands[i].frequency  = Float(freqs[i])
            bands[i].bypass     = false
            bands[i].filterType = .parametric
        }
        
        bands[0].gain = 0
        bands[0].filterType = .parametric
        bands[1].gain = 0
        bands[1].filterType = .parametric
        bands[2].gain = 0
        bands[2].filterType = .parametric
        bands[3].gain = 60
        bands[3].filterType = .parametric
        bands[4].gain = 0
        bands[4].filterType = .parametric
        
        do {
            if let filepath = Bundle.main.path(forResource: "Forbidden Voices", ofType: "mp3") {
                let filepathURL = NSURL.fileURL(withPath: filepath)
                audioFile = try AVAudioFile(forReading: filepathURL)
                audioEngine.prepare()
                try audioEngine.start()
                audioPlayerNode.scheduleFile(audioFile, at: nil, completionHandler: nil)
                audioPlayerNode.play()
            }
        } catch _ {}

    }
    
    //Removes popup this is connected to four invisible buttons
    @IBAction func closePopUp(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    
}
