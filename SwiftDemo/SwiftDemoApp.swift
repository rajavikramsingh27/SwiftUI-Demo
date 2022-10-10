//
//  SwiftDemoApp.swift
//  SwiftDemo
//
//  Created by GranzaX on 06/10/21.
//

import SwiftUI

@main
struct SwiftDemoApp: App {
    @Environment(\.scenePhase) var scenePhase
    
    init() {
        
    }
    
    var body: some Scene {
        WindowGroup {
//            ListViewDemo()
            GridViewDemo()
        }
        .onChange(of: scenePhase) { (appState) in
            switch appState {
            case .active:
                debugPrint("active State")
            case .background:
                debugPrint("background State")
            case .inactive:
                debugPrint("inactive State")
            @unknown default:
                debugPrint("Default")
            }
        }
    }
}
