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
            VStack(alignment: .leading) {
                Text(character.name)
                    .foregroundColor(.gray)
                CharacterStatusView(status: character.status)
                HStack{
                    Text(character.species)
                        .foregroundColor(.gray)
                    if (character.type != "") {
                        Text("-")
                            .foregroundColor(.gray)
                        Text(character.type)
                            .foregroundColor(.gray)
                    }
                }
            }

        }
    }
}

struct CharacterRow_Previews: PreviewProvider {
    static var previews: some View {
        CharacterRow(character: CharacterInformation(id: 1, name: "Nicolas Valentini", status: CharacterStatus.alive, species: "Human", type: "Unknown", gender: CharacterGender.male, origin: CharacterLocation(name: "Rio Colorado"), location: CharacterLocation(name: "Copenhagen"), image: "", episode: ["1","2"], url: "", created: "27/11/1992 12:00hrs"))
    }
}
