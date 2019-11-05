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
        Text("Hello World")
        HStack(spacing: 60) {
          Text("First Text View")
          ZStack() {
            Text("<<            >>")
            Text("Second Text View")
          }
        }
        Spacer()
      }
    }
}

struct ContentView: View {
    var body: some View {
        
        //UsingStacksToArrangeViews()
//        ZStack {
////            Color.blue.edgesIgnoringSafeArea(.all)
//            LinearGradient(gradient: Gradient(colors: [.purple,                      .white]), startPoint:  .top, endPoint: .bottom)
//            LinearGradient(gradient: Gradient(colors: [.white, .green]), startPoint: .bottom, endPoint: .top)
            // Cette partie du code c'est pour donner les coleurs au centre du mobile.
//            RadialGradient(gradient: Gradient(colors: [.blue, .black]),               center: .center, startRadius: 20, endRadius: 200)
//            AngularGradient(gradient: Gradient(colors: [.green, .blue,                .orange, .purple, .red]), center: .topLeading)
////        }
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
