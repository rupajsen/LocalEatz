//
//  ContentView.swift
//  HomePage
//
//  Created by user1 on 19/12/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView
        {
            
            VStack
            {
                HStack(spacing:40)
                {
                    Text("Chandigarh,Punjab")
                        .font(.system(size: 22, weight: .semibold, design: .rounded))
                        .foregroundColor(.orange)
                        .padding(.leading,40)
                        .padding(.trailing)
                    NavigationLink(destination: login_page().navigationBarBackButtonHidden(false)) {
                        Image(systemName: "person.crop.circle")
                            .resizable()
                            .frame(width:36,height:36)
                            .foregroundColor(.black)
                    }
                }
                .padding(.bottom)
                ScrollView{
                    
                    
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
                    .background(Color("coreOrange"))
                    .cornerRadius(10)
                    .padding([.horizontal],15)
                    .padding([.bottom],10)
                    
                    
                    VStack
                    {
                        
                        HStack{
                            Text("Upcoming Trips")
                                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
                                .padding()
                                .font(.system(size: 20, weight: .semibold, design: .rounded))
                            
                            NavigationLink {
                                upcomingTrips()
                            } label: {
                                Text("View All")
                                    .foregroundColor(.orange)
                                    .font(.system(size: 15))
                                    //.padding(.leading,-70)
                            }
                            
                            /*Text("View All")
                                .foregroundColor(.orange)
                                .font(.system(size: 15))*/
                        }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
                            .padding([.horizontal],15)
                            .padding(.bottom,-10)
                        
                        ScrollView(.horizontal,showsIndicators: false)
                        {
                            HStack
                            {
                                ForEach(upcomingTripsCard) { item in
                                    HStack {
                                        
                                        VStack
                                        {
                                            Text(item.placeName)
                                                .font(.title)
                                                .font(.system(size: 22))
                                                .fontWeight(.bold)
                                                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                                            
                                            Text(item.placeDate)
                                                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                                                .fontWeight(.bold)
                                            
                                            
                                            Text(item.knowMore)
                                                .underline()
                                                .font(.system(size:15, weight: .semibold, design: .rounded))
                                                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                                        }
                                        .padding(10)
                                        
                                        Image(item.placeImage)
                                            .resizable()
                                            .frame(width:200,height: 150)
                                        
                                    }
                                    .background(Color.white)
                                    .cornerRadius(15)
                                }
                                
                            }
                            
                        }.padding(.bottom,20).padding(.horizontal,20)
                        
                        Divider()
                        
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
                                ForEach(Restaurantcards) { item in
                                    VStack
                                    {
                                        Image(item.image)
                                            .resizable()
                                            .frame(width:200,height: 100)
                                        NavigationLink(item.restaurantName, destination: AboutView())
                                            .font(.system(size: 18, weight: .medium, design: .rounded))
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
                                        .frame(maxWidth: .infinity,alignment: .leading)
                                        .padding(.leading,5)
                                        .padding(.bottom,15)
                                    }
                                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
                                    .background(Color.white)
                                    .cornerRadius(10)
                                    .padding(.trailing,20)

                                                    } 
                            }
                            
                        }.padding(.bottom,20).padding(.horizontal,20)
                    }
                    
                    
                    Divider()
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
                                ForEach(localDelicaciesCard){ item in
                                    VStack
                                    {
                                        Image(item.foodImage)
                                            .resizable()
                                            .frame(width:200,height: 100)
                                        Text(item.foodName)
                                            .font(.system(size: 18, weight: .medium, design: .rounded))
                                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
                                            .padding(.bottom,-3)
                                            .padding(.leading,5)
                                        
                                        Text(item.foodRestaurant)
                                            .font(.system(size: 18, weight: .light, design: .rounded))
                                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
                                            .padding(.bottom,-3)
                                            .padding(.leading,5)
                                        
                                        
                                    }
                                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
                                    .background(Color.white)
                                    .cornerRadius(10)
                                    .padding(.trailing,20)
                                }
                            
                            }
                        }.padding(.bottom,20).padding(.horizontal,20)
                    }
                    
                }
            }
                .frame(maxWidth: .infinity,maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .background(Color("backgroundColor"))
            }
    }
}

#Preview {
    HomeView()
}
