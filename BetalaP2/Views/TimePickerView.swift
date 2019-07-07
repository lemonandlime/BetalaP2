//
//  TimePickerView.swift
//  BetalaP2
//
//  Created by Karl Söderberg on 2019-07-07.
//  Copyright © 2019 Karl Söderberg. All rights reserved.
//

import SwiftUI



struct TimePickerView : View {
    
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
        Group {
            VStack {
                
                Text("Ange Parkeringstid")
                
                HStack {
                    VStack {
                        Text("Timmar")
                        VStack {
                            Button(action: increaseHour) {
                                Text("+")
                            }
                            Text($selectedHour.value.description)
                            Button(action: decreaseHour) {
                                Text("-")
                            }
                            }
                            .frame(width: 40, height: nil, alignment: .center)
                            .background(Color.gray)
                            .cornerRadius(10)
                    }
                    VStack {
                        Text("Minuter")
                        VStack {
                            Button(action: increaseMinute) {
                                Text("+")
                            }
                            Text($selectedMinute.value.description)
                            Button(action: decreaseMinute) {
                                Text("-")
                            }
                            }
                            .frame(width: 40, height: nil, alignment: .center)
                            .background(Color.gray)
                            .cornerRadius(10)
                    }
                }
                }
                .foregroundColor(.white)
                .padding(20)
            
            }
            .background(Color.black.opacity(0.3))
            .cornerRadius(10)
    }
}

#if DEBUG
struct TimePickerView_Previews : PreviewProvider {
    static var previews: some View {
        TimePickerView()
    }
}
#endif
