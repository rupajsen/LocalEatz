//
//  ContentView.swift
//  profile
//
//  Created by Dewashish Dubey on 19/12/23.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationView
        {
            VStack{
//                ZStack {
//                   /* HStack {
//                        Image(systemName: "line.3.horizontal")
//                            .resizable()
//                            .padding()
//                            .frame(width: 50, height: 50)
//                        
//                        Spacer()
//                    }*/
//                    
//                    Text("My Profile")
//                        .font(.title2)
//                        .fontWeight(.bold)
//                }
//                .frame(maxWidth: .infinity, alignment: .center)
//                .padding(.bottom)
                
                HStack(spacing:150){
                    Text("Personal Details")
                    NavigationLink("Edit", destination: EditProfile())
                        .foregroundColor(.orange)
                        .font(.system(size: 15))
                }.frame(maxWidth: .infinity,alignment: .leading)
                    .padding([.horizontal],15)
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
                .background(Color.white)
                .padding([.horizontal],15)
                .padding([.bottom],10)
                HStack(spacing:185){
                    NavigationLink("My Friends", destination: MyFriends())
                        .foregroundColor(.black)
                        .padding()
                        .font(.system(size: 14, weight: .regular, design: .rounded))
                    Image(systemName: "chevron.forward")
                }   .frame(maxWidth: .infinity,alignment: .leading)
                    .background(
                        Color.white
                            .cornerRadius(20))
                    .padding([.horizontal],15)
                    .padding([.bottom],10)
                    .padding([.top],5)
                
                HStack(spacing:165){
                    NavigationLink("Places Visited", destination: PlacesVisited())
                        .foregroundColor(.black)
                        .padding()
                        .font(.system(size: 14, weight: .regular, design: .rounded))
                    Image(systemName: "chevron.forward")
                }   .frame(maxWidth: .infinity,alignment: .leading)
                    .background(
                        Color.white
                            .cornerRadius(20))
                    .padding([.horizontal],15)
                    .padding([.bottom],10)
                    .padding([.top],5)
                
                HStack(spacing:180){
                    NavigationLink("My Reviews", destination: MyReviews())
                        .foregroundColor(.black)
                        .padding()
                        .font(.system(size: 14, weight: .regular, design: .rounded))
                    Image(systemName: "chevron.forward")
                }   .frame(maxWidth: .infinity,alignment: .leading)
                    .background(
                        Color.white
                            .cornerRadius(20))
                    .padding([.horizontal],15)
                    .padding([.bottom],10)
                    .padding([.top],5)
                
                HStack(spacing:155){
                    NavigationLink("Add Restaurant", destination: AddRestaurant())
                        .foregroundColor(.black)
                        .padding()
                        .font(.system(size: 14, weight: .regular, design: .rounded))
                    Image(systemName: "chevron.forward")
                }   .frame(maxWidth: .infinity,alignment: .leading)
                    .background(
                        Color.white
                            .cornerRadius(20))
                    .padding([.horizontal],15)
                    .padding([.bottom],10)
                    .padding([.top],5)
                
                HStack(spacing:180){
                    NavigationLink("Add Foodie", destination: AddFoodie())
                        .foregroundColor(.black)
                        .padding()
                        .font(.system(size: 14, weight: .regular, design: .rounded))
                    Image(systemName: "chevron.forward")
                }   .frame(maxWidth: .infinity,alignment: .leading)
                    .background(
                        Color.white
                            .cornerRadius(20))
                    .padding([.horizontal],15)
                    .padding([.bottom],30)
                    .padding([.top],5)
                
                
                Spacer()
            }.padding()
                .background(Color("backgroundColor"))
        }  
        .navigationTitle("My Profile")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    ProfileView()
}
