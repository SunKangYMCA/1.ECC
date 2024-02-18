//
//  MainTabView.swift
//  ECC
//
//  Created by 강성찬 on 2024-01-20.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            MainView()
                .tabItem {
                    Label("Main", systemImage: "building.columns")
                }
            BulletinView()
                .tabItem {
                    Label("주보", systemImage: "book.pages")
                }
            
            WorshipView()
                .tabItem {
                    Label("예배영상", systemImage: "tv")
                }
            
//            OfferingView()
//                .tabItem {
//                    Label("온라인헌금", systemImage: "heart.circle")
//                }
//            
            PrayerView()
                .tabItem {
                Label("중보기도", systemImage: "hands.and.sparkles.fill")
                }
            
            BoardView()
                .tabItem {
                    Label("게시판", systemImage: "pencil.and.list.clipboard")
                }
        }
    }
}

#Preview {
    MainTabView()
}
