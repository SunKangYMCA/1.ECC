//
//  MainView.swift
//  ECC
//
//  Created by 강성찬 on 2024-02-17.
//

import SwiftUI

struct MainView: View {
    
    @StateObject var viewModel: MainViewModel = MainViewModel()
    
    var body: some View {
        VStack {
            
            headingView
                .padding(.top, 30)
            
            vGridView
            
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle("Main")
    }
    
    private var headingView: some View {
        Text(viewModel.heading)
            .multilineTextAlignment(.center)
            .font(.eccFont(type: .normalBold))
    }
    
    private var vGridView: some View {
        ScrollView {
            LazyVGrid(columns: viewModel.columns) {
                ForEach(MainSubMenu.allCases, id: \.self) { menu in
                    NavigationLink {
                        menu.destination
                    } label: {
                        Text(menu.title)
                            .foregroundColor(.white)
                            .font(.eccFont(type: .normalBold))
                            .frame(width: .smallScreenWidth, height: .tinyScreenWidth)
                            .background(
                                Color.blue
                                    .opacity(0.4)
                                    .cornerRadius(.cornerRadius)
                            )
                    }
                }
            }
        }
    }
}

#Preview {
    MainView()
}



