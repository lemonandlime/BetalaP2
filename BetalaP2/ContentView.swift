//
//  ContentView.swift
//  BetalaP2
//
//  Created by Karl Söderberg on 2019-07-03.
//  Copyright © 2019 Karl Söderberg. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    
    var body: some View {
        NavigationView{
            VStack {
                
                TimePickerView(selectedHour: .constant(3), selectedMinute: .constant(5))
            }.navigationBarTitle(Text("Betala P"), displayMode: .inline).navigationBarItems(leading: Text("Burger"))
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
