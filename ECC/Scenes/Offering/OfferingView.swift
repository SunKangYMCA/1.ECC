//
//  OfferingView.swift
//  ECC
//
//  Created by 강성찬 on 2024-01-20.
//

import SwiftUI

struct OfferingView: View {
    
    @StateObject var viewModel: OfferingViewModel = OfferingViewModel()
    
    var body: some View {
        VStack {
            
            IntroImage()
            
            moveOfferingSiteButton
            
            Spacer()
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle("온라인 헌금")
    }
    private var moveOfferingSiteButton: some View {
        
        Link(destination: URL(string: viewModel.offeringURL)!) {
            Text("에드먼트 중앙교회\n온라인 헌금 사이트로 이동")
                .multilineTextAlignment(.center)
                .foregroundColor(.white)
                .font(.eccFont(type: .largeBold))
                .frame(width: .largeScreenWidth, height: .largeScreenWidth)
                .background(
                    Color.green
                        .opacity(0.4)
                        .cornerRadius(.cornerRadius)
                )
                .padding(.top, 100)
        }
    }
}

#Preview {
    OfferingView()
}
