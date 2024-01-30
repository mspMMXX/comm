//
//  ContentView.swift
//  comm
//
//  Created by Markus Platter on 30.01.24.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: - Properties
    @State private var inputText: String = ""
    
    var body: some View {
        VStack {
            Spacer()
            HStack {
                TextField("Text", text: $inputText)
                    .padding(5)
                    .overlay(
                    RoundedRectangle(cornerRadius: 25)
                        .stroke(Color.black, lineWidth: 1))
                Button(action: {
                    print("Output")
                    inputText = ""
                }, label: {
                    Image(systemName: "paperplane.circle.fill")
                        .resizable()
                        .frame(width: 30, height: 30)
                })
            }
            .padding(15)
        }
    }
}

#Preview {
    ContentView()
}
