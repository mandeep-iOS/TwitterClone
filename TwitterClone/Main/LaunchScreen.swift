//
//  LaunchScreen.swift
//  TwitterClone
//
//  Created by Deep Baath on 18/02/23.
//

import SwiftUI

struct LaunchScreen: View {
    
    @Binding var isLaunched: Bool
    
    var body: some View {
        ZStack {
            Image("twitter")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Twitter Clone")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                Button(action: {
                    isLaunched = true
                }) {
                    Text("Get started")
                        .font(.callout)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                }
                .frame(width: 162, height: 50)
                .background(Color.black)
                .foregroundColor(.white)
                .cornerRadius(25)
            }
            
            
        }
    }
}


//struct LaunchScreen_Previews: PreviewProvider {
//    static var previews: some View {
//     //   LaunchScreen()
//    }
//}
