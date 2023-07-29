//
//  CharacterViewModel.swift
//  RickAndMortySwiftUI
//
//  Created by Nico Valentini Mac Adden on 29/07/2023.
//

import Foundation
import Combine

class CharacterViewModel: ObservableObject {
    
    enum State {
        case loading
        case failed(String)
        case loaded([CharacterInformation])
    }
    
    @Published var searchText = ""
    
    @Published private(set) var state = State.loading
    
    var cancelable: Set<AnyCancellable> = []
    
    private var pageNumber = 1
    private var hasNext: Bool = false
    private var characters: [CharacterInformation] = []
    
    init() {
        getCharacters()
    }
    
    func fetchMoreIfNeeded() {
        if hasNext {
            pageNumber+=1
            getCharacters()
        }
    }
    
    func filter(){
        pageNumber = 1
        getCharacters()
    }
    
    //GET Method
    func getCharacters() {
        APIClient.dispatch(
            APIRouter.GetCharacters(queryParams:
                                        APIParameters.CharacterParams(name: searchText, page:pageNumber)))
        .sink { completion in
            switch completion {
            case .finished:
                break
            case .failure(let error):
                self.state = State.failed(error.localizedDescription)
            }
        }
        receiveValue: { [weak self] response in
            if self?.pageNumber ?? 1 > 1 {
                self?.characters += response.results
            } else {
                self?.characters = response.results
            }
            
            self?.hasNext = (response.info.next != nil)
            if let characters = self?.characters {
                self?.state = State.loaded(characters)
            } else {
                self?.state = State.failed("Error getting characters")
            }
        }.store(in: &cancelable)
    }
}
