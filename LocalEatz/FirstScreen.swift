//
//  ContentView.swift
//  TestApp
//
//  Created by Dewashish Dubey on 16/12/23.
//

import SwiftUI
struct FirstScreen: View {
    var body: some View {
        NavigationView{
            VStack
            {
                Image("icon")
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment:.leading)
                    .padding([.leading])
                    //.padding([.bottom],20)
                Text("LocalEatz")
                    .font(.system(size: 64, weight: .bold, design: .default))
                    .foregroundColor(.white)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
                    .padding([.leading])
                //.padding([.bottom],-3)
                /*Text("the Eat!")
                    .font(.system(size: 64, weight: .bold, design: .rounded))
                    .foregroundColor(.white)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
                    .padding([.leading])*/
                
                    
                    /*ScrollView(.horizontal)
                    {
                        HStack(spacing : 10)
                        {
                            Text("Hello World abcdef")
                        }
                        .padding()
                        //.padding(.horizontal, 30)
                        .frame(width: 300,height:450,alignment: .topLeading)//remove of shadow not required
                        .background(Color.white)
                        
                        
                    }
                    .background(Color.blue)
                    .padding([.leading,.trailing])
                    //.frame(maxWidth: .infinity,alignment: .center)
                    .scrollIndicators(.hidden)*/
                
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
                }
                
                Spacer()
            }
            .background
            {
                Color("orange")
                    .ignoresSafeArea()
            }
        }
    }
    
    @ViewBuilder
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
    }
}
#Preview {
    FirstScreen()
}
