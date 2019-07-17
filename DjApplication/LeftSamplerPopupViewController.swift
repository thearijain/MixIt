//
//  LeftSamplerPopupViewController.swift
//  DjApplication
//
//  Created by Anand Jain on 7/11/19.
//  Copyright © 2019 Arihant Jain. All rights reserved.
//

import UIKit
import AVFoundation

class LeftSamplerPopupViewController: UIViewController {

    var audioPlayer = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
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
    
    
    @IBAction func playAirhorn(_ sender: Any) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "mlg-airhorn", ofType: "mp3")!))
            audioPlayer.prepareToPlay()
        }
        catch {
            print("there has been an error")
        }
        audioPlayer.play()
    }
    
    
    //Closes Sampler overlay
    @IBAction func closePopUp1(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    //Closes Sampler overlay
    @IBAction func closePopUp2(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    //Closes Sampler overlay
    @IBAction func closePopUp3(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    //Closes Sampler overlay
    @IBAction func closePopUp4(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
