//
//  ContentView.swift
//  War Card Game
//
//  Created by Carl Irven Nykuluz F. Millanes on 7/3/23.
//

import SwiftUI

struct ContentView: View {
    @State var cardPlayer: String = "card"
    @State var cardCPU: String = "card"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        ZStack{
            
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            VStack(){
                
                Spacer()
                Image("logo")
                Spacer()
                
                HStack(){
                    Spacer()
                    Image(cardPlayer)
                    Spacer()
                    Image(cardCPU)
                    Spacer()
                }
                
                Spacer()
                Button {
                    deal()
                } label: {
                    Image("button")
                }
                Spacer()
                
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                   Spacer()
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    Spacer() 
                }
                .foregroundColor(.white)
                Spacer()
            }
        }
    }
    func deal(){
        // Randomize Cards both player and cpu
        // Update the scores
        let randPlayer = Int.random(in: 2...14)
        let randCPU = Int.random(in: 2...14)
        cardPlayer = "card" + String(randPlayer)
        cardCPU = "card" + String(randCPU)

            if(randPlayer < randCPU){
                //Add 1 to CPU Score
                cpuScore+=1;
            }
            else if(randPlayer > randCPU){
                //Add 1 to Player Score
                playerScore+=1;
            } else {
                //Tie
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
