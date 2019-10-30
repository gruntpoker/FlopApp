//
//  ContentView.swift
//  flopapp
//
//  Created by Michael Timmons on 10/28/19.
//  Copyright © 2019 Michael Timmons. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let colors: [Color] = [.red, .green, .blue]
    
    
    var body: some View {
        VStack {
            ForEach((0...12), id: \.self) { j in
            HStack() {
                ForEach((0...12), id: \.self) { i in
                    Text("\(j)")
                    .padding()
                        .background(self.colors[0])
                }
            }
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
