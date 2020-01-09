//
//  ErrorMessage.swift
//  GitHubFollowers
//
//  Created by Darragh Blake on 09/01/2020.
//  Copyright © 2020 Darragh Blake. All rights reserved.
//

import Foundation

enum ErrorMessage: String {
    case invalidUsername = "This username created an invalid request. Please try again."
    case unableToComplete = "Unable to complete your request. Please check your internet connect"
    case invalidResponse = "Invalid response from the server. Please try again."
    case invalidData = "The data receive from the server was invalid. Please try again."
}
