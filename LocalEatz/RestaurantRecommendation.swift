//
//  RestaurantRecommendation.swift
//  LocalEatz
//
//  Created by user1 on 10/01/24.
//

import Foundation
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
                        
                        
                        ScrollView(.horizontal,showsIndicators: false)
                        {
                            HStack
                            {
                                VStack
                                {
                                    Image("dhaba")
                                        .resizable()
                                        .frame(width:200,height: 100)
                                    NavigationLink("Gulshan Dhaba", destination: AboutView())
                                        .font(.system(size: 18, weight: .medium, design: .rounded))
                                        .foregroundColor(.black)
                                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
                                        .padding(.bottom,-3)
                                        .padding(.leading,5)
                                    HStack
                                    {
                                        Image(systemName: "star.fill")
                                            .symbolRenderingMode(.multicolor)
                                        Text("4.5")
                                            .font(.system(size: 14, weight: .thin, design: .rounded))
                                        Text("(25+)")
                                            .font(.system(size: 14, weight: .thin, design: .rounded))
                                    }
                                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
                                    .padding(.bottom,3)
                                    .padding(.leading,5)
                                    HStack
                                    {
                                        Image(systemName: "clock")
                                            .symbolRenderingMode(.multicolor)
                                        Text("10-15 mins")
                                            .font(.system(size: 14, weight: .thin, design: .rounded))
                                    }
                                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
                                    .padding(.leading,5)
                                    HStack{
                                        Text("FISH FRY")
                                            .font(.system(size: 12, weight: .thin, design: .rounded))
                                            .padding(6)
                                            .background(Color("softBackground"))
                                            .cornerRadius(5)
                                        
                                        Text("FAST FOOD")
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
                                .padding(.trailing,20)
                                
                                
                                VStack
                                {
                                    Image("dhaba")
                                        .resizable()
                                        .frame(width:200,height: 100)
                                    Text("Gulshan Dhaba")
                                        .font(.system(size: 18, weight: .medium, design: .rounded))
                                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
                                        .padding(.bottom,-3)
                                        .padding(.leading,5)
                                    HStack
                                    {
                                        Image(systemName: "star.fill")
                                            .symbolRenderingMode(.multicolor)
                                        Text("4.5")
                                            .font(.system(size: 14, weight: .thin, design: .rounded))
                                        Text("(25+)")
                                            .font(.system(size: 14, weight: .thin, design: .rounded))
                                    }
                                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
                                    .padding(.bottom,3)
                                    .padding(.leading,5)
                                    HStack
                                    {
                                        Image(systemName: "clock")
                                            .symbolRenderingMode(.multicolor)
                                        Text("10-15 mins")
                                            .font(.system(size: 14, weight: .thin, design: .rounded))
                                    }
                                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
                                    .padding(.leading,5)
                                    HStack{
                                        Text("FISH FRY")
                                            .font(.system(size: 12, weight: .thin, design: .rounded))
                                            .padding(6)
                                            .background(Color("softBackground"))
                                            .cornerRadius(5)
                                        
                                        Text("FAST FOOD")
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
                            }
                            
                        }.padding(.bottom,20).padding(.horizontal,20)
                    }
                
                
                VStack
                {
                    HStack{
                        Text("Local Delicacies")
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
                            .padding()
                            .font(.system(size: 20, weight: .semibold, design: .rounded))
                        Text("View All")
                            .foregroundColor(.orange)
                            .font(.system(size: 15))
                    }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
                        .padding([.horizontal],15)
                    
                    ScrollView(.horizontal,showsIndicators: false)
                    {
                        HStack
                        {
                            VStack
                            {
                                Image("fishFry")
                                    .resizable()
                                    .frame(width:200,height: 100)
                                Text("Fish Fry")
                                    .font(.system(size: 18, weight: .medium, design: .rounded))
                                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
                                    .padding(.bottom,-3)
                                    .padding(.leading,5)
                                
                                Text("Gulshan Plaza")
                                    .font(.system(size: 18, weight: .light, design: .rounded))
                                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
                                    .padding(.bottom,-3)
                                    .padding(.leading,5)
                                
                                
                            }
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
                            .background(Color.white)
                            .cornerRadius(10)
                            .padding(.trailing,20)
                            
                            
                            VStack
                            {
                                Image("dalMakhni")
                                    .resizable()
                                    .frame(width:200,height: 100)
                                Text("Butter Chicken")
                                    .font(.system(size: 18, weight: .medium, design: .rounded))
                                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
                                    .padding(.bottom,-3)
                                    .padding(.leading,5)
                                
                                Text("Gulshan Plaza")
                                    .font(.system(size: 18, weight: .light, design: .rounded))
                                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
                                    .padding(.bottom,-3)
                                    .padding(.leading,5)
                                
                            }
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
                            .background(Color.white)
                            .cornerRadius(10)
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
}
