

//  GridViewDemo.swift
//  SwiftDemo
//  Created by GranzaX on 06/10/21.


import SwiftUI


struct GridViewDemo: View {
    let data = (1...10).map {$0}
    
    let columns = [
        GridItem(.adaptive(minimum: UIScreen.main.bounds.size.width/3))
//        GridItem(.adaptive(minimum: UIScreen.main.bounds.size.width/2))
    ]
    
    init() {
        debugPrint("initialized")
    }
        
    var body: some View {
        
        ScrollView {
            LazyVGrid(columns: columns
//                      ,spacing: 20
            ) {
//                for i in 0..<10 {
                ForEach(data, id: \.self) { item in
                    Button(action: {
                        debugPrint("item is:- \(item)")
                        debugPrint("columns is:- \(columns.count)")
                    }, label: {
                        Rectangle()
                            .frame(
    //                            width: UIScreen.main.bounds.size.width/3,
                                
                                height: 100
                            )
                            .foregroundColor(.blue)
                    })
                }
            }
            .padding(.horizontal)
        }
        //            .frame(maxHeight: 300)
        .onAppear() {
            debugPrint("appearing")
        }
        
    }
    
}

struct GridViewDemo_Previews: PreviewProvider {
    static var previews: some View {
        GridViewDemo()
    }
}
