//
//  videos_swift_dataApp.swift
//  videos-swift-data
//
//  Created by Ruben on 7/5/24.
//

import SwiftUI
import SwiftData

@main
struct videos_swift_dataApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(VideoViewModel())
                .environmentObject(VideoViewModel())
        }
        //.modelContainer(for: [Video.self, Metadata.self])
    }
}
