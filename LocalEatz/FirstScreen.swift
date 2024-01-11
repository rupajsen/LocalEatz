//
//  ContentView.swift
//  TestApp
//
//  Created by Dewashish Dubey on 16/12/23.
//

import SwiftUI
struct FirstScreen: View {
    var body: some View {
        NavigationView
        {
            TabView
            {
                pageView(imageName: "introductoryImage1", title: "Local Popular Dishes that make you droll",showDismissButton: false)
                    .background(Color("coreOrange"))

                pageView(imageName: "airplane", title: "aerolane",showDismissButton: false)
                    .background(Color.blue)
                
                pageView(imageName: "bookmark", title: "bookmark",showDismissButton: true)
                    .background(Color.green)
            }
            .background(
                Color("coreOrange").edgesIgnoringSafeArea(.all)
                  )
            .tabViewStyle(PageTabViewStyle())
        }
        

        
        /*NavigationView{
            VStack
            {
                /*Image("icon")
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment:.leading)
                    .padding([.leading])
                Text("LocalEatz")
                    .font(.system(size: 64, weight: .bold, design: .default))
                    .foregroundColor(.white)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
                    .padding([.leading])
                
                GeometryReader(content: { geometry in
                    let size = geometry.size
                    
                    ScrollView(.horizontal)
                    {
                        HStack(spacing : 10)
                        {
                            
                            ForEach(Cards)
                            {
                                card in GeometryReader(content: {proxy in
                                    let cardsize = proxy.size
                                    Image(card.image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: cardsize.width,height: cardsize.height)
                                        .overlay{
                                            OverlayView(card)
                                        }
                                        .clipShape(RoundedRectangle(cornerRadius: 15))
                                        .shadow(color: .black.opacity(0.25), radius: 8, x: 5, y: 10)
                                })
                                .frame(width: size.width-60 ,height: size.height-50)
                                .scrollTransition(.interactive.threshold(.visible(0.9))) { content, phase in
                                                content
                                                    .opacity(phase.isIdentity ? 1 : 0)
                                                    .scaleEffect(phase.isIdentity ? 1 : 0.75)
                                                    .blur(radius: phase.isIdentity ? 0 : 10)
                                            }
                                /* padding of 30 applied to hstack(total 60 from both sides)
                                so removing 60 width from the images */
                            }
                        }
                        .padding(.horizontal, 30)
                        .scrollTargetLayout()
                        .frame(height:size.height,alignment:.top)//remove of shadow not required
                    }
                    .scrollTargetBehavior(.viewAligned)
                    .scrollIndicators(.hidden)
                })
                .frame(height: 500)
                .padding(.horizontal,-15)
                //.padding(.top,10)
                /*Image("introImage")
                    .padding([.top],5)
                    .padding(.bottom)*/
                
                
                NavigationLink {
                    ContentView().navigationBarBackButtonHidden(true)
                } label: {
                    Text("Get Started")
                        .font(.system(size: 28, weight: .bold, design: .rounded))
                        .foregroundColor(Color.black)
                        .padding(10)
                        .padding(.horizontal,80)
                        .background(
                            Color.white
                                .cornerRadius(20))
                }*/
                
                Spacer()
            }
            .background
            {
                Color("coreOrange")
                    .ignoresSafeArea()
            }*/
        }
    }
struct pageView : View{
    let imageName : String
    let title : String
    let showDismissButton : Bool
    
    
    var body: some View{
        
        VStack
        {
            HStack
            {
                Image("logo")
                VStack
                {
                    Text("LocalEatz")
                        .font(.system(size: 24, weight: .bold, design: .rounded))
                        .foregroundStyle(.white)
                    Divider()
                        .frame(width:150,height:3)
                        .overlay(.white)
                        .padding(.top,-10)
                        //.padding(.bottom,-100)
                    Text("Find Local Treasures")
                        .foregroundStyle(.white)
                        .font(.system(size: 16, weight: .semibold, design: .rounded))
                    
                }
                .frame(width: .infinity,alignment: .leading)
            }
            Image(imageName)
                .resizable()
                .frame(width:150,height: 150)
                .padding()
                
            Text(title)
            
            if showDismissButton
            {
                
                NavigationLink {
                    ContentView().navigationBarBackButtonHidden(true)
                } label: {
                    Text("Get Started")
                        .font(.system(size: 28, weight: .bold, design: .rounded))
                        .foregroundColor(Color.black)
                        .padding(10)
                        .padding(.horizontal,80)
                        .background(
                            Color.white
                                .cornerRadius(20))
                }
                /*Button(action: {}, label: {
                    Text("Get Started")
                        .font(.system(size: 28, weight: .bold, design: .rounded))
                        .foregroundColor(Color.black)
                        .padding(10)
                        .padding(.horizontal,80)
                        .background(
                            Color.white
                                .cornerRadius(20))
                })*/
            }
            Spacer()
            
        }
        .frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .leading)
    }
}
    
    /*@ViewBuilder
    func OverlayView(_ card: IntroductionData) -> some View
    {
        ZStack(alignment: .bottomLeading, content: {
            LinearGradient(colors: [.clear,
                                    .clear,
                                    .clear,
                                    .clear,
                                    .clear,
                                    .black.opacity(0.1),
                                    .black.opacity(0.5),
                                    .black],
                           startPoint: .top,
                           endPoint: .bottom)
            VStack(alignment: .leading, spacing: 4, content: {
                /*Text(card.title)
                    .font(.title2)
                    .fontWeight(.black)
                    .foregroundStyle(.white)*/
                
                Text(card.subTitle)
                    .font(.system(size: 24, weight: .bold, design: .rounded))
                    .foregroundStyle(.white)//.opacity(0.8))
                
            })
            .padding(20)
        })
    }*/


#Preview {
    FirstScreen()
}
