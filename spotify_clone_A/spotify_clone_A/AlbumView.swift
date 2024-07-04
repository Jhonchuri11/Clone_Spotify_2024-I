//
//  AlbumView.swift
//  spotify_clone_A
//
//  Created by Mac19 on 1/06/24.
//

import SwiftUI

struct AlbumView: View {
    
    var icons : [Icons] = [
        Icons(icon: "heard", title: "Like"),
        Icons(icon: "heard", title: "View artist"),
        Icons(icon: "heard", title: "Share"),
        Icons(icon: "heard", title: "like all songs"),
        Icons(icon: "heard", title: "Add to playist"),
        Icons(icon: "eard", title: "Add to queue"),
        Icons(icon: "heard", title: "Go to radio"),
    ]
    var gradient = Gradient(colors: [Color.red, Color.black])
    
    var body: some View {
        
        VStack {
            ZStack {
                //Color("album")
                LinearGradient(gradient: gradient, startPoint: .topTrailing, endPoint: .bottom)
                    .ignoresSafeArea()
                VStack (alignment: .leading) {
                    
                    VStack {
                        Image("one")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 200)
                            .padding(20)
                        
                        
                        Text("1 (Remastered")
                            .foregroundStyle(.white)
                            .fontWeight(.bold)
                        
                        Text("The Beatles")
                            .foregroundStyle(.white)
                    }
                    .padding(30)
                    
                    VStack {
                      
                        Button {
                            
                        } label: {
                           
                            Image("logo")
                                .resizable()
                                .frame(width: 20, height: 20)
                                .padding(.leading, 15)
                            
                            Text("Like")
                                .foregroundStyle(.white)
                                .fontWeight(.bold)
                                .padding(.vertical, 15)
                                .padding(.horizontal, 20)
                        }
                        Button {
                            
                        } label: {
                           
                            Image("logo")
                                .resizable()
                                .frame(width: 20, height: 20)
                                .padding(.leading, 15)
                            
                            Text("Like")
                                .foregroundStyle(.white)
                                .fontWeight(.bold)
                                .padding(.vertical, 15)
                                .padding(.horizontal, 20)
                        }
                        Button {
                            
                        } label: {
                           
                            Image("logo")
                                .resizable()
                                .frame(width: 20, height: 20)
                                .padding(.leading, 15)
                            
                            Text("Like")
                                .foregroundStyle(.white)
                                .fontWeight(.bold)
                                .padding(.vertical, 15)
                                .padding(.horizontal, 20)
                        }
                        Button {
                            
                        } label: {
                           
                            Image("logo")
                                .resizable()
                                .frame(width: 20, height: 20)
                                .padding(.leading, 15)
                            
                            Text("Like")
                                .foregroundStyle(.white)
                                .fontWeight(.bold)
                                .padding(.vertical, 15)
                                .padding(.horizontal, 20)
                        }
                        
                       
                    }
                
                    
                    Spacer()
                  
                }
                .padding()
                
                
            }
            
        }
    }
}

#Preview {
    AlbumView()
}
