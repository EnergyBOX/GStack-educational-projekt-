//
//  ContentView.swift
//  GStack (educational projekt)
//
//  Created by Server Admin on 16.01.2024.
//

import SwiftUI




/// Its a costome `conteiner` where a grid of stack takes in some count of column and row and return some view with inaformation in grid style
struct GStack<Content: View>: View {
    let rows: Int
    let columns: Int
    let content: (Int, Int) -> Content
    
    var body: some View {
        VStack {
            ForEach(1..<rows, id: \.self) { row in
                HStack {
                    ForEach(1..<columns, id: \.self) { col in
                        content(row, col)
                    }
                }
            }
        }
    }
}




struct ContentView: View {
    var body: some View {
        
        
        
        GStack(rows: 5, columns: 7) { ro, co in
            Text("\(ro) \(co)")
                .padding()
                .background(Color.blue)
        }
        
        
        
        
        
    }
}













struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
