//
//  CardMatrixView.swift
//  flopapp
//
//  Created by Michael Timmons on 10/31/19.
//  Copyright © 2019 Michael Timmons. All rights reserved.
//

import SwiftUI

struct CardMatrixView: View {
    
    var body: some View{
        VStack {
            ForEach((0...12), id: \.self) { j in
                HStack(spacing: 0) {
                    ForEach((0...12), id: \.self) { i in
                        Text("\(pfIndexToPocket[13*j+i]!)")
                            .frame(width: 22)
                            .background(Color.red)
                            .font(.system(size: 10))
                    }
                }
            }
        }.fixedSize(horizontal: true, vertical: true).frame(width: 200, height: 200)
    }
}

struct CardMatrixView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
