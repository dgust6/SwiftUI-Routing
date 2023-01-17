//
//  View1ViewModel.swift
//  SwiftUI-Routing
//
//  Created by Dino Gustin on 17.01.2023..
//

import Foundation

class View1ViewModel: BaseViewModel {
    
    private let router: ExampleRouter
    
    init(router: ExampleRouter) {
        self.router = router
    }
    
    func view2ButtonTapped() {
        router.navigateToView2()
    }
    
    deinit {
        print("deinit1")
    }
}
