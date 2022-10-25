//
//  ContentView.swift
//  EnvironmentObject
//
//  Created by Ilona Sellenberkova on 25/10/2022.
//


import SwiftUI
import Combine

struct ContentView: View {

    // Sharing across your entire app EnvironmentObject
    @EnvironmentObject var counter: Counter
    
    @State private var myBool = false
        
    var body: some View {
        VStack {
            HStack {
                Text("\(counter.name):")
                Spacer()
                    Text("\(counter.number)")
                        .foregroundColor(.secondary)
               
            }   .padding()
                .font(.system(size: 25))

            Button("Count") {
                counter.number += 1
                // print(counter.number)
            }
                .padding(.horizontal, 10.0)
                .padding([.top, .bottom], 8.0)
                .background(.pink)
                .foregroundColor(.white)
                .font(.system(size: 20))
                .cornerRadius(8)
                .shadow(color: .gray, radius: 5, x: 2, y: 2)
        }
        .frame(width: 220, height: 550)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        // Using class
        ContentView().environmentObject(Counter(name: "My counter", number: 0))
    }
}
