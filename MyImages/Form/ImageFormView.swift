//
//  ImageFormView.swift
//  MyImages
//
//  Created by Dewashish Dubey on 05/02/24.
//

import SwiftUI
import PhotosUI
struct ImageFormView: View {
    @ObservedObject var viewModel : FormViewModel
    @StateObject var imagePicker = ImagePicker()
    @FetchRequest(sortDescriptors: [])
    private var MyImages : FetchedResults<MyImage>
    @Environment(\.managedObjectContext) var moc
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack
        {
            VStack
            {
                Image(uiImage: viewModel.uiImage)
                    .resizable()
                    .scaledToFit()
                TextField("Image name", text: $viewModel.name)
                TextField("Rating", text: $viewModel.rating)
                TextField("Must Have 1", text: $viewModel.mustHave1)
                TextField("Must Have 2", text: $viewModel.mustHave2)
                TextField("About Restaurant", text: $viewModel.aboutImage)
                HStack
                {
                    if viewModel.updating{
                        PhotosPicker("Change Image",
                                     selection: $imagePicker.imageSelection,
                                     matching: .images,
                                     photoLibrary: .shared())
                        .buttonStyle(.bordered)
                    }
                }
               
                Button{
                    if viewModel.updating{
                        if let id = viewModel.id,
                           let selectedImage = MyImages.first(where: {$0.id == id}){
                            selectedImage.name = viewModel.name
                            selectedImage.rating = viewModel.rating
                            selectedImage.mustHave1 = viewModel.mustHave1
                            selectedImage.mustHave2 = viewModel.mustHave2
                            selectedImage.aboutImage = viewModel.aboutImage
                            FileManager().saveImage(with: id, image: viewModel.uiImage)
                            if moc.hasChanges{
                                try? moc.save()
                            }
                        }
                    }
                    else{
                        let newImage = MyImage(context: moc)
                        newImage.name = viewModel.name
                        newImage.id = UUID().uuidString
                        newImage.rating = viewModel.rating
                        newImage.mustHave1 = viewModel.mustHave1
                        newImage.mustHave2 = viewModel.mustHave2
                        newImage.aboutImage = viewModel.aboutImage
                        try? moc.save()
                        FileManager().saveImage(with: newImage.imageID, image: viewModel.uiImage)
                    }
                    dismiss()
                } label:{
                    Image(systemName: "checkmark")
                }
                .buttonStyle(.borderedProminent)
                .tint(.green)
                .disabled(viewModel.incomplete)
                
                Spacer()
            }
            .padding()
            .navigationTitle(viewModel.updating ? "Update Image" : "New Image")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading){
                    Button("Cancel"){
                        dismiss()
                    }
                    .buttonStyle(.bordered)
                }
                
                if viewModel.updating{
                    ToolbarItem(placement: .navigationBarTrailing){
                        Button{
                            if let selectedImage = MyImages.first(where: {$0.id == viewModel.id}){
                                FileManager().deleteImage(with: selectedImage.imageID)
                                moc.delete(selectedImage)
                                try? moc.save()
                            }
                            dismiss()
                        } label:{
                            Image(systemName: "trash")
                        }
                        .buttonStyle(.borderedProminent)
                        .tint(.red)
                    }
                }
            }
            .onChange(of: imagePicker.uiImage){ newImage in
                if let newImage{
                    viewModel.uiImage = newImage
                }
                
            }
        }
    }
}

#Preview {
    ImageFormView(viewModel: FormViewModel(UIImage(systemName: "photo")!))
}
