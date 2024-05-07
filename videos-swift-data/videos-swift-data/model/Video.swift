 //
//  Video.swift
//  videos-swift-data
//
//  Created by Ruben on 7/5/24.
//

import Foundation
import SwiftData

@Model
class Video {
    @Attribute(.unique)
    var id: UUID
    var title: String = ""
    @Transient var numberOfLikes: Int { title.count }
    
    init(id: UUID, title: String) {
        self.id = id
        self.title = title
    }
}
