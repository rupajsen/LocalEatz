//
//  AboutView.swift
//  MyImages
//
//  Created by Dewashish Dubey on 07/02/24.
//

import SwiftUI

struct AboutView: View {
    @State var showAlert : Bool = false
    
    
    @FetchRequest(sortDescriptors: [SortDescriptor(\.name)])
    private var MyImages : FetchedResults<MyImage>
    @StateObject private var imagePicker = ImagePicker()
    
    @State private var formType: FormType?
    let columns = [GridItem(.adaptive(minimum: 100))]
    
    var name : String //to accept restaurant name from showData
    
    var body: some View {
            ScrollView{
                //new copied data
                
                VStack
                {
                    ForEach(MyImages){ myImage in
                            Button{
                                formType = .update(myImage)
                            } label:{
                                VStack
                                {
                                    //copy paste
                                    if(myImage.nameView == name)
                                    {
                                        VStack
                                        {
                                            Image(uiImage: myImage.uiImage)
                                                .resizable()
                                                .frame(width: 330, height: 200)
                                                .shadow(radius: 10)
                                                .cornerRadius(15)
                                            
                                            Text(myImage.nameView)
                                                .font(.system(size: 28, weight: .semibold, design: .rounded))
                                                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                                                .padding(.top,15)
                                                .foregroundStyle(Color.black)
                                            HStack{
                                                Image(systemName: "star.fill")
                                                    .symbolRenderingMode(.multicolor)
                                                Text(myImage.ratingView)
                                                    .font(.system(size: 14, weight: .thin, design: .rounded))
                                                    .foregroundStyle(Color.black)
                                                /*Text("(30)")
                                                    .font(.system(size: 14, weight: .thin, design: .rounded))*/
                                            }
                                            .padding(.top,-10)
                                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
                                            

                                            Text(myImage.aboutImageView)
                                                .font(.system(size: 16, weight: .thin, design: .rounded))
                                                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
                                                .padding(.top,-3)
                                                .padding(.bottom,10)
                                                .foregroundStyle(Color.black)
                                            
                                            
                                            
                                            NavigationLink {
                                                ReviewSubView().navigationBarBackButtonHidden(false)
                                            } label: {
                                                Button("Add Review")
                                                {
                                                    showAlert.toggle();
                                                }
                                                .alert("Login reqired to add review", isPresented: $showAlert, actions: {
                                                      Button("Cancel", role: .cancel, action: {})

                                                      Button("Login", action: {})
                                                    }, message: {
                                                      Text("")
                                                    })
                                                .font(.system(size: 20, weight: .regular, design: .rounded))
                                                .padding(15)
                                                .padding(.horizontal,90)
                                                .foregroundColor(.white)
                                                .background(Color("coreOrange")
                                                    .cornerRadius(25))
                                                .padding(.bottom)
                                                

                                            }
                                            
                                            HStack
                                            {
                                                NavigationLink("Reviews", destination: ReviewView())
                                                    .foregroundColor(.black)
                                                    .font(.system(size: 20, weight: .regular, design: .rounded))
                                                Image(systemName: "chevron.forward")
                                            }
                                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
                                            
                                            ScrollView(.horizontal,showsIndicators: false)
                                            {
                                                HStack{
                                                    VStack
                                                    {
                                                        HStack{
                                                            Image(systemName: "person.crop.circle.fill")
                                                                .resizable()
                                                                .frame(width: 32, height: 32)
                                                                .foregroundStyle(Color.black)
                                                            VStack{
                                                                Text("Dewashish Dubey")
                                                                    .frame(maxWidth: .infinity,alignment: .leading)
                                                                    .foregroundStyle(Color.black)
                                                                Text("25/06/2020")
                                                                    .font(.system(size: 12, weight: .thin, design: .rounded))
                                                                    .frame(maxWidth: .infinity,alignment: .leading)
                                                                    .foregroundStyle(Color.black)
                                                            }
                                                        }
                                                        HStack{
                                                            Image(systemName: "star.fill")
                                                                .symbolRenderingMode(.multicolor)
                                                            Text("4.5")
                                                                .font(.system(size: 14, weight: .thin, design: .rounded))
                                                                .foregroundStyle(Color.black)
                                                        }.frame( maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
                                                        Text("Really convenient and the points system helps build loyalty. Some mild glitches here and there, but nothing too egregious. Obviously needs to roll out more remote.")
                                                            .multilineTextAlignment(.leading)
                                                            .frame(width: 300, height: 80,alignment: .leading)
                                                            
                                                            .minimumScaleFactor(0.5)
                                                            .foregroundStyle(Color.black)
                                                    }
                                                    
                                                    VStack
                                                    {
                                                        HStack{
                                                            Image(systemName: "person.crop.circle.fill")
                                                                .resizable()
                                                                .frame(width: 32, height: 32)
                                                                .foregroundStyle(Color.black)
                                                            VStack{
                                                                Text("Rupaj Sen")
                                                                    .frame(maxWidth: .infinity,alignment: .leading)
                                                                    .foregroundStyle(Color.black)
                                                                Text("21/06/2020")
                                                                    .font(.system(size: 12, weight: .thin, design: .rounded))
                                                                    .frame(maxWidth: .infinity,alignment: .leading)
                                                                    .foregroundStyle(Color.black)
                                                            }
                                                        }
                                                        HStack{
                                                            Image(systemName: "star.fill")
                                                                .symbolRenderingMode(.multicolor)
                                                            Text("2.5")
                                                                .font(.system(size: 14, weight: .thin, design: .rounded))
                                                                .foregroundStyle(Color.black)
                                                        }.frame( maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
                                                        Text("Got an intro offer of 50% off first order that did not work... I have scaled the app to find a contact us button but nothing is there to contact the devs")
                                                            .frame(width: 320, height: 80,alignment: .topLeading)
                                                            .minimumScaleFactor(0.5)
                                                            .foregroundStyle(Color.black)
                                                    }
                                                }
                                            }
                                            HStack
                                            {
                                                Text("Must Haves")
                                                    .font(.system(size: 20, weight: .regular, design: .rounded))
                                                    .foregroundStyle(Color.black)
                                                Image(systemName: "chevron.forward")
                                            }
                                            .padding(.top)
                                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
                                            
                                            ScrollView(.horizontal,showsIndicators: false)
                                            {
                                                HStack{
                                                    VStack
                                                    {
                                                        Image("dalMakhni")
                                                            .resizable()
                                                            .frame(width:280,height: 200)
                                                        Text(myImage.mustHave1View)
                                                            .frame(maxWidth: .infinity,alignment: .leading)
                                                            .padding(.bottom,2)
                                                            .foregroundStyle(Color.black)
                                                        HStack{
                                                            Image(systemName: "star.fill")
                                                                .symbolRenderingMode(.multicolor)
                                                            Text("5")
                                                                .font(.system(size: 14, weight: .thin, design: .rounded))
                                                                .foregroundStyle(Color.black)
                                                        }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
                                                        
                                                    }
                                                        
                                                    VStack
                                                    {
                                                        Image("fishFry")
                                                            .resizable()
                                                            .frame(width:280,height: 200)
                                                        Text(myImage.mustHave2View)
                                                            .frame(maxWidth: .infinity,alignment: .leading)
                                                            .padding(.bottom,2)
                                                            .foregroundStyle(Color.black)
                                                        HStack{
                                                            Image(systemName: "star.fill")
                                                                .symbolRenderingMode(.multicolor)
                                                            Text("4.5")
                                                                .font(.system(size: 14, weight: .thin, design: .rounded))
                                                                .foregroundStyle(Color.black)
                                                        }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,alignment: .leading)
                                                        
                                                    }
                                                }
                                            }
                                            
                                            Spacer()
                                            
                                        }.padding(100)
                                    }
                                    
                                    
                                }
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
            .ignoresSafeArea()
            .frame(maxWidth:.infinity,maxHeight: .infinity)
            .background(Color("backgroundColor"))
        

    }
}

#Preview {
    AboutView(name: "")
}

