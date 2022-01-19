//
//  ContentView.swift
//  Tamagotchi
//
//  Created by Tao, Weizhe (Coll) on 19/01/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Pet")
            HStack {
                Button("Feed Meal", action: {})
                Button("Feed Snack", action: {})
                Button("Play Game", action: {})
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
