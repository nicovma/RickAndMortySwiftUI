//
//  CharacterStatusView.swift
//  RickAndMortySwiftUI
//
//  Created by Nico Valentini Mac Adden on 29/07/2023.
//

import SwiftUI

struct CharacterStatusView: View {
    
    var status: CharacterStatus
    var color: Color {
        switch status {
        case .dead:
            return Color.red
        case .alive:
            return Color.green
        case .unknown:
            return Color.gray
        }
    }
    
    var body: some View {

        HStack{
            Circle()
                .fill(self.color)
                .frame(width: 12, height: 12)
            Text(status.rawValue)
                .foregroundColor(.gray)
        }
    }
}

struct CharacterStatusView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterStatusView(status: CharacterStatus.alive)
    }
}
