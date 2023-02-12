//
//  TodoListMVVMApp.swift
//  TodoListMVVM
//
//  Created by Emrullah Demir on 12.02.2023.
//

import SwiftUI

/*
 MVVM Architecture
 
 Model - data point
 View - UI
 ViewModel - manages models for view
 
 */

@main
struct TodoListMVVMApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }            
        }
    }
}
