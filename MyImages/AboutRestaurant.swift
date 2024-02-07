//
//  AboutRestaurant.swift
//  MyImages
//
//  Created by Dewashish Dubey on 06/02/24.
//

import SwiftUI

struct AboutRestaurant: View {
    
    @State private var restaurantName = ""
    var body: some View {
        Text(restaurantName)
    }
}

#Preview {
    AboutRestaurant()
}
