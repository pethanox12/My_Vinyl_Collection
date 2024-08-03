//
//  ContentView.swift
//  My Vinyl Collection
//
//  Created by Adrian Talbot on 03/08/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var uid: String = ""
    @State private var passwd: String = ""
    
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Login credentials")
                .font(.largeTitle)
                .bold()
            
            HStack {
                Text("Username:")
                    .bold()
                TextField("User id", text: $uid)
                    .textFieldStyle(.roundedBorder)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                Spacer()
            }
            
            HStack {
                Text("Password:")
                    .bold()
                
                SecureField("Password", text: $passwd)
                    .textFieldStyle(.roundedBorder)
                    .frame(width: 300)
                
                Button("Go") {
                    // ToDo: Process the user's input
                }
                .padding()
                
                Spacer()
            }
        }
        .padding()
        .onAppear(perform: {
            
            uid = Bundle.main.infoDictionary?["UID"] as! String
            
            passwd = Bundle.main.infoDictionary?["PASSWD"] as! String
        })
    }
}

#Preview {
    ContentView()
}
