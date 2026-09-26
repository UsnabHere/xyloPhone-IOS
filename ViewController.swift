//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func keyPressed(_ sender: UIButton) {
        let title = sender.currentTitle
        playAudio(soundName : title ?? "A")
    }
    
    
    // Source - https://stackoverflow.com/a/68462913
    // Posted by Olek
    // Retrieved 2026-07-25, License - CC BY-SA 4.0

    


    //class Test {
        
    var player: AVAudioPlayer!
        
    func playAudio(soundName : String) {
            
            let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
            player = try! AVAudioPlayer(contentsOf: url!)
            player.play()
            
            
        }
        
   // }


}

