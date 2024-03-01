//
//  VisionOS_AmbientAudioApp.swift
//  VisionOS_AmbientAudio
//
//  Created by Caleb Winningham on 2/24/24.
//

import SwiftUI

@main
struct VisionOS_AmbientAudioApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }

        ImmersiveSpace(id: "ImmersiveSpace") {
            ImmersiveView()
        }.immersionStyle(selection: .constant(.full), in: .full)
    }
}
