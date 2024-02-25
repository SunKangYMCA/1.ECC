//
//  BoardView.swift
//  ECC
//
//  Created by 강성찬 on 2024-01-20.
//

import SwiftUI

struct BoardView: View {
    @StateObject var viewModel: BoardViewModel = BoardViewModel()
    
    var body: some View {
        boardListView
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle("게시판")
    }
    
    private var boardListView: some View {
        LazyVGrid(columns: viewModel.columns) {
            ForEach(BoardType.allCases, id: \.self) { type in
                NavigationLink {
                    type.destination
                } label: {
                    Text(type.title)
                        .foregroundColor(.white)
                        .font(.eccFont(type: .normalBold))
                        .frame(width: .smallScreenWidth)
                        .padding()
                        .background(
                            Color.blue
                                .opacity(0.4)
                                .cornerRadius(.cornerRadius)
                        )
                        .padding()
                }
                
            }
        }
    }
}

#Preview {
    BoardView()
}
