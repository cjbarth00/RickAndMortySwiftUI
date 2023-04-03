//
//  CharacterListView.swift
//  RickAndMortySwiftUI
//
//  Created by Casey Barth on 4/2/23.
//

import SwiftUI
import RickAndMortyAPI

struct CharacterListView: View {
    @StateObject var charactersViewModel = CharactersListViewModel()
    
    var body: some View {
        List(charactersViewModel.characters) { character in
            NavigationLink(character.name, value: character)
        }
        .navigationDestination(for: Character.self) { character in
            CharacterDetailView(character: character)
        }
        .navigationTitle("Characters")
        .task {
            charactersViewModel.fetchCharacters()
        }
    }
}

struct CharacterListView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterListView()
    }
}
