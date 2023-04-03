//
//  ContentView.swift
//  RickAndMortySwiftUI
//
//  Created by Casey Barth on 4/2/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            CharacterListView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
