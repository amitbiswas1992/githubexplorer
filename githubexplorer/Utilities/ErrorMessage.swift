//
//  ErrorMessage.swift
//  githubexplorer
//
//  Created by Amit Biswas on 4/22/20.
//  Copyright © 2020 Amit Biswas. All rights reserved.
//

import Foundation

// enum associated value
enum ErrorMessage: String {
    case invalidUsername = "This username created an invalid request"
    case unableToComplete = "Unable to complete request, please check your internet connection"
    case invalidResponse = "Invalid respond from the server"
    case invalidData = "The data recieved from the server was invalid"
}




//completed(nil, "This username created an invalid request")
//      return
//  }
//
//  let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
//      if let _ = error {
//          completed(nil, "Unable to complete request, please check your internet connection")
//          return
//      }
//
//      guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
//          completed(nil, "Invalid respond from the server")
//          return
//      }
//
//      guard let data = data else {
//          completed(nil, "The data recieved from the server was invalid")
//          return
//      }
//
//      do {
//          let decoder = JSONDecoder()
//          decoder.keyDecodingStrategy = .convertFromSnakeCase
//          let followers = try decoder.decode([Followers].self, from: data)
//          completed(followers, nil)
//      }
//      catch {
//          completed(nil, "The data recieved from the server was invalid")
//      }
