//
//  APIContants.swift
//  RickAndMortySwiftUI
//
//  Created by Nico Valentini Mac Adden on 29/07/2023.
//

import Foundation

final class APIConstants {
    static var basedURL: String = "https://rickandmortyapi.com/api"
}

enum HTTPHeaderField: String {
    case authentication = "Authentication"
    case contentType = "Content-Type"
    case acceptType = "Accept"
    case acceptEncoding = "Accept-Encoding"
    case authorization = "Authorization"
    case acceptLanguage = "Accept-Language"
    case userAgent = "User-Agent"
}

enum ContentType: String {
    case json = "application/json"
    case xwwwformurlencoded = "application/x-www-form-urlencoded"
}
