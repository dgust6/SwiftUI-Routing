//
//  BaseRouter.swift
//  SwiftUI-Routing
//
//  Created by Dino Gustin on 17.01.2023..
//

import Foundation
import Combine
import SwiftUI

open class BaseRouter {
    
    private var viewModelStack: [() -> BaseViewModel?] = []
    
    private var topViewModel: BaseViewModel? {
        while viewModelStack.last?() == nil && viewModelStack.count > 0 {
            viewModelStack.removeLast()
        }
        return viewModelStack.last?()
    }
    
    public init(rootViewModel: BaseViewModel? = nil) {
        if let rootViewModel = rootViewModel {
            append(viewModel: rootViewModel)
        }
    }
    
    public func setRootViewModel(_ rootViewModel: BaseViewModel) {
        viewModelStack = []
        append(viewModel: rootViewModel)
    }

    public func present(view: some View, with viewModel: BaseViewModel) {
        topViewModel?.navigatingView = AnyView(view)
        append(viewModel: viewModel)
    }
    
    public func navigateBack() {
        topViewModel?.shouldPop = true
        _ = viewModelStack.removeLast()
    }
    
    private func append(viewModel: BaseViewModel) {
        viewModelStack.append({ [weak viewModel] in
            viewModel
        })
    }
}
