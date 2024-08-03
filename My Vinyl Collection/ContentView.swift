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
        VStack(alignment: .leading, spacing: 20) {
            Text("Login credentials")
                .font(.largeTitle)
                .bold()
                .padding(.bottom, 15)
            
            VStack(alignment: .leading) {
                Text("Username")
                    .bold()
                TextField("Entre your user id", text: $uid)
                    .textFieldStyle(.roundedBorder)
                    .frame(width: 300)
            }
            
            VStack(alignment: .leading) {
                Text("Password")
                    .bold()
                
                SecureField("Enter your password", text: $passwd)
                    .textFieldStyle(.roundedBorder)
                    .frame(width: 300)
                
                Button("Go") {
                    // ToDo: Process the user's input
                }
                .font(.headline)
                .frame(width: 200)
                .padding()
                .background(.green)
                .foregroundColor(.white)
                .cornerRadius(10)
                
//                Spacer()
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
