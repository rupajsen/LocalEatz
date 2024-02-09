//
//  ProfileView.swift
//  MyImages
//
//  Created by Dewashish Dubey on 07/02/24.
//

import SwiftUI
import PhotosUI
struct ProfileView: View {
    
    @State private var showingEditProfile:Bool = false
    
    
    @FetchRequest(sortDescriptors: [SortDescriptor(\.name)])
    private var MyImages : FetchedResults<MyImage>
    @StateObject private var imagePicker = ImagePicker()
    
    @State private var formType: FormType?
    let columns = [GridItem(.adaptive(minimum: 100))]
    
    var body: some View {
        List{
            Section{
                HStack {
                        //Text(user.initials)
                        Text("RS")
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundStyle(.white)
                            .frame(width: 72, height: 72)
                            .background(Color(.systemGray3))
                            .clipShape(Circle())
                        
                        
                    
                    
                    VStack(alignment: .leading, spacing: 4){
                        HStack(spacing:120)
                        {
                            //Text(user.fullname)
                            Text("Rupaj Sen")
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
                        
                        
                        //Text(user.email)
                        Text("test@gmail.com")
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
                    AddData()
                } label: {
                    Image(systemName: "plus.circle.fill")
                    Text("Add restaurant")                        //.padding(.leading,-70)
                }.padding(-10)
                /*Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    PhotosPicker("New Image",
                                 selection: $imagePicker.imageSelection,
                                 matching: .images,
                                 photoLibrary: .shared())
                    .foregroundColor(.black)
                    //.buttonStyle(.borderedProminent)
                })
                .onChange(of: imagePicker.uiImage){ newImage in
                    if let newImage{
                        formType = .new(newImage)
                    }
                }
                .sheet(item: $formType){$0}
                
                NavigationLink {
                    RestaurantRecommendation()
                } label: {
                    Text("Show Data")
                        .foregroundColor(.orange)
                        .font(.system(size: 15))
                        //.padding(.leading,-70)
                }*/
                
                //new copied end
                NavigationLink {
                    AddFoodie().navigationBarBackButtonHidden(false)
                } label: {
                        Image(systemName: "person.fill.badge.plus")
                        Text("Add Foodie")
                }
                .padding(-10)
                
                /*Button {
                    viewModel.signOut()
                } label: {
                    SettingsRowView(imageName: "arrow.left.circle.fill", title: "Sign Out", tintColor: .red)
                }
               .padding(-10)*/
                
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

#Preview {
    ProfileView()
}
