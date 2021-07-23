//
//  ContentView.swift
//  Test
//
//  Created by Sungro Lee on 22.07.21.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: - States
    
    @State private var textString = "Click the Button"
    @State private var value = 1 // Value of Dice.
    @State private var isRest : Bool = false // To check if value should be shown or not.
    
    //MARK: - Functions
    
    func getRandomNum() {
        let number = Int.random(in: 1..<7)
        self.value = number
        
        checkReset()
    }
    
    func restRandomNumAsOne() {
        self.value = 0
        
        checkReset()
    }
    
    func checkReset() {
        self.isRest = self.value > 0 ? true : false
    }
    
    //MARK: - Views
    
    var body: some View {
        ZStack {
        Color(.systemTeal)
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Text(textString)
                .font(.title)
                .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .padding(.bottom, 30.0)
                    
                
                Text("\(value)")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                    .padding(.bottom, 20.0)
                    .opacity(self.isRest == true ? 1.0 : 0.0)
                    
                
                HStack {
                    Button(action: {
                        getRandomNum()
                    }) {
                        Text("Roll")
                            .font(.body)
                            .fontWeight(.bold)
                            .foregroundColor(Color.yellow)
                            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.gray/*@END_MENU_TOKEN@*/)
                    }
                    
                    Button(action: {
                        restRandomNumAsOne()
                    }) {
                        Text("Reset")
                            .font(.body)
                            .fontWeight(.bold)
                            .foregroundColor(Color.yellow)
                            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.gray/*@END_MENU_TOKEN@*/)
                        
                    }
                }
                
//                HStack {
//                    ExtractedView(btnName: "show")
//                    ExtractedView(btnName: "hide")
//                }
                
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


