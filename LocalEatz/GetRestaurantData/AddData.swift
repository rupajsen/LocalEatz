//
//  AddData.swift
//  LocalEatz
//
//  Created by Dewashish Dubey on 07/02/24.
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
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
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
                        ShowData()
                    } label: {
                        Text("Show Data")
                            .foregroundColor(.orange)
                            .font(.system(size: 15))
                            //.padding(.leading,-70)
                    }
                }
            }
        }
        
    }
}

#Preview {
    AddData()
}
