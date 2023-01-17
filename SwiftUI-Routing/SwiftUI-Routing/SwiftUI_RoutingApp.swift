//
//  SwiftUI_RoutingApp.swift
//  SwiftUI-Routing
//
//  Created by Dino Gustin on 17.01.2023..
//

import SwiftUI

@main
struct SwiftUI_RoutingApp: App {
        
    var body: some Scene {
        WindowGroup {
            RootView(viewModel: RootViewModel(router: ExampleRouter()))
        }
    }
}
