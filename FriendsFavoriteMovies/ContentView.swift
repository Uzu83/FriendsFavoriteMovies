//
//  ContentView.swift
//  FriendsFavoriteMovies
//
//  Created by 東郷翔士希 on 2024/11/08.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            Tab("Friends", systemImage: "person.and.person") {
                FriendsList()
            }
            
            Tab("Movies", systemImage: "film.stack") {
                FilterdMovieList()
            }
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(SampleData.shared.modelContainer)
}
