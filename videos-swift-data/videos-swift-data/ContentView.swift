//
//  ContentView.swift
//  videos-swift-data
//
//  Created by Ruben on 7/5/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
     @Environment(\.modelContext) var modelContext
     @Query() var videos: [Video]
    // @Environment(VideoViewModel.self) var viewModel
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(videos) { video in
                    NavigationLink(value: video) {
                        HStack {
                            Text(video.title)
                            if video.metadata.isFavorite {
                                Image(systemName: "star.fill")
                                    .foregroundStyle(.yellow)
                            }
                        }
                    }
                }
            }
            .navigationTitle("Próximos videos 📺")
            .navigationDestination(for: Video.self, destination: { video in
                UpdateView(video: video)
            })
            .toolbar {
                ToolbarItem {
                    Button(action: {
                        withAnimation(.snappy) {
                            let newVideo = Video(id: .init(), title: "How to play Carcassone", metadata: .init(isFavorite: true))
                            modelContext.insert(newVideo)
                        }
                    }, label: {
                        Label("Add Item", systemImage: "plus")
                    })
                }
                ToolbarItem {
                    Button(action: {
                        withAnimation(.snappy) {
                            videos.forEach() {
                                modelContext.delete($0)
                            }
                            try? modelContext.save()
                        }
                    }, label: {
                        Label("Delete Item", systemImage: "trash")
                    })
                }
            }
        }
    }
}

 #Preview {
 ContentView()
 }
 
