//
//  BulletinView.swift
//  ECC
//
//  Created by 강성찬 on 2024-01-20.
//

import SwiftUI

struct BulletinView: View {
    @StateObject var viewModel: BulletinViewModel = BulletinViewModel()
    
    var body: some View {
        VStack {
            List() {
                ForEach(viewModel.bulletins, id: \.id) { bulletin in
                    NavigationLink {
                        PDFKitView(bulletin: bulletin.url)
                    } label: {
                        Text(bulletin.date)
                        
                    }
                }
            }
        }
    }
}


#Preview {
    BulletinView()
}
