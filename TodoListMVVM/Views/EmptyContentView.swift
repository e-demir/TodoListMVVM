//
//  EmptyContentView.swift
//  TodoListMVVM
//
//  Created by Emrullah Demir on 14.02.2023.
//

import SwiftUI

struct EmptyContentView: View {
    
   
    var body: some View {
        ScrollView {
            Text("No notes yet")
                .font(.title)
            Text("Are you crazy")
            NavigationLink(destination: AddView()) {
                Text("Add new")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.accentColor)
                    .cornerRadius(15)
                    
            }
        }.padding(40)
    }
}

struct EmptyContentView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView {
            EmptyContentView()
        }
    }
}
