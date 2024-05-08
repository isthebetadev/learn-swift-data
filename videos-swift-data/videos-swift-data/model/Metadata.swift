//
//  Metadata.swift
//  videos-swift-data
//
//  Created by Ruben on 8/5/24.
//

import Foundation
import SwiftData

@Model
class Metadata {
    
    var isFavorite: Bool
    
    init(isFavorite: Bool) {
        self.isFavorite = isFavorite
    }
    
}
