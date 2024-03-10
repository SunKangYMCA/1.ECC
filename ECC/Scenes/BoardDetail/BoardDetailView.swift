//
//  BoardDetailView.swift
//  ECC
//
//  Created by 강성찬 on 2024-02-26.
//

import SwiftUI

struct BoardDetailView: View {
    
    private var dateFormat: String {
        let dateString = "02152024"
                
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMddyyyy"
                
        let convertDate = dateFormatter.date(from: dateString)
                
        let myDateFormatter = DateFormatter()
        myDateFormatter.dateFormat = "yyyy년 MM월 dd일"
        myDateFormatter.locale = Locale(identifier:"ko_KR")
        let convertString = myDateFormatter.string(from: convertDate!)
        return convertString
    }
    
    var content: BoardDetail
    
    var body: some View {
        VStack(alignment: .center) {
                Text(content.title)
            .padding()
            HStack {
                Spacer()
                Text(dateFormat)
            }
            .padding()
            
            Text(content.detail)
                .padding()
            Spacer()
        }
    }
}

#Preview {
    BoardDetailView(content: BoardDetail(date: "", title: "", detail: ""))
}
