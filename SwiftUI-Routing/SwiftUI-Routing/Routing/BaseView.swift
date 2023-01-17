//
//  BaseView.swift
//  SwiftUI-Routing
//
//  Created by Dino Gustin on 17.01.2023..
//

import SwiftUI

public struct BaseView<Content: View>: View {
    
    @ObservedObject var viewModel: BaseViewModel
    let content: Content
    @Environment(\.presentationMode) var presentation
    
    public init(viewModel: BaseViewModel, @ViewBuilder content: () -> Content) {
        self.viewModel = viewModel
        self.content = content()
    }
    
    public var body: some View {
        ZStack {
            NavigationLink(destination: viewModel.navigatingView ?? AnyView(EmptyView()), isActive: Binding(
                get: { [weak viewModel] in
                    viewModel?.navigatingView != nil
                },
                set: { [weak viewModel] _ in
                    viewModel?.navigatingView = nil
                }
            )) { EmptyView() }
            content
        }
        .onAppear() {
            viewModel.onAppear()
        }
        .onReceive(viewModel.$shouldPop, perform: { shouldPop in
            if shouldPop {
                presentation.wrappedValue.dismiss()
            }
        })
    }
}

public extension View {
    func asBaseView(viewModel: BaseViewModel) -> BaseView<Self> {
        BaseView(viewModel: viewModel) {
            self
        }
    }
}
