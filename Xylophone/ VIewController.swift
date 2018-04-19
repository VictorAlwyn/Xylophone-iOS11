//
//  ViewController.swift
//  Xylophone
//
//  Created by Alwyn Tablatin on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController{
    
    let audioArray = ["note1","note2","note3","note4","note5","note6","note7"]
    
    var audioPlayer : AVAudioPlayer!
    
     var selecterTag : String = ""
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func notePressed(_ sender: UIButton) {
        
        selecterTag = audioArray[sender.tag - 1]
        
        print(selecterTag)
        
        
        playAudio()
        
    }
    
    func playAudio(){
        let audioUrl = Bundle.main.url(forResource: selecterTag, withExtension: "wav")
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: audioUrl!)
        }catch{
            print(error)
        }
        
        
        audioPlayer.play()
    }
    
  

}

