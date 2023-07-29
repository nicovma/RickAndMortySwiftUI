//
//  CharacterRow.swift
//  RickAndMortySwiftUI
//
//  Created by Nico Valentini Mac Adden on 29/07/2023.
//

import SwiftUI

struct CharacterRow: View {
    
    var character: CharacterInformation
    
    var body: some View {
        HStack{
            DownloadedImage(imageURL: character.image, placeholder: "person")
                .frame(width: 80, height: 80)
            Text(character.name)
                .foregroundColor(.gray)
        }
    }
}

struct CharacterRow_Previews: PreviewProvider {
    static var previews: some View {
        CharacterRow(character: CharacterInformation(id: 1, name: "Nicolas", status: CharacterStatus.alive, species: "Human", type: "Unknown", gender: CharacterGender.male, origin: CharacterLocation(name: "Rio Colorado"), location: CharacterLocation(name: "Copenhagen"), image: "", episode: ["1","2"], url: "", created: "27/11/1992 12:00hrs"))
    }
}
