//
//  NetworkService.swift
//  IMusic
//
//  Created by Илья Маркелов on 10.10.2019.
//  Copyright © 2019 Илья Маркелов. All rights reserved.
//
import UIKit
import Alamofire

class NetworkService {
    func fetchTracks(searchText: String, completion: @escaping (SearchResponse?) -> Void) {
        let url = "https://itunes.apple.com/search"
        let parameters = ["term": "\(searchText)",
                          "limit":"100",
                          "media":"music"]
        
        AF.request(url, method: .get, parameters: parameters, encoding: URLEncoding.default, headers: nil).responseData { (dataResponse) in
            if let error = dataResponse.error {
                print("Error recieved requesting data: \(error.localizedDescription)")
                completion(nil)
                return
            }
            
            guard let data = dataResponse.data else {return}
            
            let decoder = JSONDecoder()
            do {
                let objects = try decoder.decode(SearchResponse.self, from: data)
                print("objects: ", objects)
                completion(objects)
                
            } catch let jsonError{
                print("Failed to decode JSON", jsonError)
                completion(nil)
            }
            
//            let someStrng = String(data: data, encoding: .utf8)
//            print(someStrng ?? "")
        }
    }
}
