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
    


    
    var body: some View {
        TimePickerView()
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
