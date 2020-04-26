//
//  ErrorMessage.swift
//  githubexplorer
//
//  Created by Amit Biswas on 4/22/20.
//  Copyright © 2020 Amit Biswas. All rights reserved.
//

import Foundation

// enum associated value
enum GFError: String, Error {
    case invalidUsername = "This username created an invalid request"
    case unableToComplete = "Unable to complete request, please check your internet connection"
    case invalidResponse = "Invalid respond from the server. Please try again."
    case invalidData = "The data recieved from the server was invalid"
}
