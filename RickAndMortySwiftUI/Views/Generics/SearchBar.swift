//
//  SearchBar.swift
//  RickAndMortySwiftUI
//
//  Created by Nico Valentini Mac Adden on 29/07/2023.
//

import SwiftUI

struct SearchBar: View {
    
    @Binding var text: String
    var searchCompletion: () -> Void
    var searchedBy: String
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                TextField(NSLocalizedString("searchBarPlaceholder", comment: ""), text: $text)
                Button(action: {
                    // Call the search completion handler
                    searchCompletion()
                    
                    // Close the keyboard
                    UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                }, label: {
                    Label(NSLocalizedString("search", comment: ""), systemImage: "magnifyingglass")
                })
                .disabled(text == searchedBy)
                
            }
            .padding()
            .background(Color.gray.opacity(0.2))
            .cornerRadius(10)

            
            if (searchedBy != "") {
                HStack {
                    Text(NSLocalizedString("filteredBy", comment: "") + searchedBy)
                    Button(action: {
                        // Call the search completion handler
                        text = ""
                        searchCompletion()
                        
                        // Close the keyboard
                        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                    }, label: {
                        Text("X")
                    })
                    .tint(Color.red)
                    
                }
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(10)
                
            }   
        }
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(text: .constant(""), searchCompletion: {},searchedBy: "")
    }
}
