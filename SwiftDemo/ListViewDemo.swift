

//  ContentView.swift
//  SwiftDemo
//  Created by GranzaX on 06/10/21.


import SwiftUI


struct ListViewDemo: View {
    
    @State var treeArray = [false, false, true, false, false, false]
    
    var body: some View {
        List (0..<treeArray.count) { index in
            Button(action: {
                debugPrint(index)
        
                
                for i in 0..<treeArray.count {
                    if (i == index) {
                        treeArray[i] = true
                    } else {
                        treeArray[i] = false
                    }
                }
                
            }, label: {
                Text("\(index)"+" - hello")
                    .foregroundColor( treeArray[index] ? .blue : .red)
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ListViewDemo()
        }
    }
}



