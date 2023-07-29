//
//  APIParameters.swift
//  RickAndMortySwiftUI
//
//  Created by Nico Valentini Mac Adden on 29/07/2023.
//

import Foundation

protocol DictionaryConvertor: Codable {}

//MARK: APIParameters for using in URLrequests
/// Structs that containg all parameters that needed for passing data as body or queary strings to urlrequest
/// it is conforimig to DictionaryConvertor
struct APIParameters{
    
    
    struct CharacterParams: Encodable  {
        var name: String?
        var page: Int?
    }
    
//    struct AddProductParams: Encodable {
//        var title: String?
//    }
}
