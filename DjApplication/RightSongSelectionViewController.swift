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
var songImage = ""
var waveformImage = ""

//TEST
//var songNameForEQ = ""
var sonTypeForEQ = ".mp3"


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
        //Loads right track data onto mainVC
        BPMTrackRight = "128"
        songNameTrackRight = "Forbidden Voices x Martin Garrix"
        songImage = "forbiddenv"
        waveformImage = "ForbiddenVWaveform"
        NotificationCenter.default.post(name: Notification.Name.loadRightTrackData, object: self)
        dismiss(animated: true, completion: nil)
        //Resets the Hot Cues
        resetHotCues()
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
        //Loads right track data onto mainVC
        BPMTrackRight = "128"
        songNameTrackRight = "Secrets x Tiesto"
        songImage = "secrets"
        waveformImage = "SecretsWaveform"
        NotificationCenter.default.post(name: Notification.Name.loadRightTrackData, object: self)
        dismiss(animated: true, completion: nil)
        //Resets the Hot Cues
        resetHotCues()
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
        //Loads right track data onto mainVC
        BPMTrackRight = "120"
        songNameTrackRight = "Pursuit of Happiness x Steve Aoki"
        songImage = "pursuit"
        waveformImage = "PursuitWaveform"
        NotificationCenter.default.post(name: Notification.Name.loadRightTrackData, object: self)
        dismiss(animated: true, completion: nil)
        //Resets the Hot Cues
        resetHotCues()
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
        //Loads right track data onto mainVC
        BPMTrackRight = "147"
        songNameTrackRight = "Purple Lamborghini x Skrillex"
        songImage = "purplelambo"
        waveformImage = "PurpleLamboWaveform"
        NotificationCenter.default.post(name: Notification.Name.loadRightTrackData, object: self)
        dismiss(animated: true, completion: nil)
        //Resets the Hot Cues
        resetHotCues()
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
        //Loads right track data onto mainVC
        BPMTrackRight = "121"
        songNameTrackRight = "DJ Got Us Fallin In Love Again x Usher"
        songImage = "usher"
        waveformImage = "DjGotUsWaveform"
        NotificationCenter.default.post(name: Notification.Name.loadRightTrackData, object: self)
        dismiss(animated: true, completion: nil)
        //Resets the Hot Cues
        resetHotCues()
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
        //Loads right track data onto mainVC
        BPMTrackRight = "130"
        songNameTrackRight = "Sexy Bitch x David Guetta"
        songImage = "sexyb"
        waveformImage = "SexyBitchWaveform"
        NotificationCenter.default.post(name: Notification.Name.loadRightTrackData, object: self)
        dismiss(animated: true, completion: nil)
        //Resets the Hot Cues
        resetHotCues()
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
        //Loads right track data onto mainVC
        BPMTrackRight = "150"
        songNameTrackRight = "Febreze x Jack U"
        songImage = "febreze"
        waveformImage = "FebrezeWaveform"
        NotificationCenter.default.post(name: Notification.Name.loadRightTrackData, object: self)
        dismiss(animated: true, completion: nil)
        //Resets the Hot Cues
        resetHotCues()
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
        //Loads right track data onto mainVC
        BPMTrackRight = "105"
        songNameTrackRight = "Yeah x Usher"
        songImage = "yeah"
        waveformImage = "YeahWaveform"
        NotificationCenter.default.post(name: Notification.Name.loadRightTrackData, object: self)
        dismiss(animated: true, completion: nil)
        //Resets the Hot Cues
        resetHotCues()
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
        //Loads right track data onto mainVC
        BPMTrackRight = "102"
        songNameTrackRight = "Magenta Riddim x DJ Snake"
        songImage = "magentariddim"
        waveformImage = "MagentaRiddimWaveform"
        NotificationCenter.default.post(name: Notification.Name.loadRightTrackData, object: self)
        dismiss(animated: true, completion: nil)
        //Resets the Hot Cues
        resetHotCues()
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
        //Loads right track data onto mainVC
        BPMTrackRight = "101"
        songNameTrackRight = "Get Low x Dillion Francis"
        songImage = "getlow"
        waveformImage = "GetLowWaveform"
        NotificationCenter.default.post(name: Notification.Name.loadRightTrackData, object: self)
        dismiss(animated: true, completion: nil)
        //Resets the Hot Cues
        resetHotCues()
    }
    
    //Top right X button
    @IBAction func closePopUp(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
