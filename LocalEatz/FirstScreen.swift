//
//  ContentView.swift
//  TestApp
//
//  Created by Dewashish Dubey on 16/12/23.
//

import SwiftUI
struct FirstScreen: View {
    var body: some View {
        NavigationView{
            VStack
            {
                Image("icon")
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment:.leading)
                    .padding([.leading])
                    //.padding([.bottom],20)
                Text("LocalEatz")
                    .font(.system(size: 64, weight: .bold, design: .rounded))
                    .foregroundColor(.white)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
                    .padding([.leading])
                //.padding([.bottom],-3)
                /*Text("the Eat!")
                    .font(.system(size: 64, weight: .bold, design: .rounded))
                    .foregroundColor(.white)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
                    .padding([.leading])*/
                Image("introImage")
                    .padding([.top],5)
                    .padding(.bottom)
                
                
                NavigationLink {
                    ContentView().navigationBarBackButtonHidden(true)
                } label: {
                    Text("Get Started")
                        .font(.system(size: 28, weight: .bold, design: .rounded))
                        .foregroundColor(Color.black)
                        .padding(10)
                        .padding(.horizontal,80)
                        .background(
                            Color.white
                                .cornerRadius(20))
                }
                
                Spacer()
            }
            .background
            {
                Color("orange")
                    .ignoresSafeArea()
            }
        }
    }
}
#Preview {
    FirstScreen()
}
