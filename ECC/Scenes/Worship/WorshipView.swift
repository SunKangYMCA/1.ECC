//
//  WorshipView.swift
//  ECC
//
//  Created by 강성찬 on 2024-01-20.
//

import SwiftUI
import AVKit

struct WorshipView: View {
    @StateObject var viewModel: WorshipViewModel = WorshipViewModel()
    
    var body: some View {
        
        VStack {
            
            Banner()
            
            HStack {
                audioButton
                videoButton
                
            }
            
            if viewModel.shouldShowAudioVideoButton {
                videoListView
            } else {
                audioListView
            }
            
            Spacer()
                .navigationBarTitleDisplayMode(.inline)
                .navigationTitle("예배영상")
        }
    }
    
    private var audioButton: some View {
        Button {
            viewModel.shouldShowAudioVideoButton = false
        } label: {
            Text("설교음성")
                    .foregroundColor(.white)
                    .font(.eccFont(type: .normalBold))
                    .frame(width: .tinyScreenWidth)
                    .padding()
                    .background(
                        Color.red
                            .opacity(0.4)
                            .cornerRadius(.cornerRadius)
                    )
                    .padding()
        }
    }
    
    private var videoButton: some View {
        Button {
            viewModel.shouldShowAudioVideoButton = true
        } label: {
            Text("설교영상")
                    .foregroundColor(.white)
                    .font(.eccFont(type: .normalBold))
                    .frame(width: .tinyScreenWidth)
                    .padding()
                    .background(
                        Color.green
                            .opacity(0.4)
                            .cornerRadius(.cornerRadius)
                    )
                    .padding()
        }
    }
    
    private var audioListView: some View {
        List {
            VStack {
                HStack {
                    Spacer()
                    Text("설교 음성 목록")
                        .foregroundColor(.brown)
                        .padding()
                        .background(
                            Color.red
                                .opacity(0.2)
                                .cornerRadius(.cornerRadius)
                        )
                    Spacer()
                }
            }
            ForEach(viewModel.worshipAudios, id: \.id) { item in
                HStack {
                    Text(item.date)
                    Text(item.userName)
                    Spacer()
                    Text(item.title)
                        .multilineTextAlignment(.center)
                }
            }
        }
    }
    
    private var videoListView: some View {
        List {
            VStack {
                HStack {
                    Spacer()
                    Text("설교 영상 목록")
                        .foregroundColor(.brown)
                        .padding()
                        .background(
                            Color.green
                                .opacity(0.2)
                                .cornerRadius(.cornerRadius)
                        )
                    Spacer()
                }
            }
            ForEach(viewModel.worshipVideos, id: \.id) { item in
                HStack {
                    Text(item.date)
                    Text(item.userName)
                    Spacer()
                    Text(item.title)
                        .multilineTextAlignment(.center)
                }
            }
        }
    }
}

#Preview {
    WorshipView()
}
