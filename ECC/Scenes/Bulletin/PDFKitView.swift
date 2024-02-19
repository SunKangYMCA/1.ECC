//
//  PDFKitView.swift
//  ECC
//
//  Created by 강성찬 on 2024-02-18.
//
import SwiftUI
import PDFKit

struct PDFKitView: UIViewRepresentable {
    
    var doc: PDFDocument
    
    init(bulletin: String) {
        let url = Bundle.main.url(forResource: bulletin, withExtension: "pdf")!
        self.doc = PDFDocument(url: url)!
    }
    
    func makeUIView(context: Context) -> PDFView {
        let pdfView = PDFView()
        pdfView.document = doc
        pdfView.autoScales = true
        pdfView.displayDirection = .vertical
        return pdfView
    }
    
    func updateUIView(_ pdfView: PDFView, context: Context) {
        pdfView.document = doc
    }
}


//    ## when get the url
//    let url = try? Data(contentsOf: URL(string:
//                                            "https://www.lkpc.org/assets/board/files/lpc_b51a347f3994453cae77b377b783c4ad.pdf")!)
//    self.doc = PDFDocument(data: url!)!
