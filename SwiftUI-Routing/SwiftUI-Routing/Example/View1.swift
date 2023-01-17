//
//  View1.swift
//  SwiftUI-Routing
//
//  Created by Dino Gustin on 17.01.2023..
//

import SwiftUI

struct View1: View {
    
    @ObservedObject var viewModel: View1ViewModel
    
    var body: some View {
        VStack {
            Button("View2", action: viewModel.view2ButtonTapped)
        }
        .asBaseView(viewModel: viewModel)
    }    
}
