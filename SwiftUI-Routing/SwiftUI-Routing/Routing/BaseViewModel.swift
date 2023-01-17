//
//  BaseViewModel.swift
//  SwiftUI-Routing
//
//  Created by Dino Gustin on 17.01.2023..
//

import SwiftUI

open class BaseViewModel: ObservableObject {
    
    @Published public var navigatingView: AnyView? = nil
    @Published public var shouldPop: Bool = false
    
    public init() { }
    
    open func onAppear() {
        navigatingView = nil
    }
}
