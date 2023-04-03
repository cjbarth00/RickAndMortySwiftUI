//
//  CharacterListViewModel.swift
//  RickAndMortySwiftUI
//
//  Created by Casey Barth on 4/2/23.
//

import SwiftUI
import RickAndMortyAPI

@MainActor
class CharactersListViewModel: ObservableObject {
    private var client: APIClient
    
    init(client: APIClient = APIClient()) {
        self.client = client
    }
    
    @Published var characters: [Character] = []
    
    func fetchCharacters() {
        Task {
            let response = await client.request(route: CharactersRoute.getCharacters, responseType: PaginatedResponse<Character>.self)
            switch response {
            case .success(let paginatedResponse):
                characters = paginatedResponse.results
            case .failure(let error):
                print(error)
            }
        }
    }
}
