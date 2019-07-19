//
//  RightSongSelectionViewController.swift
//  DjApplication
//
//  Created by Anand Jain on 7/15/19.
//  Copyright © 2019 Arihant Jain. All rights reserved.
//

import UIKit
import AVFoundation

//Global variables
var trackRight = AVAudioPlayer()
var audioSessionRight = AVAudioSession.sharedInstance()
var songNameTrackRight = ""
var BPMTrackRight = ""


class RightSongSelectionViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    //Loads the song Forbidden Voices x Martin Garrix
    @IBAction func loadForbiddenVoices(_ sender: Any) {
        do {
            trackRight = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "Forbidden Voices", ofType: "mp3")!))
            trackRight.prepareToPlay()
            //Allows the song to play in the background
            do {
                try audioSessionRight.setCategory(AVAudioSession.Category.playback)
            } catch {
            }
        }
        catch {
            print("there has been an error")
        }
        //Updates BPM and closes overlay
        BPMTrackRight = "128"
        songNameTrackRight = "Forbidden Voices x Martin Garrix"
        NotificationCenter.default.post(name: Notification.Name.updateBPM, object: self)
        NotificationCenter.default.post(name: Notification.Name.updateTrack, object: self)
        dismiss(animated: true, completion: nil)
    }
    
    //Loads the song Secrets x Tiesto
    @IBAction func loadSecrets(_ sender: Any) {
        do {
            trackRight = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "Secrets", ofType: "mp3")!))
            trackRight.prepareToPlay()
            //Allows the song to play in the background
            do {
                try audioSessionRight.setCategory(AVAudioSession.Category.playback)
            } catch {
            }
        }
        catch {
            print("there has been an error")
        }
        //Updates BPM and closes overlay
        BPMTrackRight = "128"
        songNameTrackRight = "Secrets x Tiesto"
        NotificationCenter.default.post(name: Notification.Name.updateBPM, object: self)
        NotificationCenter.default.post(name: Notification.Name.updateTrack, object: self)
        dismiss(animated: true, completion: nil)
    }
    
    //Loads the song Pursuit of Happiness x Steve Aoki
    @IBAction func loadPursuitofHappiness(_ sender: Any) {
        do {
            trackRight = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "Pursuit of Happiness", ofType: "mp3")!))
            trackRight.prepareToPlay()
            //Allows the song to play in the background
            do {
                try audioSessionRight.setCategory(AVAudioSession.Category.playback)
            } catch {
            }
        }
        catch {
            print("there has been an error")
        }
        //Updates BPM and closes overlay
        BPMTrackRight = "120"
        songNameTrackRight = "Pursuit of Happiness x Steve Aoki"
        NotificationCenter.default.post(name: Notification.Name.updateBPM, object: self)
        NotificationCenter.default.post(name: Notification.Name.updateTrack, object: self)
        dismiss(animated: true, completion: nil)
    }
    
    //Loads the song Purple Lamborghini x Skrillex
    @IBAction func loadPurpleLamborghini(_ sender: Any) {
        do {
            trackRight = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "Purple Lamborghini", ofType: "mp3")!))
            trackRight.prepareToPlay()
            //Allows the song to play in the background
            do {
                try audioSessionRight.setCategory(AVAudioSession.Category.playback)
            } catch {
            }
        }
        catch {
            print("there has been an error")
        }
        //Updates BPM and closes overlay
        BPMTrackRight = "147"
        songNameTrackRight = "Purple Lamborghini x Skrillex"
        NotificationCenter.default.post(name: Notification.Name.updateBPM, object: self)
        NotificationCenter.default.post(name: Notification.Name.updateTrack, object: self)
        dismiss(animated: true, completion: nil)
    }
    
    //Loads the song DJ Got Us Fallin In Love Again x Usher
    @IBAction func loadDJGotUsFallinInLoveAgain(_ sender: Any) {
        do {
            trackRight = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "DJ Got Us", ofType: "mp3")!))
            trackRight.prepareToPlay()
            //Allows the song to play in the background
            do {
                try audioSessionRight.setCategory(AVAudioSession.Category.playback)
            } catch {
            }
        }
        catch {
            print("there has been an error")
        }
        //Updates BPM and closes overlay
        BPMTrackRight = "121"
        songNameTrackRight = "DJ Got Us Fallin In Love Again x Usher"
        NotificationCenter.default.post(name: Notification.Name.updateBPM, object: self)
        NotificationCenter.default.post(name: Notification.Name.updateTrack, object: self)
        dismiss(animated: true, completion: nil)
    }
    
    //Loads Sexy Bitch x David Guetta
    @IBAction func loadSexyBitch(_ sender: Any) {
        do {
            trackRight = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "Sexy Bitch", ofType: "mp3")!))
            trackRight.prepareToPlay()
            //Allows the song to play in the background
            do {
                try audioSessionRight.setCategory(AVAudioSession.Category.playback)
            } catch {
            }
        }
        catch {
            print("there has been an error")
        }
        //Updates BPM and closes overlay
        BPMTrackRight = "130"
        songNameTrackRight = "Sexy Bitch x David Guetta"
        NotificationCenter.default.post(name: Notification.Name.updateBPM, object: self)
        NotificationCenter.default.post(name: Notification.Name.updateTrack, object: self)
        dismiss(animated: true, completion: nil)
    }
    
    //Loads Febreze x Jack U
    @IBAction func loadFebreze(_ sender: Any) {
        do {
            trackRight = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "Febreze", ofType: "mp3")!))
            trackRight.prepareToPlay()
            //Allows the song to play in the background
            do {
                try audioSessionRight.setCategory(AVAudioSession.Category.playback)
            } catch {
            }
        }
        catch {
            print("there has been an error")
        }
        //Updates BPM and closes overlay
        BPMTrackRight = "150"
        songNameTrackRight = "Febreze x Jack U"
        NotificationCenter.default.post(name: Notification.Name.updateBPM, object: self)
        NotificationCenter.default.post(name: Notification.Name.updateTrack, object: self)
        dismiss(animated: true, completion: nil)
    }
    
    //Loads Yeah x Usher
    @IBAction func loadYeah(_ sender: Any) {
        do {
            trackRight = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "Yeah", ofType: "mp3")!))
            trackRight.prepareToPlay()
            //Allows the song to play in the background
            do {
                try audioSessionRight.setCategory(AVAudioSession.Category.playback)
            } catch {
            }
        }
        catch {
            print("there has been an error")
        }
        //Updates BPM and closes overlay
        BPMTrackRight = "105"
        songNameTrackRight = "Yeah x Usher"
        NotificationCenter.default.post(name: Notification.Name.updateBPM, object: self)
        NotificationCenter.default.post(name: Notification.Name.updateTrack, object: self)
        dismiss(animated: true, completion: nil)
    }
    
    //Loads Magenta Riddim x DJ Snake
    @IBAction func loadMagentaRiddim(_ sender: Any) {
        do {
            trackRight = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "Magenta Riddim", ofType: "mp3")!))
            trackRight.prepareToPlay()
            //Allows the song to play in the background
            do {
                try audioSessionRight.setCategory(AVAudioSession.Category.playback)
            } catch {
            }
        }
        catch {
            print("there has been an error")
        }
        //Updates BPM and closes overlay
        BPMTrackRight = "102"
        songNameTrackRight = "Magenta Riddim x DJ Snake"
        NotificationCenter.default.post(name: Notification.Name.updateBPM, object: self)
        NotificationCenter.default.post(name: Notification.Name.updateTrack, object: self)
        dismiss(animated: true, completion: nil)
    }
    
    //Loads Get Low x Dillion Francis
    @IBAction func loadGetLow(_ sender: Any) {
        do {
            trackRight = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "Get Low", ofType: "mp3")!))
            trackRight.prepareToPlay()
            //Allows the song to play in the background
            do {
                try audioSessionRight.setCategory(AVAudioSession.Category.playback)
            } catch {
            }
        }
        catch {
            print("there has been an error")
        }
        //Updates BPM and closes overlay
        BPMTrackRight = "101"
        songNameTrackRight = "Get Low x Dillion Francis"
        NotificationCenter.default.post(name: Notification.Name.updateBPM, object: self)
        dismiss(animated: true, completion: nil)
    }
    
    //Top right X button
    @IBAction func closePopUp(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
