//
//  ImmersiveView.swift
//  VisionOS_SkyboxExample
//
//  Created by Caleb Winningham on 2/24/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ImmersiveView: View {
    var body: some View {
        RealityView { content in
            let skybox = createSkybox()
            content.add(skybox!)
        }
    }
    
    private func createSkybox() -> Entity? {
        let largeSphere = MeshResource.generateSphere(radius: 2)
        var skyboxMaterial = UnlitMaterial()
        
        do {
            let texture = try TextureResource.load(named: "demo2")
            skyboxMaterial.color = .init(texture: .init(texture))
        } catch {
            print("Failed to create skybox material: \(error)")
            return nil
        }
        
        let skyboxEntity = Entity()
        skyboxEntity.components.set(ModelComponent(mesh: largeSphere, materials: [skyboxMaterial]))
        
        skyboxEntity.scale = .init(x: -1, y: 1, z: 1)
        return skyboxEntity
    }
}

#Preview {
    ImmersiveView()
        .previewLayout(.sizeThatFits)
}
