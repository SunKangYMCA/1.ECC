//
//  FileManager.swift
//  ECC
//
//  Created by 강성찬 on 2024-02-28.
//

import SwiftUI

final class FileManager {
    static var shared = FileManager()
    
    func fetchBoards(completion: @escaping ([BoardDetail]?, Error?) -> Void) {
        let urlString: String = "Board_Kindergarten"
        guard let url: URL = URL(string: urlString) else {
            return
        }
        let urlRequest: URLRequest = URLRequest(url: url)
        
        URLSession.shared.dataTask(with: urlRequest) { data, response, error in
            if let error = error {
                completion(nil, error)
                print(error.localizedDescription)
            }
            
            guard let data = data else {
                completion(nil, error)
                print("not found")
                return
            }
            
            do {
                let decodedData = try JSONDecoder().decode([BoardDetail].self, from: data)
                completion(decodedData, nil)
            } catch {
                completion(nil, error)
                print(error.localizedDescription)
            }
        }
        .resume()
    }
    
}
