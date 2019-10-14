//
//  CMTime + Extension.swift
//  IMusic
//
//  Created by Илья Маркелов on 14.10.2019.
//  Copyright © 2019 Илья Маркелов. All rights reserved.
//

import Foundation
import AVKit

extension CMTime {
    
    func toDisplayString() -> String {
        guard !CMTimeGetSeconds(self).isNaN else {return ""}
        let totalSeconds = Int(CMTimeGetSeconds(self))
        let seconds = totalSeconds % 60
        let minutes = totalSeconds / 60
        let timeFormatString = String(format: "%02d:%02d", minutes, seconds)
        return timeFormatString
    }
}
