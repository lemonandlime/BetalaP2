//
//  TimePickerView.swift
//  BetalaP2
//
//  Created by Karl Söderberg on 2019-07-07.
//  Copyright © 2019 Karl Söderberg. All rights reserved.
//

import SwiftUI

//public extension View {
//    @inlinable func fill() -> Self.Modified<_FlexFrameLayout> {
//        return self.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
//    }
//}

struct TimePickerView : View {
    
    @Binding var selectedHour: Int
    @Binding var selectedMinute: Int
    
    var body: some View {
        Group {
            VStack {
                Text("Ange Parkeringstid").font(.title)
                HStack {
                    VStack {
                        Text("Timmar")
                            .padding(.bottom, 2)
                            .font(.headline)
                        ValuePickerView(value: $selectedHour)
                        }
                        .padding()
                    VStack {
                        Text("Minuter")
                            .padding(.bottom, 2)
                            .font(.headline)
                        ValuePickerView(value: $selectedMinute)
                        }
                        .padding()
                    }
                }
                .foregroundColor(.white)
                .padding(20)
            
            
            }
            .background(Color.black.opacity(0.3))
            .cornerRadius(10)
            .foregroundColor(.white)
            .shadow(radius: 10)
        
        
    }
}

#if DEBUG
struct TimePickerView_Previews : PreviewProvider {
    static var previews: some View {
        TimePickerView(selectedHour: .constant(3), selectedMinute: .constant(7))
    }
}
#endif




