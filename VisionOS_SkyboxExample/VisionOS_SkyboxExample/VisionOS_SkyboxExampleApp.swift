//
//  VisionOS_SkyboxExampleApp.swift
//  VisionOS_SkyboxExample
//
//  Created by Caleb Winningham on 2/24/24.
//

import SwiftUI

@main
struct VisionOS_SkyboxExampleApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }

        ImmersiveSpace(id: "ImmersiveSpace") {
            ImmersiveView()
        }.immersionStyle(selection: .constant(.full), in: .full)
    }
}
