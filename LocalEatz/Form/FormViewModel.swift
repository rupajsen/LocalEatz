//
//  FormViewModel.swift
//  MyImages
//
//  Created by Dewashish Dubey on 05/02/24.
//

import UIKit

class FormViewModel: ObservableObject{
    @Published var name  = ""
    @Published var uiImage : UIImage
    @Published var rating  = ""
    @Published var mustHave1 = ""
    @Published var mustHave2 = ""
    @Published var aboutImage = ""
    
    var id : String?
    var updating : Bool {id != nil}
    
    init(_ uiImage: UIImage){
        self.uiImage = uiImage
    }
    
    init(_ myImage : MyImage){
        name = myImage.nameView
        id = myImage.imageID
        uiImage = myImage.uiImage
        rating = myImage.ratingView
        mustHave1 = myImage.mustHave1View
        mustHave2 = myImage.mustHave2View
        aboutImage = myImage.aboutImageView
    }
    
    var incomplete : Bool {
        name.isEmpty || uiImage == UIImage(systemName: "photo")! || rating.isEmpty || mustHave1.isEmpty || mustHave2.isEmpty || aboutImage.isEmpty
    }
}
