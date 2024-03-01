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
                
                googleMapsButton
                
                addressCopyButton
                
            }
            .padding()
            
            churchPhoneNumberView
            
            churchEmailaView
            
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
    
    private var googleMapsButton: some View {
        Button {
            viewModel.moveGoogleMaps()
        } label: {
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
    
    private var churchPhoneNumberView: some View {
        Button {
            viewModel.openPhoneAPP()
        } label: {
            HStack {
                Image(systemName: "phone")
                
                Text(viewModel.churchPhoneNumber)
                    .font(.eccFont(type: .smallBold))
            }
            
        }
    }
    
    private var churchEmailaView: some View {
        Button {
            viewModel.openEmailAPP()
        } label: {
            HStack {
                Image(systemName: "email")
                
                Text(viewModel.churchEmailaddress)
                    .font(.eccFont(type: .smallBold))
            }
        }
    }
}

#Preview {
    ContactView()
}
