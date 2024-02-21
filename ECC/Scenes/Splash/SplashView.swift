//
//  SplashView.swift
//  ECC
//
//  Created by 강성찬 on 2024-01-16.
//

import SwiftUI

struct SplashView: View {
    @StateObject var viewModel: SplashViewModel = SplashViewModel()
    
    var body: some View {
        VStack {
            if viewModel.shouldShowMainTabView {
                MainTabView()
            } else {
                logoView
            }
        }
        .onAppear(perform: {
            viewModel.showMainTabView()
        })
    }
    private var logoView: some View {
        ZStack {
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
