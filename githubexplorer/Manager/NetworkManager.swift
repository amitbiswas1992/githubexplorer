//
//  NetworkManager.swift
//  githubexplorer
//
//  Created by Amit Biswas on 4/21/20.
//  Copyright © 2020 Amit Biswas. All rights reserved.
//

import Foundation

class NetworkManager {
    static let shared = NetworkManager()
    let baseURL = "https://api.github.com/users/"
    
    private init(){}
    
    func getFollowers(for username: String , page: Int, completed: @escaping ([Followers]?, String?)-> Void) {
        let endpoint = baseURL + "\(username)/followers?per_page=100&page=\(page)"
        
        guard let url = URL(string: endpoint) else {
           completed(nil, "This username created an invalid request")
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let _ = error {
                completed(nil, "Unable to complete request, please check your internet connection")
                return
            }
            
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completed(nil, "Invalid respond from the server")
                return
            }
            
            guard let data = data else {
                completed(nil, "The data recieved from the server was invalid")
                return
            }
            
            do {
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                let followers = try decoder.decode([Followers].self, from: data)
                completed(followers, nil)
            }
            catch {
                completed(nil, "The data recieved from the server was invalid")
            }
        }
        
        
        task.resume()
        
    }
}
