//
//  WorshipViewModel.swift
//  ECC
//
//  Created by 강성찬 on 2024-03-09.
//

import SwiftUI

class WorshipViewModel: ObservableObject {
    @Published var shouldShowAudioVideoButton: Bool = false
    
    @Published var worshipAudios: [WorshipAudio] = [
        WorshipAudio(date: "02042024", title: "그리스도로 옷 입은 자(2)", userName: "정동호 담임목사", url: "WorshipAudioClip"),
        WorshipAudio(date: "02112024", title: "아빠 아버지", userName: "정동호 담임목사", url: "WorshipAudioClip"),
        WorshipAudio(date: "02182024", title: "약하고 천박한 초등학문", userName: "정동호 담임목사", url: "WorshipAudioClip"),
        WorshipAudio(date: "02252024", title: "그리스도의 형상을 이루기까지", userName: "정동호 담임목사", url: "WorshipAudioClip"),
        WorshipAudio(date: "03032024", title: "이것은 비유이니", userName: "정동호 담임목사", url: "WorshipAudioClip"),
    ]
    
    @Published var worshipVideos: [WorshipVideo] = [
        WorshipVideo(date: "02042024", title: "그리스도로 옷 입은 자(2)", userName: "정동호 담임목사", url: "WorshipVideoClip"),
        WorshipVideo(date: "02112024", title: "아빠 아버지", userName: "정동호 담임목사", url: "WorshipVideoClip"),
        WorshipVideo(date: "02182024", title: "약하고 천박한 초등학문", userName: "정동호 담임목사", url: "WorshipVideoClip"),
        WorshipVideo(date: "02252024", title: "그리스도의 형상을 이루기까지", userName: "정동호 담임목사", url: "WorshipVideoClip"),
        WorshipVideo(date: "03032024", title: "이것은 비유이니", userName: "정동호 담임목사", url: "WorshipVideoClip"),
    ]
    
    func showButton() {
        shouldShowAudioVideoButton.toggle()
    }
    
    var changeName: String {
        shouldShowAudioVideoButton ? "설교음성듣기\n클릭" : "설교영상보기\n클릭"
    }
    
    var changeColor: Color {
        shouldShowAudioVideoButton ? .red : .green
    }
    
    func showListContents() {
        if shouldShowAudioVideoButton {
            
        }
    }
}
