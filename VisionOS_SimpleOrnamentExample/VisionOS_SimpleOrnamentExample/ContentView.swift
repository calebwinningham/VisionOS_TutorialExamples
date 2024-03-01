//
//  ContentView.swift
//  VisionOS_SimpleOrnamentExample
//
//  Created by Caleb Winningham on 3/1/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    @State private var pageNum = 0
    
    var pages = ["Hello", "Nice to meet you", "Goodbye"]
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Text(pages[pageNum])
                    Spacer()
                }
                Spacer()
            }
            .ornament(attachmentAnchor: .scene(.bottom), ornament: {
                VStack {
                    Spacer()
                    HStack {
                        Text("Hello, Moon").padding(.leading)
                        Spacer()
                        Button(action: {
                            pageNum -= 1
                        }) {
                            Image(systemName: "chevron.left")
                                .clipShape(.circle)
                        }.disabled(pageNum == 0)
                        
                        Button(action: {
                            pageNum += 1
                        }) {
                            Image(systemName: "chevron.right")
                                .clipShape(.circle)
                        }.padding(.trailing).disabled(pageNum == 2)
                    }
                    Spacer()
                }.glassBackgroundEffect().padding(EdgeInsets(top: 100, leading: 0, bottom: 0, trailing: 0)).frame(width: geometry.size.width)
            })
            .padding()
        }
    }
}


#Preview(windowStyle: .automatic) {
    ContentView()
}
