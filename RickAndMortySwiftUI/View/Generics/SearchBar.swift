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
    
    var body: some View {
        VStack {
            HStack {
                TextField("Buscar", text: $text)
                    .padding(.horizontal)
                
                Button(action: {
                    // Call the search completion handler
                    searchCompletion()
                    
                    // Close the keyboard
                    UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                }, label: {
                    Text("Search")
                })
                
            }
            .padding()
            .background(Color.gray.opacity(0.2))
            .cornerRadius(10)

            // TODO: show text "filtered by: "
        }
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(text: .constant("")) {
        }
    }
}
