//
//  View2.swift
//  SwiftUI-Routing
//
//  Created by Dino Gustin on 17.01.2023..
//

import SwiftUI

struct View2: View {
    
    @ObservedObject var viewModel: View2ViewModel
    
    var body: some View {
        VStack {
            Text("This is view 2")
        }
        .asBaseView(viewModel: viewModel)
    }
}
