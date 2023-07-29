//
//  CharacterListView.swift
//  RickAndMortySwiftUI
//
//  Created by Nico Valentini Mac Adden on 29/07/2023.
//

import SwiftUI

struct CharacterListView: View {
    
    @ObservedObject var viewModel: CharacterViewModel = CharacterViewModel()
    
    var body: some View {
        switch viewModel.state {
        case .loading:
            ProgressView()
        case .failed(let errorText):
            Text(errorText)
        case .loaded(let characters):
            NavigationView {
                VStack {
                    SearchBar(text: $viewModel.searchText, searchCompletion: {
                        viewModel.filter()
                    })
                    .padding(.horizontal)
                    List(characters, id: \.self) { character in
                        NavigationLink {
                            Text(character.name + " Detail")
                                .foregroundColor(.gray)
                        } label: {
                            CharacterRow(character: character)
                                .onAppear(perform: {
                                    if character == characters.last {
                                        viewModel.fetchMoreIfNeeded()
                                    }
                                })
                        }
                    }
                    .listStyle(PlainListStyle())
                    .navigationTitle("Characters")
                }
            }
        }
    }
}

struct CharacterList_Previews: PreviewProvider {
    static var previews: some View {
        CharacterListView()
    }
}
