//
//  VideoViewModel.swift
//  videos-swift-data
//
//  Created by Ruben on 8/5/24.
//

import Foundation
import SwiftData

class VideoViewModel: ObservableObject {
    
    let container = try! ModelContainer(for: Video.self, Metadata.self)
    
    @MainActor
    var modelContext: ModelContext {
        container.mainContext
    }
    
    var videos: [Video] = []
    
    /**
        Get all videos in BD
     */
    @MainActor
    func getVideos() {
        let fetchDescriptor = FetchDescriptor<Video>()
        videos = try! modelContext.fetch(fetchDescriptor)
        print("Videos: \(videos)")
    }
    
    /**
        Insert video in BD
     */
    @MainActor
    func insertVideo(_ video: Video) {
        modelContext.insert(video)
        videos = []
        getVideos()
    }
    
    /**
        Delete all videos in BD
     */
    @MainActor
    func deleteAllVideos() {
        videos.forEach() {
            modelContext.delete($0)
        }
        try? modelContext.save()
        videos = []
        getVideos()
    }
    
}
