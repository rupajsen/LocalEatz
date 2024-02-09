//
//  ShowData.swift
//  MyImages
//
//  Created by Dewashish Dubey on 06/02/24.
//

import SwiftUI

struct ShowData: View {
    
    @State private var searchItem = ""
    //@Binding var restaurantName : String
    
    @FetchRequest(sortDescriptors: [SortDescriptor(\.name)])
    private var MyImages : FetchedResults<MyImage>
    @StateObject private var imagePicker = ImagePicker()
    
    @State private var formType: FormType?
    let columns = [GridItem(.adaptive(minimum: 100))]
    
    
    @State var name : String = ""  //to pass retsaurant name to aboutview
    var body: some View {
        Group
        {
            if !MyImages.isEmpty{
                //display the data
                //new
                
                
                NavigationStack
                {
                    VStack
                    {
                        ScrollView(.horizontal,showsIndicators: false)
                        {
                            HStack
                            {
                                HStack {
                                    HStack {
                                        Image(systemName: "line.3.horizontal.decrease.circle")
                                        Text("Filters")
                                    }
                                            .font(.system(size: 15, weight: .thin, design: .rounded))
                                            .padding(6)
                                            .background(Color.white)
                                            .cornerRadius(5)

                                    
                                    HStack {
                                        Image(systemName: "dot.square")
                                            .foregroundColor(.green)
                                        Text("Veg")
                                    }
                                            .font(.system(size: 15, weight: .thin, design: .rounded))
                                            .padding(6)
                                            .background(Color.white)
                                            .cornerRadius(5)
                                    
                                    HStack {
                                        Image(systemName: "dot.square")
                                            .foregroundColor(.red)
                                        Text("Non-Veg")
                                    }
                                            .font(.system(size: 15, weight: .thin, design: .rounded))
                                            .padding(6)
                                            .background(Color.white)
                                            .cornerRadius(5)
                                    
                                    HStack {
                                        Image(systemName: "map")
                                            .foregroundColor(.blue)
                                        Text("Nearest")
                                    }
                                            .font(.system(size: 15, weight: .thin, design: .rounded))
                                            .padding(6)
                                            .background(Color.white)
                                            .cornerRadius(5)
                                    
                                    HStack {
                                        Image(systemName: "star")
                                            .foregroundColor(.orange)
                                        Text("Rating")
                                    }
                                            .font(.system(size: 15, weight: .thin, design: .rounded))
                                            .padding(6)
                                            .background(Color.white)
                                            .cornerRadius(5)
                                    
                                }
                            }
                            .padding(.leading)
                        }
                        
                        
                        ScrollView{
                            VStack
                            {
                                HStack{
                                    Text("Restaurants Recommended")
                                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
                                        .font(.system(size: 20, weight: .semibold, design: .rounded))
                    
                                }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
                                    .padding()
                                
                                
                                ScrollView
                                {
                                   
                                    //LazyVGrid(columns: columns, spacing: 20){
                                    VStack
                                    {
                                        ForEach(MyImages){ myImage in
                                                Button{
                                                    formType = .update(myImage)
                                                } label:{
                                                    VStack{
                                                        //copy paste
                                                       // if(myImage.ratingView == "4.2")
                                                       // {
                                                            VStack
                                                            {
                                                                
                                                                VStack {
                                                                    Image(uiImage: myImage.uiImage)
                                                                        .resizable()
                                                                        .frame(width:360,height: 200)
                                                                }
                                                                .frame(maxWidth:.infinity,alignment:.leading)
                                                                //.padding()
                                                                NavigationLink(){
                                                                    AboutView(name : myImage.nameView)
                                                                }label:{
                                                                    Text(myImage.nameView)
                                                                        .font(.system(size: 24, weight: .medium, design: .rounded))
                                                                        .foregroundColor(.black)
                                                                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
                                                                        .padding(.bottom,-3)
                                                                        .padding(.leading,5)
                                                                }
                                                                HStack
                                                                {
                                                                    Image(systemName: "star.fill")
                                                                        .symbolRenderingMode(.multicolor)
                                                                    Text(myImage.ratingView)
                                                                        .font(.system(size: 14, weight: .thin, design: .rounded))
                                                                        .foregroundStyle(Color.black)
                                                                    /*Text(item.numberOfRatings)
                                                                     .font(.system(size: 14, weight: .thin, design: .rounded))*/
                                                                }
                                                                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
                                                                .padding(.bottom,3)
                                                                .padding(.leading,5)
                                                                HStack{
                                                                    Text(myImage.mustHave1View)
                                                                        .font(.system(size: 12, weight: .thin, design: .rounded))
                                                                        .padding(6)
                                                                        .foregroundStyle(Color.black)
                                                                    .background(Color("softBackground"))
                                                                        .cornerRadius(5)
                                                                    
                                                                    Text(myImage.mustHave2View)
                                                                        .font(.system(size: 12, weight: .thin, design: .rounded))
                                                                        .padding(6)
                                                                        .foregroundStyle(Color.black)
                                                                     .background(Color("softBackground"))
                                                                        .cornerRadius(5)
                                                                }
                                                                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
                                                                .padding(.leading,5)
                                                                .padding(.bottom,15)
                                                                
                                                                //description of restaurant NO NEED TO ENABLE
                                                                //Text(myImage.aboutImageView)
                                                                
                                                                /*NavigationLink {
                                                                   AboutRestaurant(restaurantName: $restaurantName)
                                                                } label: {Text("Show More")}*/
                                                                
                                                                
                                                                
                                                            }
                                                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
                                                            .background(Color.white)
                                                            .cornerRadius(10)
                                                            .padding(.bottom,20)
                                                            
                                                            
                                                            //main thing
                                                            /*Image(uiImage: myImage.uiImage)
                                                             .resizable()
                                                             .scaledToFill()
                                                             .frame(width: 100,height: 100)
                                                             .clipped()
                                                             .shadow(radius: 5.0)
                                                             Text(myImage.nameView)
                                                             Text(myImage.ratingView)*/
                                                            
                                                            
                                                        //}
                                                    }
                                                    .onChange(of: imagePicker.uiImage){ newImage in
                                                        if let newImage{
                                                            formType = .new(newImage)
                                                        }
                                                    }
                                                    .sheet(item: $formType){$0}
                                                }
                                        }
                                    }
                                    
                                    //}
                                }
                                .padding()
                            }
                    }
                }
                    .frame(maxWidth: .infinity,maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .background(Color("backgroundColor"))
                }
                .searchable(text: $searchItem, prompt: "Find for food or restaurant...")
                //new ends
                
            }
            else{
                Text("No data as of now")
            }
        }
        .background(Color("backgroundColor")) //change it to gray background of app
        .searchable(text: $searchItem, prompt: "Find for food or restaurant...")
    }
}

#Preview {
    ShowData()
}
