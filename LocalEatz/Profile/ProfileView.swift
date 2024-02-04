//
//  ContentView.swift
//  profile
//
//  Created by Dewashish Dubey on 19/12/23.
//

import SwiftUI

struct ProfileView: View {
    
    @State private var showingEditProfile:Bool = false
    
    var body: some View {
        NavigationView
        {
            VStack{
                ZStack {
                   /* HStack {
                        Image(systemName: "line.3.horizontal")
                            .resizable()
                            .padding()
                            .frame(width: 50, height: 50)
                        
                        Spacer()
                    }*/
                    
                    Text("My Profile")
                        .font(.title2)
                        .fontWeight(.bold)
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding(.bottom)
                .padding(.top,-10)
                
                HStack(spacing:150){
                    Text("Personal Details")
                    
                    

                    Button("Edit"){
                                    showingEditProfile.toggle()
                                }
                                    .sheet(isPresented: $showingEditProfile) {
                                       // print("Sheet dismissed!")
                                    } content: {
                                        EditProfile()
                                            .presentationDragIndicator(.visible)
                                    }
                        .foregroundColor(.orange)
                        .font(.system(size: 15))
                    
                }.frame(maxWidth: .infinity,alignment: .leading)
                    .padding([.horizontal],30)
                
                
                HStack{
                    Image("profileImage")
                    VStack{
                        Text("Rahul Agarwal")
                            .font(.system(size: 20, weight: .semibold, design: .rounded))
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Text("rahulagarwalgmail.com")
                            .font(.system(size: 14, weight: .ultraLight, design: .rounded))
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Divider()
                        Text("+91 9011039271")
                            .font(.system(size: 14, weight: .ultraLight, design: .rounded))
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Divider()
                        Text("Sector 15,Mohali Punjab")
                            .font(.system(size: 14, weight: .ultraLight, design: .rounded))
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }.padding([.trailing],10)
                }
                .frame(maxWidth: .infinity,alignment: .leading)
                .background(Color.white
                    .cornerRadius(12))
                .padding([.horizontal],15)
                .padding([.bottom],10)
                
                
                
                NavigationLink {
                    MyFriends().navigationBarBackButtonHidden(false)
                } label: {
                    HStack(spacing:185)
                    {
                        Text("My Friends")
                            .foregroundColor(.black)
                            .padding()
                            .font(.system(size: 14, weight: .regular, design: .rounded))
                        
                        Image(systemName: "chevron.forward")
                            .foregroundColor(.black)
                    }   
                    .frame(maxWidth: .infinity,alignment: .leading)
                        .background(
                            Color.white
                                .cornerRadius(20))
                        .padding([.horizontal],15)
                        .padding([.bottom],10)
                        .padding([.top],5)
                
                }
                
                
                NavigationLink {
                    PlacesVisited().navigationBarBackButtonHidden(false)
                } label: {
                    HStack(spacing:165){
                        Text("Places Visited")                            .foregroundColor(.black)
                            .padding()
                            .font(.system(size: 14, weight: .regular, design: .rounded))
                        Image(systemName: "chevron.forward")
                            .foregroundColor(.black)
                    }   .frame(maxWidth: .infinity,alignment: .leading)
                        .background(
                            Color.white
                                .cornerRadius(20))
                        .padding([.horizontal],15)
                        .padding([.bottom],10)
                        .padding([.top],5)
                
                }
                
                NavigationLink {
                    MyReviews().navigationBarBackButtonHidden(false)
                } label: {
                    HStack(spacing:180){
                        Text("My Reviews")                            .foregroundColor(.black)
                            .padding()
                            .font(.system(size: 14, weight: .regular, design: .rounded))
                        Image(systemName: "chevron.forward")
                            .foregroundColor(.black)
                    }   .frame(maxWidth: .infinity,alignment: .leading)
                        .background(
                            Color.white
                                .cornerRadius(20))
                        .padding([.horizontal],15)
                        .padding([.bottom],10)
                        .padding([.top],5)
                
                }  
                NavigationLink {
                    AddRestaurant().navigationBarBackButtonHidden(false)
                } label: {
                    HStack(spacing:155){
                        Text("Add Restaurant")                            .foregroundColor(.black)
                            .padding()
                            .font(.system(size: 14, weight: .regular, design: .rounded))
                        Image(systemName: "chevron.forward")
                            .foregroundColor(.black)
                    }   .frame(maxWidth: .infinity,alignment: .leading)
                        .background(
                            Color.white
                                .cornerRadius(20))
                        .padding([.horizontal],15)
                        .padding([.bottom],10)
                        .padding([.top],5)
                
                }
                
                
                NavigationLink {
                    AddFoodie().navigationBarBackButtonHidden(false)
                } label: {
                    HStack(spacing:180){
                        Text("Add Foodie")                            .foregroundColor(.black)
                            .padding()
                            .font(.system(size: 14, weight: .regular, design: .rounded))
                        Image(systemName: "chevron.forward")
                            .foregroundColor(.black)
                    }   .frame(maxWidth: .infinity,alignment: .leading)
                        .background(
                            Color.white
                                .cornerRadius(20))
                        .padding([.horizontal],15)
                        .padding([.bottom],30)
                        .padding([.top],5)
                
                }
                
                
                
                Spacer()
            }.padding()
                .background(Color("backgroundColor"))
        }
    }
}

#Preview {
    ProfileView()
}
