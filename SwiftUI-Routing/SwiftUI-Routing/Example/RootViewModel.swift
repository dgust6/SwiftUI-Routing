//
//  RootViewModel.swift
//  SwiftUI-Routing
//
//  Created by Dino Gustin on 17.01.2023..
//

import Foundation

class RootViewModel: BaseViewModel {
    
    private let router: ExampleRouter
    
    init(router: ExampleRouter) {
        self.router = router
        super.init()
        router.setRootViewModel(self)
    }
    
    func view1ButtonTapped() {
        router.navigateToView1()
    }
    
    func view2ButtonTapped() {
        router.navigateToView2()
    }
}
