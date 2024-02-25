//
//  BoardListDetailView.swift
//  ECC
//
//  Created by 강성찬 on 2024-02-21.
//

import SwiftUI

struct BoardListView: View {
    
    @ObservedObject var viewModel: BoardListViewModel
    
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
    BoardListView(viewModel: BoardListViewModel(type: .kids))
}


struct BoardDetailView: View {
    
    var content: BoardDetail
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(content.title)
            
            HStack {
                Spacer()
                Text(content.date)
            }
            
            Text(content.detail)
            
            Spacer()
        }
        .padding(.horizontal, 16)
    }
}
