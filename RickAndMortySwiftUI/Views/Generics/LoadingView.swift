//
//  LoadingView.swift
//  RickAndMortySwiftUI
//
//  Created by Nico Valentini Mac Adden on 30/07/2023.
//

import SwiftUI

struct LoadingView: View {
    
    var text: String
    
    var body: some View {
        VStack {
            ProgressView()
                .padding()
            Text(text)
        }
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView(text: NSLocalizedString("loading", comment: ""))
    }
}
