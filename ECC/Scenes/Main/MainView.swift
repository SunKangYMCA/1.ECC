//
//  MainView.swift
//  ECC
//
//  Created by 강성찬 on 2024-02-17.
//

import SwiftUI

struct MainView: View {
    
    @StateObject var viewModel: MainViewModel = MainViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                Text("에드먼튼 중앙 장로교회에\n오신 것을 환영합니다.")
                    .multilineTextAlignment(.center)
                    .font(.eccFont(type: .normalBold))
                LazyVGrid(columns: viewModel.columns) {
                    ForEach(MainSubMenu.allCases, id: \.self) { menu in
                        NavigationLink {
                            menu.destination
                        } label: {
                            Text(menu.title)
                                .foregroundColor(.white)
                                .font(.eccFont(type: .normalBold))
                                .frame(width: .smallScreenWidth, height: .smallScreenWidth)
                                .background(
                                    Color.blue
                                        .opacity(0.4)
                                        .cornerRadius(.cornerRadius)
                                )
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    MainView()
}



import PDFKit

struct PDFKitView: UIViewRepresentable {
    
    let pdfDocument: PDFDocument
    
    init(showing pdfDoc: PDFDocument) {
        self.pdfDocument = pdfDoc
    }
    
    //you could also have inits that take a URL or Data
    
    func makeUIView(context: Context) -> PDFView {
        let pdfView = PDFView()
        pdfView.document = pdfDocument
        pdfView.autoScales = true
        pdfView.displayDirection = .vertical
        return pdfView
    }
    
    func updateUIView(_ pdfView: PDFView, context: Context) {
        pdfView.document = pdfDocument
    }
}

