//
//  RestaurantRecommendation.swift
//  MyImages
//
//  Created by Dewashish Dubey on 07/02/24.
//

/*import Foundation
import SwiftUI

struct RestaurantRecommendation: View {
    @State private var searchItem = ""
    
    var body: some View {
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
                        
                        
                        ScrollView(.vertical,showsIndicators: false)
                        {
                            //VStack
                            //{
                            ForEach(Restaurantcards){ item in
                                VStack
                                {
                                    
                                    VStack {
                                        Image(item.image)
                                            .resizable()
                                        .frame(width:360,height: 200)
                                    }
                                    .frame(maxWidth:.infinity,alignment:.leading)
                                        //.padding()
                                    NavigationLink(item.restaurantName, destination: AboutView())
                                        .font(.system(size: 24, weight: .medium, design: .rounded))
                                        .foregroundColor(.black)
                                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
                                        .padding(.bottom,-3)
                                        .padding(.leading,5)
                                    HStack
                                    {
                                        Image(systemName: "star.fill")
                                            .symbolRenderingMode(.multicolor)
                                        Text(item.rating)
                                            .font(.system(size: 14, weight: .thin, design: .rounded))
                                        Text(item.numberOfRatings)
                                            .font(.system(size: 14, weight: .thin, design: .rounded))
                                    }
                                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
                                    .padding(.bottom,3)
                                    .padding(.leading,5)
                                    HStack
                                    {
                                        Image(systemName: "clock")
                                            .symbolRenderingMode(.multicolor)
                                        Text(item.timimg)
                                            .font(.system(size: 14, weight: .thin, design: .rounded))
                                    }
                                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
                                    .padding(.leading,5)
                                    HStack{
                                        Text(item.famousFood[0])
                                            .font(.system(size: 12, weight: .thin, design: .rounded))
                                            .padding(6)
                                            .background(Color("softBackground"))
                                            .cornerRadius(5)
                                        
                                        Text(item.famousFood[1])
                                            .font(.system(size: 12, weight: .thin, design: .rounded))
                                            .padding(6)
                                            .background(Color("softBackground"))
                                            .cornerRadius(5)
                                    }
                                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
                                    .padding(.leading,5)
                                    .padding(.bottom,15)
                                    
                                }
                                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
                                .background(Color.white)
                                .cornerRadius(10)
                                .padding(.bottom,20)
                            }
                        }.padding(.bottom,20).padding(.horizontal,20)
                    }
            }
        }
            .frame(maxWidth: .infinity,maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .background(Color("backgroundColor"))
        }
        .searchable(text: $searchItem, prompt: "Find for food or restaurant...")
    }
}

#Preview {
    RestaurantRecommendation()
}*/
