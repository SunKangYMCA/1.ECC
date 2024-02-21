//
//  WorshipView.swift
//  ECC
//
//  Created by 강성찬 on 2024-01-20.
//

import SwiftUI

struct WorshipView: View {
    var body: some View {
    
            VStack {
                
                IntroImage()
                
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        
            .navigationBarTitleDisplayMode(.inline)
            .navigationTitle("예배영상")
        }
    }
}

#Preview {
    WorshipView()
}
