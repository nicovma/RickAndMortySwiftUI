//
//  APIRouter.swift
//  RickAndMortySwiftUI
//
//  Created by Nico Valentini Mac Adden on 29/07/2023.
//

import Foundation

class APIRouter {
    
    // GET Request
    struct GetCharacters: Request {
        typealias ReturnType = CharactersResponse
        var path: String = "/character"
        var method: HTTPMethod = .get
        var queryParams: [String : Any]?
        init(queryParams: APIParameters.CharacterParams) {
            self.queryParams = queryParams.asDictionary
        }
    }
    
//    struct AddProduct: Request {
//        typealias ReturnType = AddedProductModel
//        var path: String = "/products/add"
//        var method: HTTPMethod = .post
//        var body: [String : Any]?
//        init(body: APIParameters.AddProductParams) {
//            self.body = body.asDictionary
//        }
//    }
}
