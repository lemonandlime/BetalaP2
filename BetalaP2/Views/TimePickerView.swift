//
//  TimePickerView.swift
//  BetalaP2
//
//  Created by Karl Söderberg on 2019-07-07.
//  Copyright © 2019 Karl Söderberg. All rights reserved.
//

import SwiftUI



struct TimePickerView : View {
    
    @Binding var selectedHour: Int
    @Binding var selectedMinute: Int
    
    var body: some View {
        Group {
            VStack {
                Text("Ange Parkeringstid").font(.headline)
                HStack {
                    VStack {
                        Text("Timmar").font(.title)
                        ValuePicker(value: $selectedHour)
                    }
                    VStack {
                        Text("Minuter").font(.title)
                        ValuePicker(value: $selectedMinute)
                    }
                }
                }
                .foregroundColor(.white)
                .padding(20)
            
            
            }
            .background(Color.black.opacity(0.3))
            .cornerRadius(10).foregroundColor(.white)
        
        
    }
    
    struct ValuePicker : View {
        
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
                    }.fill()
                
                Text(value.description)
                    .fill()
                
                Button(action: decrease) {
                    Text("-")
                    }
                    .fill()
                }
                .frame(width: 60, height: 100, alignment: .center)
                .background(Color.gray)
                .cornerRadius(10)
        }
    }
}

#if DEBUG
struct TimePickerView_Previews : PreviewProvider {
    static var previews: some View {
        TimePickerView(selectedHour: .constant(3), selectedMinute: .constant(7))
    }
}
#endif

public extension View {
    @inlinable func fill() -> Self.Modified<_FlexFrameLayout> {
        return self.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
    }
}


