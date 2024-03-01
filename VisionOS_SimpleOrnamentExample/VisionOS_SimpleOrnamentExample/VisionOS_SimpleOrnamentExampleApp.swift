//
//  VisionOS_SimpleOrnamentExampleApp.swift
//  VisionOS_SimpleOrnamentExample
//
//  Created by Caleb Winningham on 3/1/24.
//

import SwiftUI

@main
struct VisionOS_SimpleOrnamentExampleApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }

        ImmersiveSpace(id: "ImmersiveSpace") {
            ImmersiveView()
        }.immersionStyle(selection: .constant(.full), in: .full)
    }
}
