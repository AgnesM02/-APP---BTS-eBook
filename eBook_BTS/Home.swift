//
//  Home.swift
//  eBook_BTS
//
//  Created by User11 on 2022/10/13.
//

import AVKit
import SwiftUI

struct Home: View {
    
    @State var transY: CGFloat = 0
    var foreverAnimation =
            Animation.linear.speed(0.3)
                .repeatForever(autoreverses: true)
    
    @State private var ShowSecondView = false
    @State private var ShowThirdView = false
    @State private var ShowForthView = false
    
    @Binding var player: AVQueuePlayer
    @Binding var Home: Bool
    
    @State private var name: String = ""
    
    var body: some View
    {
        ZStack {
            Image("btswall")
                    .resizable()
                    .ignoresSafeArea()
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
            
        ScrollView(.vertical)
        {
                VStack
                {
                    TextField("Enter your name", text: $name)
                        .multilineTextAlignment(.center)
                    
                    Text("Borahae, \(name)!")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.purple)
                    
                    Spacer().frame(height :10)
                    
                    Link("BTS Official Account",
                    destination: URL(string: "https://ibighit.com/bts/eng/")!)
                        .font(.title)
                        .foregroundColor(.purple)
                              
                    Spacer().frame(height :25)
                    
                    
                    Text("BTS (Hangul: 방탄소년단; RR: Bangtan Sonyeondan), also known as the Bangtan Boys, is a seven-member South Korean boy band formed in Seoul in 2013. The name became a backronym for Beyond the Scene in July 2017.")
                        .font(.subheadline)
                            .fontWeight(.bold)
                            .foregroundColor(.purple)
                            .frame(width: 300, height: 150, alignment: .center)
                    
                    Spacer().frame(height :20)
                    
                    Image("borahae")
                        .resizable()
                        .frame(width: 350, height: 200, alignment:.center)
                        .offset(x: 0, y: transY)
                          .onAppear {
                              withAnimation(foreverAnimation) {
                                  transY = -25
                              }
                          }
                    
                    HStack{
                    Image("7bts")
                        .resizable()
                        .frame(width: 200, height: 100, alignment:.center)
                    
                    Image("borahae2")
                        .resizable()
                        .frame(width: 180, height: 180, alignment:.center)
                        
                }
                    Image("7bts2")
                        .resizable()
                        .frame(width: 300, height: 350, alignment:.center)
                    
                    
                } //LazyVstack end
        } //Zstack end
    } //Scrollview end
}
}


struct Home_Previews: PreviewProvider {
    @State static var player = AVQueuePlayer()
    
    static var previews: some View {
        Group {
            Home(player: $player, Home: .constant(true))
        }
    }
}
