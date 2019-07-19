//
//  ValuePickerView.swift
//  BetalaP2
//
//  Created by Karl Söderberg on 2019-07-19.
//  Copyright © 2019 Karl Söderberg. All rights reserved.
//

import SwiftUI

struct ValuePickerView : View {
    
    @Binding var value: Int
    
    func increase() {
        value += 1
    }
    func decrease() {
        value -= 1
    }
    
    var body: some View {
        return VStack {
            Button(action: increase) {
                Text("+")
                .font(.title)
                .color(Color.black)
                }.frame(minWidth: 0,
                        maxWidth: .infinity,
                        minHeight: 0,
                        maxHeight: .infinity)
            
            Text(value.description)
                .color(Color.black)
                .bold()
                .frame(minWidth: 0,
                       maxWidth: .infinity,
                       minHeight: 48,
                       maxHeight: .infinity)
                .background(Color.white)

            
            Button(action: decrease) {
                Text("-")
                    .font(.title)
                    .color(Color.black)
                }
                .frame(minWidth: 0,
                       maxWidth: .infinity,
                       minHeight: 0,
                       maxHeight: .infinity)
            }
            .frame(width: 60, height: 124, alignment: .center)
            .background(Color.gray)
            .cornerRadius(10)
            .shadow(radius: 10)
    }
}

#if DEBUG
struct ValuePickerView_Previews : PreviewProvider {
    static var previews: some View {
        ValuePickerView(value: .constant(3))
    }
}
#endif
