//
//  RestaurantRecommendation.swift
//  LocalEatz
//
//  Created by user1 on 10/01/24.
//

import Foundation
import SwiftUI

struct RestaurantRecommendation: View {
    var body: some View {
        NavigationView
        {
            ScrollView{
                VStack
                {
                    HStack(spacing:40)
                    {
                       /* Image(systemName: "line.3.horizontal")
                            .resizable()
                            .frame(width:20,height:20)*/
                        Text("Chandigarh,Punjab")
                            .font(.system(size: 22, weight: .semibold, design: .rounded))
                            .foregroundColor(.orange)
                            .padding(.leading,40)
                            .padding(.trailing)
                        NavigationLink(destination: login_page()) {
                            Image(systemName: "person.crop.circle")
                                .resizable()
                                .frame(width:36,height:36)
                                .foregroundColor(.black)
                        }
                    }
                    .padding(.bottom)
                        
                    

                    HStack{
                        Image("chdg")
                            .padding()
                        VStack{
                            Text("Welcome")
                                .font(.system(size:30, weight: .semibold, design: .rounded))
                                .foregroundStyle(.white)
                                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                            Text("to")
                                .font(.system(size:30, weight: .semibold, design: .rounded))
                                .foregroundStyle(.white)
                                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                            Text("Chandigarh")
                                .font(.system(size:35, weight: .semibold, design: .rounded))
                                .foregroundStyle(.white)
                                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                            
                            Text("Know more")
                                .underline()
                                .font(.system(size:15, weight: .semibold, design: .rounded))
                                .foregroundStyle(.white)
                                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                             
                        }.padding([.trailing],10)
                    }
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
                        .background(Color("orange"))
                        .cornerRadius(10)
                        .padding([.horizontal],15)
                        .padding([.bottom],10)
                    
                    VStack
                    {
                        HStack{
                            Text("Local Popular Food Places")
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
            .frame(maxWidth: .infinity,maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .background(Color("backgroundColor"))
        }
    }
}

#Preview {
    RestaurantRecommendation()
}