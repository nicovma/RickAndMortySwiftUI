//
//  TabsView.swift
//  RickAndMortySwiftUI
//
//  Created by Nico Valentini Mac Adden on 29/07/2023.
//

import SwiftUI

struct TabsView: View {
    var body: some View {
        TabView {
            CharacterListView()
                .tabItem {
                    Label(NSLocalizedString("characters", comment: ""), systemImage: "person")
                }
            Text(NSLocalizedString("episodes", comment: ""))
                .tabItem {
                    Label(NSLocalizedString("episodes", comment: ""), systemImage: "film")
                }
            Text(NSLocalizedString("locations", comment: ""))
                .tabItem {
                    Label(NSLocalizedString("locations", comment: ""), systemImage: "mappin.and.ellipse")
                }
        }
    }
}

struct TabsView_Previews: PreviewProvider {
    static var previews: some View {
        TabsView()
    }
}
