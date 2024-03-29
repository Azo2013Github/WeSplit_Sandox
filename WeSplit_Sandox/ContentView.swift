//
//  ContentView.swift
//  WeSplit_Sandox
//
//  Created by Mati on 04/11/2019.
//  Copyright © 2019 Mati. All rights reserved.
//

import SwiftUI

struct UsingStacksToArrangeViews: View {
    var body: some View {
        VStack(alignment: .leading,spacing: 20) {
            HStack{
                Text("Hello World")
            }
            
            HStack(spacing: 60) {
                Text("First Text View")
                ZStack() {
                    //Text("<<            >>")
                    Text("Second Text View")
                }
            }
            Spacer()
        }
    }
}

struct AlertShowViewWithTheButtons: View {
    @State private var showingAlert = false
    
    var body: some View{
        
        VStack {
            Button("Show Alert"){
                self.showingAlert = true
            }.font(.largeTitle)
                .alert(isPresented: $showingAlert){
                    Alert(title: Text("Hello SwiftUI"),
                          message: Text("This is some detail message"),
                          dismissButton: .default(Text("OK")))
            }
            Spacer()
        }
    }
    
}
struct ContentView: View {
    var body: some View {
        
        ZStack {
          
          Color.red
          .edgesIgnoringSafeArea(.all)
          
            VStack {
                AlertShowViewWithTheButtons()
                UsingStacksToArrangeViews()
              
                Button(action : {
                    print("Add to cart was tapped")
                }) {
                    VStack(spacing: 20){
                        Image(systemName: "cart")
                        Text("Add to cart")
                    }
                    .font(.largeTitle)
                    .foregroundColor(.orange)
                }
            }
        }
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



