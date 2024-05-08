//
//  ContentView.swift
//  videos-swift-data
//
//  Created by Ruben on 7/5/24.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.modelContext) var modelContext
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
