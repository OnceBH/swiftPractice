//
//  ContentView.swift
//  Test
//
//  Created by Sungro Lee on 22.07.21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var textString = "Click the Button"
    @State private var value = ""
    
    var body: some View {
        ZStack {
        Color(.systemTeal)
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Text(textString)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.white)
                
                Text(value)
                
                HStack {
                    Button(action: {
                        value = "Hello World!"
                    }) {
                        Text("show")
                            .font(.body)
                            .fontWeight(.bold)
                            .foregroundColor(Color.yellow)
                            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.gray/*@END_MENU_TOKEN@*/)
                    }
                    
                    Button(action: {
                        value = ""
                    }) {
                        Text("hide")
                            .font(.body)
                            .fontWeight(.bold)
                            .foregroundColor(Color.yellow)
                            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.gray/*@END_MENU_TOKEN@*/)
                    }
                }
                
                HStack {
                    ExtractedView(btnName: "show")
                    ExtractedView(btnName: "hide")
                }
                
            }
        }
    }
}

struct ExtractedView: View {
    
    let btnName : String
    
    var body: some View {
        Button(action : {
            // Dont know how to change value from here.
            // I have created some functions but its not working properly becouse it comes "self is immutable"
        }) {
            Text(btnName)
                .font(.body)
                .fontWeight(.bold)
                .foregroundColor(Color.yellow)
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.gray/*@END_MENU_TOKEN@*/)
        }
        .padding(.all)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


