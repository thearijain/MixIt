//
//  SamplerPopupViewController.swift
//  DjApplication
//
//  Created by Anand Jain on 7/10/19.
//  Copyright © 2019 Arihant Jain. All rights reserved.
//

import UIKit
import AVFoundation

class SamplerPopupViewController: UIViewController {

    var audioPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
    }
    
    //Plays the ChaChing Button
    @IBAction func playChaChing(_ sender: Any) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "ka-ching", ofType: "mp3")!))
            audioPlayer.prepareToPlay()
        }
        catch {
            print("there has been an error")
        }
        audioPlayer.play()
    }
    
    
    //Plays the Airhorn from the sampler
    @IBAction func playAirHorn(_ sender: Any) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "mlg-airhorn", ofType: "mp3")!))
            audioPlayer.prepareToPlay()
        }
        catch {
            print("there has been an error")
        }
        audioPlayer.play()
    }
    
    //Plays Drake from the sampler
    @IBAction func playDrake(_ sender: Any) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "drake", ofType: "mp3")!))
            audioPlayer.prepareToPlay()
        }
        catch {
            print("there has been an error")
        }
        audioPlayer.play()
    }
    
    //Plays Skrskr from the sampler
    @IBAction func playSkrskr(_ sender: Any) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "Skrskr", ofType: "mp3")!))
            audioPlayer.prepareToPlay()
        }
        catch {
            print("there has been an error")
        }
        audioPlayer.play()
    }
    
    
    //An invisble button that allows you to click anywhere outside the sampler and return back to the main storyboard
    @IBAction func closeSamplerOverlay(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    //An invisble button that allows you to click anywhere outside the sampler and return back to the main storyboard
    @IBAction func closeSamplerOverlay2(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    //An invisble button that allows you to click anywhere outside the sampler and return back to the main storyboard
    @IBAction func closeSamplerOverlay3(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    //An invisble button that allows you to click anywhere outside the sampler and return back to the main storyboard
    @IBAction func closeSamplerOverlay4(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    
    
    
    
}
