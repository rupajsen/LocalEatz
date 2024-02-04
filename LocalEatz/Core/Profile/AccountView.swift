//
//  AccountView.swift
//  LocalEatz
//
//  Created by Rupaj Sen on 21/01/24.
//

import SwiftUI

struct AccountView: View {
    @State private var showingEditProfile:Bool = false
    @EnvironmentObject var viewModel: AuthViewModel
    var body: some View {
        if let user = viewModel.currentUser{
            List{
                Section{
                    HStack {
                            Text(user.initials)
                                .font(.title)
                                .fontWeight(.semibold)
                                .foregroundStyle(.white)
                                .frame(width: 72, height: 72)
                                .background(Color(.systemGray3))
                                .clipShape(Circle())
                            
                            
                        
                        
                        VStack(alignment: .leading, spacing: 4){
                            HStack(spacing:120)
                            {
                                Text(user.fullname)
                                    .font(.subheadline)
                                    .fontWeight(.semibold)
                                    .padding(.top, 4)
                                HStack
                                {
                                    Button("Edit"){
                                                    showingEditProfile.toggle()
                                                }
                                                    .sheet(isPresented: $showingEditProfile) {
                                                    } content: {
                                                        EditProfile()
                                                            .presentationDragIndicator(.visible)
                                                    }
                                }
                                .font(.system(size: 14, weight: .semibold, design: .rounded))
                                .foregroundColor(.orange)
                               
                            }
                            
                            
                            Text(user.email)
                                .font(.footnote)
                                .foregroundStyle(.gray)
                            

                        }
                    }
                }
                
                
                /*Section("General"){
                    HStack {
                        SettingsRowView(imageName: "gear", title: "Version", tintColor: Color(.systemGray))
                        Spacer()
                        
                        Text("1.0.0")
                            .font(.subheadline)
                            .foregroundStyle(.gray)
                    }
                }*/
                
                Section("Account"){
                    
                    
                    NavigationLink {
                        MyFriends().navigationBarBackButtonHidden(false)
                    } label: {
                            Image(systemName: "figure.wave")
                            Text("My Friends")
                    
                    }
                    .padding(-10)
                    
                    NavigationLink {
                        PlacesVisited().navigationBarBackButtonHidden(false)
                    } label: {
                            Image(systemName: "clock")
                            Text("Places Visited")
                    }
                    .padding(-10)
                    
                    NavigationLink {
                        MyReviews().navigationBarBackButtonHidden(false)
                    } label: {
                            Image(systemName: "book")
                            Text("My Reviews")
                    }
                    .padding(-10)
                    
                    NavigationLink {
                        AddRestaurant().navigationBarBackButtonHidden(false)
                    } label: {
                            Image(systemName: "plus.circle.fill")
                            Text("Add Restaurant")
                    }
                    .padding(-10)
                    
                    
                    NavigationLink {
                        AddFoodie().navigationBarBackButtonHidden(false)
                    } label: {
                            Image(systemName: "person.fill.badge.plus")
                            Text("Add Foodie")
                    }
                    .padding(-10)
                    
                    Button {
                        viewModel.signOut()
                    } label: {
                        SettingsRowView(imageName: "arrow.left.circle.fill", title: "Sign Out", tintColor: .red)
                    }
                   .padding(-10)
                    
                   // HStack(spacing:150){
                        //Text("Personal Details")
                        
                        

                        
                            //.foregroundColor(.orange)
                            //.font(.system(size: 15))
                        
                   //}.frame(maxWidth: .infinity,alignment: .leading)
                       // .padding([.horizontal],30)
                }
            }
        }
    }
}

#Preview {
    AccountView()
}
