//
//  BlueView.swift
//  DemoUIPreviewCatalog
//
//  Created by Higashihara Yoki on 2021/09/19.
//

import SwiftUI

struct BlueView: View {
    @Environment(\.colorScheme) var colorScheme

    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.blue)
            
            VStack {
                Text("Hello, world!")
                    .padding()
                    .foregroundColor(.white)
                
                Text(colorScheme == .dark ? "Dark mode" : "Light mode")
                    .padding()
                    .foregroundColor(.white)
            }
        }
    }
}

struct BlueView_Previews: PreviewProvider {
    static var previews: some View {
        BlueView()
            .environment(\.colorScheme, .light)
            .previewDisplayName("Light mode")
        
        BlueView()
            .environment(\.colorScheme, .dark)
            .previewDisplayName("Dark mode")
    }
}

