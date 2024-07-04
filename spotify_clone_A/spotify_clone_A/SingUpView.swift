//
//  SingUpView.swift
//  spotify_clone_A
//
//  Created by Mac19 on 18/05/24.
//

import SwiftUI

struct SingUpView: View {
    
    @State var counter: Int = 0
    @State var data: String = ""
    
    
    var elements: [SignUpForm] = [
        SignUpForm(title: "What’s your email?", input: "", helptext: "You’ll need to confirm this email later."),
        SignUpForm(title: "Create a password", input: "", helptext: "Use atleast 8 characters."),
        SignUpForm(title: "What’s your gender?", input: "", helptext: ""),
        SignUpForm(title: "What’s your name?", input: "", helptext: "This appears on your spotify profile"),
    ]
    
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
                    ForEach(0..<elements.count, id: \.self) { index in
                        if index == counter {
                            VStack {
                                VStack(alignment: .leading) {
                                    Text(elements[index].title)
                                }
                            }
                            
                            HStack {
                                if counter != 0 {
                                    StepperButton(counter: $counter, isNext: false, text: "Back")
                                }
                                Spacer()
                                
                                if counter != elements.count - 1 {
                                    StepperButton(counter: $counter)
                                }
                            }.padding(.top, 30)
                        }
                    }
                    Spacer()
                }
                .padding(40)
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
}

#Preview {
    SingUpView()
}
