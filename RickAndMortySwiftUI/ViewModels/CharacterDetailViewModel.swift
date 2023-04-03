//
//  CharacterDetailViewModel.swift
//  RickAndMortySwiftUI
//
//  Created by Casey Barth on 4/2/23.
//

import Foundation
import RickAndMortyAPI

class CharacterDetailViewModel: ObservableObject {
    @Published private var character: Character
    
    init(character: Character) {
        self.character = character
    }
    
    var displayName: String {
        return character.name
    }
    
    var displaySpecies: String {
        return character.species
    }
}
