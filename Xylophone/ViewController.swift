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
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func cKeyPressed(_ sender: UIButton) {
        playSound(button: (sender.titleLabel?.text)!)
        print("Start")
        sender.alpha = 0.2
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.4) {
            print("End")
            sender.alpha = 1.0
        }
        
    }
    
    func playSound(button : String) {
        let url = Bundle.main.url(forResource: button, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}


