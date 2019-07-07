//
//  ContentView.swift
//  BetalaP2
//
//  Created by Karl Söderberg on 2019-07-03.
//  Copyright © 2019 Karl Söderberg. All rights reserved.
//

import SwiftUI

enum Time: String, CaseIterable {
    case albania
    case belgium
    case chile
    case germany
    case hungary
    case iceland
    case mazedonia
    case portugal
    case switzerland
}

struct ContentView : View {
    

    @State private var selectedHour: Int = 0
    @State private var selectedMinute: Int = 0

    
    func increaseHour() {
        selectedHour += 1
    }
    func decreaseHour() {
        selectedHour -= 1
    }
    func increaseMinute() {
        selectedMinute += 1
    }
    func decreaseMinute() {
        selectedMinute -= 1
    }
    
    var body: some View {
            VStack {
                
                Text("Ange Parkeringstid")
                
                HStack {
                    VStack {
                        Text("Timmar")
                        Button(action: increaseHour) {
                            Text("+")
                        }
                        Text($selectedHour.value.description)
                        Button(action: decreaseHour) {
                            Text("-")
                        }
                    }
                    VStack {
                        Text("Minuter")
                        Button(action: increaseMinute) {
                            Text("+")
                        }
                        Text($selectedMinute.value.description)
                        Button(action: decreaseMinute) {
                            Text("-")
                        }
                    }
                }
            }
        
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
