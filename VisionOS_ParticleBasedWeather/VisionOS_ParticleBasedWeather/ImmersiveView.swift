//
//  ImmersiveView.swift
//  VisionOS_ParticleBasedWeatherApp
//
//  Created by Caleb Winningham on 2/24/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ImmersiveView: View {
    var body: some View {
        RealityView { content in
            // Add the initial RealityKit content
            if let immersiveContentEntity = try? await Entity(named: "Immersive", in: realityKitContentBundle) {
                content.add(immersiveContentEntity)

                guard let scene = try? await Entity(named: "Snow", in: realityKitContentBundle) else {
                    fatalError("Unable to load immersive model")
                }
                
                content.add(scene)
            }
        }
    }
}

#Preview {
    ImmersiveView()
        .previewLayout(.sizeThatFits)
}
