//
//  VisionOS_ParticleBasedWeatherApp.swift
//  VisionOS_ParticleBasedWeatherApp
//
//  Created by Caleb Winningham on 2/24/24.
//

import SwiftUI

@main
struct VisionOS_ParticleBasedWeatherApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }

        ImmersiveSpace(id: "ImmersiveSpace") {
            ImmersiveView()
        }.immersionStyle(selection: .constant(.full), in: .full)
    }
}
