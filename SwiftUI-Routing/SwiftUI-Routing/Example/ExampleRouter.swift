//
//  ExampleRouter.swift
//  SwiftUI-Routing
//
//  Created by Dino Gustin on 17.01.2023..
//

import Foundation

class ExampleRouter: BaseRouter {
    
    func navigateToView1() {
        let viewModel = View1ViewModel(router: self)
        present(view: View1(viewModel: viewModel), with: viewModel)
    }
    
    func navigateToView2() {
        let viewModel = View2ViewModel()
        present(view: View2(viewModel: viewModel), with: viewModel)
    }
}
