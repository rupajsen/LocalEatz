//
//  ContentView.swift
//  LocalEatz
//
//  Created by Rupaj Sen on 21/01/24.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewModel: AuthViewModel
    var body: some View {
        Group{
            if viewModel.userSession != nil{
                AccountView()
            } else {
                LoginView()
            }
        }
    }
}

#Preview {
    ContentView()
}
