//
//  IBoardApp.swift
//  IBoard
//
//  Created by poby on 2023/04/12.
//

import SwiftUI

@main
struct IBoardApp: App {
    @StateObject private var configHandler :ConfigHandler
    @StateObject private var clipBoardHandler :ClipBoardHandler
    @State private var curretnTab = 0
    @State private var appRunning = false
    
    init() {
        let confH = ConfigHandler()
        self._configHandler = StateObject(wrappedValue: confH)
        self._clipBoardHandler = StateObject(wrappedValue: ClipBoardHandler(configHandler: confH))
    }
    
    var body: some Scene {
        MenuBarExtra(content: {
            Menu()
                .environmentObject(configHandler)
                .environmentObject(clipBoardHandler)
        }) {
            Image("icon")
        }
    }
}
