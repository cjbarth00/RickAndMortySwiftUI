//
//  CharacterDetailView.swift
//  RickAndMortySwiftUI
//
//  Created by Casey Barth on 4/2/23.
//

import SwiftUI
import RickAndMortyAPI

struct CharacterDetailView: View {
    @State var characterDetailViewModel: CharacterDetailViewModel
    
    init(character: Character) {
        self.characterDetailViewModel = CharacterDetailViewModel(character: character)
    }
    
    var body: some View {
        VStack {
            Text(characterDetailViewModel.displayName)
            Text(characterDetailViewModel.displaySpecies)
        }.padding()
    }
}

//struct CharacterDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        CharacterDetailView(character: Character())
//    }
//}
