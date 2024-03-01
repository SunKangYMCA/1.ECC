//
//  ContactViewModel.swift
//  ECC
//
//  Created by 강성찬 on 2024-02-20.
//

import SwiftUI
import UIKit

class ContactViewModel: ObservableObject {
    
    @Published var showError: Bool = false
    @Published var pasteboard = UIPasteboard.general
    let churchAddress: String = "2551 Ellwood Dr SW, Edmonton, AB T6X 0P7"
    let churchGoogleMapsURL: URL? = URL(string: "https://maps.app.goo.gl/zDF5YetTKwRYyPHt7")
    let churchPhoneNumber: String = "000-000-0000"
    var churchPhoneNumberURL: URL? {
       URL(string: "tel:\\" + churchPhoneNumber)
    }
    let churchEmailaddress: String = "ecccentrechurch@church.com"
    var churchEmailaddressURL: URL? {
        URL(string: "mailto:" + churchEmailaddress)
    }
    func makeAddressCopyButton() {
        pasteboard.string = churchAddress
    }
    
    func moveGoogleMaps() {
        guard let url = churchGoogleMapsURL else {
            showError.toggle()
            return
        }
        
        UIApplication.shared.open(url)
    }
    
    func openPhoneAPP() {
        guard let url = churchPhoneNumberURL else {
            showError.toggle()
            return
        }
        
        UIApplication.shared.open(url)
    }
    
    func openEmailAPP() {
        guard let url = churchEmailaddressURL else {
            showError.toggle()
            return
        }
        
        UIApplication.shared.open(url)
    }
}
