//
//  ErrorView.swift
//  RickAndMortySwiftUI
//
//  Created by Nico Valentini Mac Adden on 29/07/2023.
//

import SwiftUI

struct ErrorView: View {
    
    var text: String
    var retryCompletion: () -> Void
    
    var body: some View {
        VStack {
            Image("ErrorImage")
                .resizable()
                .frame(width: 200, height: 200)
                .foregroundColor(.red)
                .padding()
            Text(text)
                .padding()
            Button(action: {
                retryCompletion()
            }, label: {
                Text(NSLocalizedString("retry", comment: ""))
            })
        }
    }
}

struct ErrorView_Previews: PreviewProvider {
    static var previews: some View {
        ErrorView(text: NSLocalizedString("unknownError", comment: ""), retryCompletion: {})
    }
}
