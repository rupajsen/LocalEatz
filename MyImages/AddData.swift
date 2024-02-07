//
//  AddData.swift
//  MyImages
//
//  Created by Dewashish Dubey on 06/02/24.
//

import SwiftUI
import PhotosUI

struct AddData: View {
    @FetchRequest(sortDescriptors: [SortDescriptor(\.name)])
    private var MyImages : FetchedResults<MyImage>
    @StateObject private var imagePicker = ImagePicker()
    
    @State private var formType: FormType?
    let columns = [GridItem(.adaptive(minimum: 100))]
    var body: some View
    {
        NavigationStack
        {
            
            List
            {
                Section("Account")
                {
                    VStack{
                        Text("Disclaimer")
                            .foregroundStyle(Color.red)
                        Text("Be careful while entering the restaurant data and make sure to put real restaurant data only to ensure a smooth experience for all users. The data will be verified for fair use")
                    }
                        .padding()
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        PhotosPicker("Add Data",
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
                    
                   /* NavigationLink {
                        ShowData()
                    } label: {
                        Text("Show Data")
                            .foregroundColor(.orange)
                            .font(.system(size: 15))
                            //.padding(.leading,-70)
                    }*/
                }
            }
        }
        .padding(.top,-160)
        
    }
}

#Preview {
    AddData()
}
