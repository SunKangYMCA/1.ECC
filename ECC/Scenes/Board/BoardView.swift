//
//  BoardListView.swift
//  ECC
//
//  Created by 강성찬 on 2024-02-21.
//

import SwiftUI

struct BoardView: View {
    
    @ObservedObject var viewModel: BoardViewModel
    
    var body: some View {
        List {
            ForEach(viewModel.listContent, id: \.self) { detail in
                NavigationLink {
                    BoardDetailView(content: detail)
                } label: {
                    HStack {
                        Text(detail.title)
                        Spacer()
                        Text(detail.date)
                    }
                }
            }
        }
        
        .navigationTitle(viewModel.type.title)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    BoardView(viewModel: BoardViewModel(type: .kids))
}
