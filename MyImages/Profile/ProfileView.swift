//
//  ProfileView.swift
//  MyImages
//
//  Created by Dewashish Dubey on 07/02/24.
//

import SwiftUI
import PhotosUI
import Auth0

struct ProfileView: View {
    
    
    @State private var isAuthenticated = false
    @State var userProfile = Profile.empty
    
    
    @State private var showingEditProfile:Bool = false
    @FetchRequest(sortDescriptors: [SortDescriptor(\.name)])
    private var MyImages : FetchedResults<MyImage>
    @StateObject private var imagePicker = ImagePicker()
    
    @State private var formType: FormType?
    let columns = [GridItem(.adaptive(minimum: 100))]
    
    
    var body: some View {
        if isAuthenticated
        {
            List{
                Section{
                    HStack {
                        //Text(user.initials)
                        /*Text("RS")
                         .font(.title)
                         .fontWeight(.semibold)
                         .foregroundStyle(.white)
                         .frame(width: 72, height: 72)
                         .background(Color(.systemGray3))
                         .clipShape(Circle())*/
                       // Image(userProfile.picture)
                        
                        UserImage(urlString: userProfile.picture)
                            .frame(width: 60, height: 60)
                            .background(Color(.systemGray3))
                            .clipShape(Circle())
                        
                        VStack(alignment: .leading, spacing: 4){
                            HStack(spacing:120)
                            {
                                //Text(user.fullname)
                                Text(userProfile.name)
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
                            Text(userProfile.email)
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
                    
                    Button("Log out") {
                        logout()
                    }
                    
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
        }else
        {
        
        // “Logged out” screen
        // ------------------
        // When the user is logged out, they should see:
        //
        // - The title text “SwiftUI Login Demo”
        // - The ”Log in” button
        
        VStack {
          
          Text("You need to be logged in to see your profile")
           
          
          Button("Log in") {
            login()
          }
          .frame(width: 100,height:50)
          .background(Color.orange)
          .cornerRadius(10)
          .foregroundColor(.black)
          //.buttonStyle(MyButtonStyle())
          
        } // VStack
        
      } // if isAuthenticated
    }
    struct MyButtonStyle: ButtonStyle {
      let navyBlue = Color(red: 0, green: 0, blue: 0.5)
      
      func makeBody(configuration: Configuration) -> some View {
        configuration.label
          .padding()
          .background(navyBlue)
          .foregroundColor(.white)
          .clipShape(Capsule())
      }
    }
    
    struct UserImage: View {
      // Given the URL of the user’s picture, this view asynchronously
      // loads that picture and displays it. It displays a “person”
      // placeholder image while downloading the picture or if
      // the picture has failed to download.
      
      var urlString: String
      
      var body: some View {
        AsyncImage(url: URL(string: urlString)) { image in
          image
            .frame(maxWidth: 128)
        } placeholder: {
          Image(systemName: "person.circle.fill")
            .resizable()
            .scaledToFit()
            .frame(maxWidth: 128)
            .foregroundColor(.blue)
            .opacity(0.5)
        }
        .padding(40)
      }
    }
    
}

extension ProfileView {
  
  private func login() {
      Auth0
          .webAuth()
          .start{ result in
              switch result{
              case .failure(let error):
                  print(error)
                
              case .success(let credentials):
                  self.isAuthenticated = true
                  self.userProfile = Profile.from(credentials.idToken)
                  print("Credentials \(credentials)")
                  print("ID token \(credentials.idToken)")
              }//switch
          }
  }
  
  private func logout() {
      Auth0
          .webAuth()
          .clearSession{ result in
              
              switch result{
              case .failure(let error):
                  print(error)
                
              case .success(let credentials):
                  self.isAuthenticated = false
                  self.userProfile = Profile.empty
              }//switch
          }
  }
}

#Preview {
    ProfileView()
}
