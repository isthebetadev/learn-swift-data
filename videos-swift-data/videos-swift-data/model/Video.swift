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
    @Relationship(deleteRule: .cascade) var metadata: Metadata
    
    init(id: UUID, title: String, metadata: Metadata) {
        self.id = id
        self.title = title
        self.metadata = metadata
    }
}
