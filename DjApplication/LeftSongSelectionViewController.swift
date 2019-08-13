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
var songNameTrackLeft = AVAudioPlayer()
var audioSessionLeft = AVAudioSession.sharedInstance()
var songNamesongNameTrackLeft = ""
var BPMsongNameTrackLeft = ""
var songImageLeft = ""
var waveformImageLeft = ""


class LeftSongSelectionViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    //Loads the song Forbidden Voices x Martin Garrix
    @IBAction func loadForbiddenVoices(_ sender: Any) {
        do {
            songNameTrackLeft = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "Forbidden Voices", ofType: "mp3")!))
            songNameTrackLeft.prepareToPlay()
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
        BPMsongNameTrackLeft = "128"
        songNamesongNameTrackLeft = "Forbidden Voices x Martin Garrix"
        songImageLeft = "forbiddenv"
        waveformImageLeft = "ForbiddenVWaveform"
        NotificationCenter.default.post(name: Notification.Name.loadLeftTrackData, object: self)
        dismiss(animated: true, completion: nil)
        //Resets the Hot Cues
        resetHotCues()
    }
    
    @IBAction func loadSecrets(_ sender: Any) {
        do {
            songNameTrackLeft = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "Secrets", ofType: "mp3")!))
            songNameTrackLeft.prepareToPlay()
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
        BPMsongNameTrackLeft = "128"
        songNamesongNameTrackLeft = "Secrets x Tiesto"
        songImageRight = "secrets"
        waveformImageRight = "SecretsWaveform"
        NotificationCenter.default.post(name: Notification.Name.loadLeftTrackData, object: self)
        dismiss(animated: true, completion: nil)
        //Resets the Hot Cues
        resetHotCues()
    }
    
    @IBAction func loadPursuitOfHappiness(_ sender: Any) {
        do {
            songNameTrackLeft = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "Pursuit of Happiness", ofType: "mp3")!))
            songNameTrackLeft.prepareToPlay()
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
        BPMsongNameTrackLeft = "120"
        songNamesongNameTrackLeft = "Pursuit of Happiness x Steve Aoki"
        songImageRight = "pursuit"
        waveformImageRight = "PursuitWaveform"
        NotificationCenter.default.post(name: Notification.Name.loadLeftTrackData, object: self)
        dismiss(animated: true, completion: nil)
        //Resets the Hot Cues
        resetHotCues()
    }
    
    @IBAction func loadPurpleLamborghini(_ sender: Any) {
        do {
            songNameTrackLeft = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "Purple Lamborghini", ofType: "mp3")!))
            songNameTrackLeft.prepareToPlay()
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
        BPMsongNameTrackLeft = "147"
        songNamesongNameTrackLeft = "Purple Lamborghini x Skrillex"
        songImageRight = "purplelambo"
        waveformImageRight = "PurpleLamboWaveform"
        NotificationCenter.default.post(name: Notification.Name.loadLeftTrackData, object: self)
        dismiss(animated: true, completion: nil)
        //Resets the Hot Cues
        resetHotCues()
    }
    
    @IBAction func loadDJGotUs(_ sender: Any) {
        do {
            songNameTrackLeft = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "DJ Got Us", ofType: "mp3")!))
            songNameTrackLeft.prepareToPlay()
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
        BPMsongNameTrackLeft = "121"
        songNamesongNameTrackLeft = "DJ Got Us Fallin In Love Again x Usher"
        songImageRight = "usher"
        waveformImageRight = "DjGotUsWaveform"
        NotificationCenter.default.post(name: Notification.Name.loadLeftTrackData, object: self)
        dismiss(animated: true, completion: nil)
        //Resets the Hot Cues
        resetHotCues()
    }
    
    @IBAction func loadSexyBitch(_ sender: Any) {
        do {
            songNameTrackLeft = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "Sexy Bitch", ofType: "mp3")!))
            songNameTrackLeft.prepareToPlay()
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
        BPMsongNameTrackLeft = "130"
        songNamesongNameTrackLeft = "Sexy Bitch x David Guetta"
        songImageRight = "sexyb"
        waveformImageRight = "SexyBitchWaveform"
        NotificationCenter.default.post(name: Notification.Name.loadLeftTrackData, object: self)
        dismiss(animated: true, completion: nil)
        //Resets the Hot Cues
        resetHotCues()
    }
    
    @IBAction func loadFebreze(_ sender: Any) {
        do {
            songNameTrackLeft = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "Febreze", ofType: "mp3")!))
            songNameTrackLeft.prepareToPlay()
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
        BPMsongNameTrackLeft = "150"
        songNamesongNameTrackLeft = "Febreze x Jack U"
        songImageRight = "febreze"
        waveformImageRight = "FebrezeWaveform"
        NotificationCenter.default.post(name: Notification.Name.loadLeftTrackData, object: self)
        dismiss(animated: true, completion: nil)
        //Resets the Hot Cues
        resetHotCues()
    }
    
    @IBAction func loadYeah(_ sender: Any) {
        do {
            songNameTrackLeft = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "Yeah", ofType: "mp3")!))
            songNameTrackLeft.prepareToPlay()
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
        BPMsongNameTrackLeft = "105"
        songNamesongNameTrackLeft = "Yeah x Usher"
        songImageRight = "yeah"
        waveformImageRight = "YeahWaveform"
        NotificationCenter.default.post(name: Notification.Name.loadLeftTrackData, object: self)
        dismiss(animated: true, completion: nil)
        //Resets the Hot Cues
        resetHotCues()
    }
    
    @IBAction func loadMagentaRiddim(_ sender: Any) {
        do {
            songNameTrackLeft = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "Magenta Riddim", ofType: "mp3")!))
            songNameTrackLeft.prepareToPlay()
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
        BPMsongNameTrackLeft = "102"
        songNamesongNameTrackLeft = "Magenta Riddim x DJ Snake"
        songImageRight = "magentariddim"
        waveformImageRight = "MagentaRiddimWaveform"
        NotificationCenter.default.post(name: Notification.Name.loadLeftTrackData, object: self)
        dismiss(animated: true, completion: nil)
        //Resets the Hot Cues
        resetHotCues()
    }
    
    @IBAction func loadGetLow(_ sender: Any) {
        do {
            songNameTrackLeft = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "Get Low", ofType: "mp3")!))
            songNameTrackLeft.prepareToPlay()
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
        BPMsongNameTrackLeft = "101"
        songNamesongNameTrackLeft = "Get Low x Dillion Francis"
        songImageRight = "getlow"
        waveformImageRight = "GetLowWaveform"
        NotificationCenter.default.post(name: Notification.Name.loadLeftTrackData, object: self)
        dismiss(animated: true, completion: nil)
        //Resets the Hot Cues
        resetHotCues()
    }
    
}
