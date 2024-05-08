//
//  UpdateView.swift
//  videos-swift-data
//
//  Created by Ruben on 8/5/24.
//

import SwiftUI

struct UpdateView: View {
    
    @Bindable var video: Video
    
    var body: some View {
        Form {
            TextField("Editar el próximo video en la lista", text: $video.title)
            Toggle("Favorito", isOn: $video.metadata.isFavorite)
        }
    }
}

#Preview {
    UpdateView(video: .init(id: .init(), title: "test video", metadata: .init(isFavorite: true)))
}
