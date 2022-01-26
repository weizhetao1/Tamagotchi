//
//  ContentView.swift
//  Tamagotchi
//
//  Created by Tao, Weizhe (Coll) on 19/01/2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var tamagotchi = Tamagotchi()
    let timer = Timer.publish(every: 0.2, on: .main, in: .common).autoconnect()
    var body: some View {
        VStack {
            Text("Age: \(tamagotchi.age)")
                .onReceive(timer){ _ in
                    tamagotchi.timeTick()
                }
            Text("Hunger: \(tamagotchi.hunger)")
            Text("Happiness: \(tamagotchi.happiness)")
            Text("Sickness: \(tamagotchi.sickness)")
            Text("Excretion: \(tamagotchi.excretion)")
            Spacer()
            Text(tamagotchi.pet)
            Spacer()
            VStack {
                Button(action: {tamagotchi.eatMeal()}){
                    Image("meal")
                        .resizable()
                        .frame(width: 100, height: 75)
                }
                Button("Feed Snack", action: {
                    tamagotchi.eatSnack()
                })
                Button("Play Game", action: {
                    tamagotchi.playGame()
                })
                Button("Give Medicine", action: {
                    tamagotchi.giveMedicine()
                })
                Button("Clean Up", action: {
                    tamagotchi.cleanUp()
                })
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
