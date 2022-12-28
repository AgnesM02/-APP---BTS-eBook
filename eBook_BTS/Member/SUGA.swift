//
//  SUGA.swift
//  eBook_BTS
//
//  Created by User11 on 2022/10/21.
//
import AVKit
import SwiftUI

struct SUGA: View {
       
    @Binding var player: AVQueuePlayer
    @Binding var showSUGA: Bool
    
    var body: some View {
        ZStack {
            Image("btswall")
                      .resizable()
                      .ignoresSafeArea()
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        ScrollView
        {
            
        VStack
        {
            VStack
            {
            Image("Suga")
                .resizable()
                .frame(width: 250, height: 200, alignment: .center)
            Spacer().frame(height :15)
            
            Text("MIN, YOON-GI")
                .font(.system(size: 30))
                .fontWeight(.bold)
                .foregroundColor(Color.purple)
            
            Spacer().frame(height :20)
            
            VStack{
            Text("Min Yoon-gi (Korean: \n민윤기\nMarch 9, 1993\n\nKnown professionally by his stage names SUGA and Agust D,[A] is a South Korean rapper, songwriter and record producer. Managed by Big Hit Music, he debuted as a member of the South Korean boy band BTS in 2013.")
                .font(.callout)
                .fontWeight(.regular)
                .foregroundColor(Color.purple)
                .frame(width: 350)
                
                Spacer().frame(height :20)
            Text("In 2016, he released his first solo mixtape, Agust D. In 2018, he re-released the mixtape for digital purchase and streaming. The reissue reached number three on Billboard's World Albums Chart. In 2020, he released his second solo mixtape, D-2.")
                .font(.callout)
                .fontWeight(.regular)
                .foregroundColor(Color.purple)
                .frame(width: 350)
                
                Spacer().frame(height :20)
                
            Text("Originally joining the company as a music producer, Suga trained under Big Hit Entertainment for three years alongside members j-hope and RM. He made his debut as a member of BTS on Mnet's M Countdown with the track 'No More Dream' from their debut single album 2 Cool 4 Skool. He has produced and written lyrics for a variety of tracks on all of BTS' albums.")
                .font(.callout)
                .fontWeight(.regular)
                .foregroundColor(Color.purple)
                .frame(width: 350)
                
            } //Vstack desc
            
        }
    }
}
}
}}


struct SUGA_Previews: PreviewProvider {
    @State static var player = AVQueuePlayer()
    
    static var previews: some View {
        SUGA(player: $player, showSUGA: .constant(true))
    }
}
