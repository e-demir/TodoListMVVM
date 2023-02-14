//
//  AddView.swift
//  TodoListMVVM
//
//  Created by Emrullah Demir on 12.02.2023.
//

import SwiftUI

struct AddView: View {
    @State var note: String = ""
    @EnvironmentObject var listViewModel : ListViewModel
    @Environment(\.presentationMode) var presentationMode
    @State var isAlertShown : Bool = false
    @State var alertTitle : String = ""
    
    func saveButtonPressed(){
        if isTitleValid(){
            listViewModel.addItem(title: note)
            presentationMode.wrappedValue.dismiss()
        }else{
            alertTitle = "Boş geçme aslan"
            isAlertShown.toggle()
        }                
    }
    
    func showAlert() -> Alert {
        return Alert(title: Text(alertTitle))
    }
    
    
    func isTitleValid() -> Bool {
        if note.count > 2 {
            return true
        }
        return false
    }
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("Your note...", text: $note)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color.gray.brightness(0.4))
                    .cornerRadius(15)
                Button {
                    saveButtonPressed()
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
        .alert(isPresented: $isAlertShown) {
            showAlert()
        }
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AddView()
        }.environmentObject(ListViewModel())
    }
}
