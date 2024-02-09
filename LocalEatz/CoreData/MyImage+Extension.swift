//
//  MyImage+Extension.swift
//  MyImages
//
//  Created by Dewashish Dubey on 05/02/24.
//

import UIKit

extension MyImage{
    var nameView : String{
        name ?? ""
    }
    
    var imageID : String{
        id ?? ""
    }
    
    var ratingView : String{
        rating ?? ""
    }
    
    var mustHave1View : String{
        mustHave1 ?? ""
    }
    
    var mustHave2View : String{
        mustHave2 ?? ""
    }
    
    var aboutImageView : String{
        aboutImage ?? ""
    }
    
    var uiImage : UIImage{
        if !imageID.isEmpty,
           let image = FileManager().retrieveImage(with: imageID){
            return image
        }else{
            return UIImage(systemName: "photo")!
        }
            
    }
}


