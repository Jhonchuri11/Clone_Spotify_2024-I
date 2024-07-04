//
//  SignUpview.swift
//  spotify_clone_A
//
//  Created by Mac19 on 20/05/24.
//

import SwiftUI

struct SignUpview: View {
    
    @State var counter: Int = 0
    
    

    @StateObject var singUpviewModel = SignUpViewModel()
    
    
    init() {
           UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.white]
           UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.white]
    }

    
    var body: some View {
        VStack {
            ZStack {
                Color("dart")
                    .ignoresSafeArea()
                
                VStack {
                    ForEach(0..<singUpviewModel.elements.count, id: \.self) { index in
                        if index == counter {
                            
                            VStack {
                                VStack(alignment: .leading) {
                                    
                                    Text(singUpviewModel.elements[index].title)
                                        .foregroundStyle(.white)
                                        .fontWeight(.bold)
                                    
                                    Group {
                                        if singUpviewModel.elements[index].isSecurityField {
                                            
                                            SecureField("", text: binding(index: index))
                                            
                                                
                                        } else {
                                            TextField("", text: binding(index: index))
                                                
                                        }
                                    }
                                    .padding()
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 5)
                                            .stroke(.gray, lineWidth: 1)
                                    )
                                    .background(.gray)
                                    .padding(.bottom, 4)
                                    .keyboardType(singUpviewModel.elements[index].keyboardtype)
                                    
                                    Text(singUpviewModel.elements[index].helptext)
                                        .foregroundStyle(.white)
                                        .font(.caption)
                                }
                                
                                HStack {
                                    if counter != 0 {
                                        StepperButton(counter: $counter, isNext: false, text: "Back")
                                    }
                                    
                                    Spacer()
                                    
                                    if counter != singUpviewModel.elements.count - 1 {
                                        StepperButton(counter: $counter)
                                    } else {
                                        Button {
                                            //singUpviewModel.createuser()
                                            
                                        } label : {
                                            Text("SignUp")
                                        }
                                    }
                                    
                                }.padding(.top, 30)
                                
                            }
                        }
                    }
                    Spacer()
                }
                .padding(30)
            }
    
        }
        .navigationTitle("Create account")
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                BarButtonView()
            }
        }
    }
    
    private func binding(index: Int) -> Binding<String> {
        return $singUpviewModel.elements[index].value
    }
}

#Preview {
    SignUpview()
}
