//
//  TrackDetailView.swift
//  IMusic
//
//  Created by Илья Маркелов on 11.10.2019.
//  Copyright © 2019 Илья Маркелов. All rights reserved.
//

import UIKit

class TrackDetailView: UIView {
    
    @IBOutlet weak var trackImageView: UIImageView!
    @IBOutlet weak var currentTimeSlider: UISlider!
    @IBOutlet weak var currentTimeLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!
    @IBOutlet weak var trackTitleLabel: UILabel!
    @IBOutlet weak var authorTitleLabel: UILabel!
    @IBOutlet weak var playPauseButton: UIButton!
    @IBOutlet weak var volumeSlider: UISlider!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        trackImageView.backgroundColor = .red
    }
    
    @IBAction func handleVolumeSlider(_ sender: Any) {
    }
    @IBAction func handleCurrentTimerSlider(_ sender: Any) {
    }
    
    @IBAction func drapDownButtonTrack(_ sender: Any) {
        self.removeFromSuperview()
    }
    @IBAction func previosTrack(_ sender: Any) {
    }
    @IBAction func nextTrack(_ sender: Any) {
    }
    @IBAction func playPauseAction(_ sender: Any) {
    }
    
    
}
