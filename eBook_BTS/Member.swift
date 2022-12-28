//
//  Member.swift
//  eBook_BTS
//
//  Created by User11 on 2022/10/13.
//
import AVKit
import SwiftUI

struct Member: View {
    @State private var Home = false
    @State private var ShowThirdView = false
    @State private var ShowForthView = false
    
    @State private var showRM    = false
    @State private var showJIN   = false
    @State private var showSUGA  = false
    @State private var showJHOPE = false
    @State private var showV     = false
    @State private var showJIMIN = false
    @State private var showJK    = false
    
    @Binding var ShowSecondView: Bool
    @Binding var player: AVQueuePlayer
    
    var body: some View {
    ZStack {
        Image("btswall")
            .resizable()
            .ignoresSafeArea()
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
    
            ScrollView(.vertical)
            {
                ZStack(alignment:.top)
                {
              Text("BTS Member List")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.purple)
                }
                    Spacer().frame(height :25)

        VStack
        {
            Button(action: {showRM = true}, label: {
                Image("RM")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 200,height:300)
                    .foregroundColor(.purple)
            }).sheet(isPresented: $showRM) {
                RM(player: $player, showRM: .constant(true))}
            
            Spacer().frame(height :25)
            
            Button(action: {showJIN = true}, label: {
                Image("Jin")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 200,height:300)
                    .foregroundColor(.purple)
            }).sheet(isPresented: $showJIN) {
                JIN(player: $player, showJIN: .constant(true))}
            
            Spacer().frame(height :25)
            
            Button(action: {showSUGA = true}, label: {
                Image("Suga")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 200,height:200)
                    .foregroundColor(.purple)
            }).sheet(isPresented: $showSUGA) {
                SUGA(player: $player, showSUGA: .constant(true))}
            
            Spacer().frame(height :25)
            
            Button(action: {showJHOPE = true}, label: {
                Image("jhope")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 250,height:200)
                    .foregroundColor(.purple)
                    .clipShape(Circle())
            }).sheet(isPresented: $showJHOPE) {
                JHOPE(player: $player, showJHOPE: .constant(true))}
            
            Spacer().frame(height :25)
            
            Button(action: {showV = true}, label: {
                Image("V")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 200,height:300)
                    .foregroundColor(.purple)
            }).sheet(isPresented: $showV) {
                V(player: $player, showV: .constant(true))}
            }
            
            Spacer().frame(height :25)
                
            VStack
            {
            Button(action: {showJIMIN = true}, label: {
                Image("Jimin")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 300,height:200)
                    .foregroundColor(.purple)
            }).sheet(isPresented: $showJIMIN) {
                JIMIN(player: $player, showJIMIN: .constant(true))}
            
            Spacer().frame(height :25)
            
            Button(action: {showJK = true}, label: {
                Image("JK")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 180,height:300)
                    .foregroundColor(.purple)
            }).sheet(isPresented: $showJK) {
                JK(player: $player, showJK: .constant(true))}
        } //Vstack end
        } //Zstack end
}
}
}

struct Member_Previews: PreviewProvider {
    @State static var player = AVQueuePlayer()
    
    static var previews: some View {
        Group{
            Member(ShowSecondView: .constant(true) , player: $player)
    }
}
}
