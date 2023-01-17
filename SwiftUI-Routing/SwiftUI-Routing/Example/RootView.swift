//
//  RootView.swift
//  SwiftUI-Routing
//
//  Created by Dino Gustin on 17.01.2023..
//

import SwiftUI

struct RootView: View {
    
    @ObservedObject var viewModel: RootViewModel
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Button("View1", action: viewModel.view1ButtonTapped)
                Button("View2", action: viewModel.view2ButtonTapped)
                Spacer()
            }.asBaseView(viewModel: viewModel)
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}
