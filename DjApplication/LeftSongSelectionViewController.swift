//
//  LeftSongSelectionViewController.swift
//  DjApplication
//
//  Created by Anand Jain on 8/12/19.
//  Copyright © 2019 Arihant Jain. All rights reserved.
//

import UIKit
import AVFoundation

//Global variables
var trackLeft = AVAudioPlayer()
var audioSessionLeft = AVAudioSession.sharedInstance()
var songNameTrackLeft = ""
var BPMTrackLeft = ""
var songImageLeft = ""
var waveformImageLeft = ""


class LeftSongSelectionViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    //Loads the song Forbidden Voices x Martin Garrix
    @IBAction func loadForbiddenVoices(_ sender: Any) {
        do {
            trackLeft = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "Forbidden Voices", ofType: "mp3")!))
            trackLeft.prepareToPlay()
            //Allows the song to play in the background
            do {
                try audioSessionLeft.setCategory(AVAudioSession.Category.playback)
            } catch {
            }
        }
        catch {
            print("there has been an error")
        }
        //Loads right track data onto mainVC
        BPMTrackLeft = "128"
        songNameTrackLeft = "Forbidden Voices x Martin Garrix"
        songImageLeft = "forbiddenv"
        waveformImageLeft = "ForbiddenVWaveform"
        NotificationCenter.default.post(name: Notification.Name.loadLeftTrackData, object: self)
        dismiss(animated: true, completion: nil)
        //Resets the Hot Cues
        resetHotCuesLeft()
    }
    
    @IBAction func loadSecrets(_ sender: Any) {
        do {
            trackLeft = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "Secrets", ofType: "mp3")!))
            trackLeft.prepareToPlay()
            //Allows the song to play in the background
            do {
                try audioSessionLeft.setCategory(AVAudioSession.Category.playback)
            } catch {
            }
        }
        catch {
            print("there has been an error")
        }
        //Loads right track data onto mainVC
        BPMTrackLeft = "128"
        songNameTrackLeft = "Secrets x Tiesto"
        songImageLeft = "secrets"
        waveformImageLeft = "SecretsWaveform"
        NotificationCenter.default.post(name: Notification.Name.loadLeftTrackData, object: self)
        dismiss(animated: true, completion: nil)
        //Resets the Hot Cues
        resetHotCuesLeft()
    }
    
    @IBAction func loadPursuitOfHappiness(_ sender: Any) {
        do {
            trackLeft = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "Pursuit of Happiness", ofType: "mp3")!))
            trackLeft.prepareToPlay()
            //Allows the song to play in the background
            do {
                try audioSessionLeft.setCategory(AVAudioSession.Category.playback)
            } catch {
            }
        }
        catch {
            print("there has been an error")
        }
        //Loads right track data onto mainVC
        BPMTrackLeft = "120"
        songNameTrackLeft = "Pursuit of Happiness x Steve Aoki"
        songImageLeft = "pursuit"
        waveformImageLeft = "PursuitWaveform"
        NotificationCenter.default.post(name: Notification.Name.loadLeftTrackData, object: self)
        dismiss(animated: true, completion: nil)
        //Resets the Hot Cues
        resetHotCuesLeft()
    }
    
    @IBAction func loadPurpleLamborghini(_ sender: Any) {
        do {
            trackLeft = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "Purple Lamborghini", ofType: "mp3")!))
            trackLeft.prepareToPlay()
            //Allows the song to play in the background
            do {
                try audioSessionLeft.setCategory(AVAudioSession.Category.playback)
            } catch {
            }
        }
        catch {
            print("there has been an error")
        }
        //Loads right track data onto mainVC
        BPMTrackLeft = "147"
        songNameTrackLeft = "Purple Lamborghini x Skrillex"
        songImageLeft = "purplelambo"
        waveformImageLeft = "PurpleLamboWaveform"
        NotificationCenter.default.post(name: Notification.Name.loadLeftTrackData, object: self)
        dismiss(animated: true, completion: nil)
        //Resets the Hot Cues
        resetHotCuesLeft()
    }
    
    @IBAction func loadDJGotUs(_ sender: Any) {
        do {
            trackLeft = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "DJ Got Us", ofType: "mp3")!))
            trackLeft.prepareToPlay()
            //Allows the song to play in the background
            do {
                try audioSessionLeft.setCategory(AVAudioSession.Category.playback)
            } catch {
            }
        }
        catch {
            print("there has been an error")
        }
        //Loads right track data onto mainVC
        BPMTrackLeft = "121"
        songNameTrackLeft = "DJ Got Us Fallin In Love Again x Usher"
        songImageLeft = "usher"
        waveformImageLeft = "DjGotUsWaveform"
        NotificationCenter.default.post(name: Notification.Name.loadLeftTrackData, object: self)
        dismiss(animated: true, completion: nil)
        //Resets the Hot Cues
        resetHotCuesLeft()
    }
    
    @IBAction func loadSexyBitch(_ sender: Any) {
        do {
            trackLeft = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "Sexy Bitch", ofType: "mp3")!))
            trackLeft.prepareToPlay()
            //Allows the song to play in the background
            do {
                try audioSessionLeft.setCategory(AVAudioSession.Category.playback)
            } catch {
            }
        }
        catch {
            print("there has been an error")
        }
        //Loads right track data onto mainVC
        BPMTrackLeft = "130"
        songNameTrackLeft = "Sexy Bitch x David Guetta"
        songImageLeft = "sexyb"
        waveformImageLeft = "SexyBitchWaveform"
        NotificationCenter.default.post(name: Notification.Name.loadLeftTrackData, object: self)
        dismiss(animated: true, completion: nil)
        //Resets the Hot Cues
        resetHotCuesLeft()
    }
    
    @IBAction func loadFebreze(_ sender: Any) {
        do {
            trackLeft = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "Febreze", ofType: "mp3")!))
            trackLeft.prepareToPlay()
            //Allows the song to play in the background
            do {
                try audioSessionLeft.setCategory(AVAudioSession.Category.playback)
            } catch {
            }
        }
        catch {
            print("there has been an error")
        }
        //Loads right track data onto mainVC
        BPMTrackLeft = "150"
        songNameTrackLeft = "Febreze x Jack U"
        songImageLeft = "febreze"
        waveformImageLeft = "FebrezeWaveform"
        NotificationCenter.default.post(name: Notification.Name.loadLeftTrackData, object: self)
        dismiss(animated: true, completion: nil)
        //Resets the Hot Cues
        resetHotCuesLeft()
    }
    
    @IBAction func loadYeah(_ sender: Any) {
        do {
            trackLeft = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "Yeah", ofType: "mp3")!))
            trackLeft.prepareToPlay()
            //Allows the song to play in the background
            do {
                try audioSessionLeft.setCategory(AVAudioSession.Category.playback)
            } catch {
            }
        }
        catch {
            print("there has been an error")
        }
        //Loads right track data onto mainVC
        BPMTrackLeft = "105"
        songNameTrackLeft = "Yeah x Usher"
        songImageLeft = "yeah"
        waveformImageLeft = "YeahWaveform"
        NotificationCenter.default.post(name: Notification.Name.loadLeftTrackData, object: self)
        dismiss(animated: true, completion: nil)
        //Resets the Hot Cues
        resetHotCuesLeft()
    }
    
    @IBAction func loadMagentaRiddim(_ sender: Any) {
        do {
            trackLeft = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "Magenta Riddim", ofType: "mp3")!))
            trackLeft.prepareToPlay()
            //Allows the song to play in the background
            do {
                try audioSessionLeft.setCategory(AVAudioSession.Category.playback)
            } catch {
            }
        }
        catch {
            print("there has been an error")
        }
        //Loads right track data onto mainVC
        BPMTrackLeft = "102"
        songNameTrackLeft = "Magenta Riddim x DJ Snake"
        songImageLeft = "magentariddim"
        waveformImageLeft = "MagentaRiddimWaveform"
        NotificationCenter.default.post(name: Notification.Name.loadLeftTrackData, object: self)
        dismiss(animated: true, completion: nil)
        //Resets the Hot Cues
        resetHotCuesLeft()
    }
    
    @IBAction func loadGetLow(_ sender: Any) {
        do {
            trackLeft = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "Get Low", ofType: "mp3")!))
            trackLeft.prepareToPlay()
            //Allows the song to play in the background
            do {
                try audioSessionLeft.setCategory(AVAudioSession.Category.playback)
            } catch {
            }
        }
        catch {
            print("there has been an error")
        }
        //Loads right track data onto mainVC
        BPMTrackLeft = "101"
        songNameTrackLeft = "Get Low x Dillion Francis"
        songImageLeft = "getlow"
        waveformImageLeft = "GetLowWaveform"
        NotificationCenter.default.post(name: Notification.Name.loadLeftTrackData, object: self)
        dismiss(animated: true, completion: nil)
        //Resets the Hot Cues
        resetHotCuesLeft()
    }
    
    @IBAction func closeOverlay(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
