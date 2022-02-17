//
//  ContentView.swift
//  TabViewCardSwiper
//
//  Created by Brent on 17/2/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        GeometryReader { geo in
            TabView {
                
                ForEach(1...100, id: \.self) { index in
                    ZStack {
                        
                        let cardColor = Color(
                            red: Double.random(in: 0...1),
                            green: Double.random(in: 0...1),
                            blue: Double.random(in: 0...1)
                        )
                        
                        Rectangle()
                            .cornerRadius(20.0)
                            .shadow(radius: 5)
                            .foregroundColor(cardColor)
//                        Image(systemName: "\(index).circle")
//                            .resizable()
//                            .aspectRatio(contentMode: .fit)
//                            .padding()
                        ZStack {
                            Circle()
                                .stroke(.black, lineWidth: 25.0)
                            .padding(30)
                            Text("\(index)")
                                .font(.system(size: 150, design: .rounded))
                                .fontWeight(.bold)
                        }
                    }
                    
                }.padding()
                    .padding(.bottom, geo.size.height / 10)
                
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
            .frame(width: geo.size.width, height: geo.size.height)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
.previewInterfaceOrientation(.portrait)
    }
}
