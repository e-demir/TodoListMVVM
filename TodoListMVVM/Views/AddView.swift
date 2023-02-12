//
//  AddView.swift
//  TodoListMVVM
//
//  Created by Emrullah Demir on 12.02.2023.
//

import SwiftUI

struct AddView: View {
    @State var note: String = ""
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("Your note...", text: $note)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color.gray.brightness(0.4))
                    .cornerRadius(15)
                Button {
                    
                } label: {
                    Text("Save".uppercased())
                        .foregroundColor(.white)
                        .font(.headline )
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(15)
                }

            }.padding(14)
                
        }
        .navigationTitle("Add note 🖊")
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AddView()
        }
    }
}
