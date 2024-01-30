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
    @State private var inputTextIsEmpty: Bool = true
    
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
                .foregroundColor(inputTextIsEmpty ? .gray : .green)
            }
            .padding(15)
        }
        .onChange(of: inputText) {
            if inputText != "" {
                inputTextIsEmpty = false
            } else {
                inputTextIsEmpty = true
            }
        }
    }
}

#Preview {
    ContentView()
}
