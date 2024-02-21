//
//  ContactView.swift
//  ECC
//
//  Created by 강성찬 on 2024-01-20.
//

import SwiftUI

struct ContactView: View {
    @StateObject var viewModel: ContactViewModel = ContactViewModel()
    
    var body: some View {
        VStack {
            
            headingView
            
            churchMapImageView
            
            HStack {
                
                moveGoogleMapsButton
                
                addressCopyButton
                
            }
            
            Spacer()
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle("연락처")
    }
    
    private var headingView: some View {
        Text("< 오시는 길 >\n◉ " + viewModel.churchAddress)
            .multilineTextAlignment(.center)
            .font(.eccFont(type: .smallBold))
            .padding(.top, 30)
    }
    
    private var churchMapImageView: some View {
        Image("map")
            .resizable()
            .frame(height: .largeScreenWidth)
            .aspectRatio(contentMode: .fit)
            .cornerRadius(.cornerRadius)
            .padding()
            .background(
                Color.blue
                    .opacity(0.5)
                    .cornerRadius(.cornerRadius)
            )
    }
    
    private var moveGoogleMapsButton: some View {
        Link(destination: URL(string: viewModel.churchGoogleMapsURL)!) {
            Text("구글맵으로 이동")
                .foregroundColor(.white)
                .font(.eccFont(type: .normalBold))
                .frame(width: .smallScreenWidth)
                .background(
                    Color.green
                        .opacity(0.6)
                        .cornerRadius(.cornerRadius)
                )
        }
    }
    
    private var addressCopyButton: some View {
        Button {
            viewModel.makeAddressCopyButton()
        } label: {
            Text("주소를 복사하기")
                .foregroundColor(.white)
                .font(.eccFont(type: .normalBold))
                .frame(width: .smallScreenWidth)
                .background(
                    Color.green
                        .opacity(0.6)
                        .cornerRadius(.cornerRadius)
                )
        }
    }
}

#Preview {
    ContactView()
}
