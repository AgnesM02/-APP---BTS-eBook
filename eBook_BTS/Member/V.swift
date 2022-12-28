//
//  V.swift
//  eBook_BTS
//
//  Created by User11 on 2022/10/21.
//
import AVKit
import SwiftUI

struct V: View {
   
    @Binding var player: AVQueuePlayer
    @Binding var showV: Bool
        
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
            Image("V")
                .resizable()
                .frame(width: 200, height: 300, alignment: .center)
            Spacer().frame(height :15)
            
            Text("KIM, TAE-HYUNG")
                .font(.system(size: 30))
                .fontWeight(.bold)
                .foregroundColor(Color.purple)
            
            Spacer().frame(height :20)
            
            Text("Kim Tae-hyung\n김태형\nDecember 30, 1995\n\nKnown professionally as V, is a South Korean singer and songwriter. He is a member of the South Korean boy band BTS.[2] V has released three solo tracks under the band's name: 'Stigma' in 2016, 'Singularity' in 2018, and 'Inner Child' in 2020, all of which have charted on South Korea's Gaon Digital Chart. In 2019, V released his first independent song, the self-composed digital track 'Scenery'. He also appeared on the Hwarang: The Poet Warrior Youth (2016) soundtrack alongside bandmate Jin.")
                .font(.callout)
                .fontWeight(.regular)
                .foregroundColor(Color.purple)
                .frame(width: 350)
            
            Spacer().frame(height :20)
            
            Text("grew up in Geochang County. He is the eldest of three children, with a younger brother and sister. V first aspired to be a professional singer in elementary school. With his father's support, he began taking saxophone lessons in early middle school as a means of pursuing the career. V eventually became a trainee for Big Hit Entertainment after passing an audition in Daegu.")
                .font(.callout)
                .fontWeight(.regular)
                .foregroundColor(Color.purple)
                .frame(width: 350)
            
            Spacer().frame(height :20)
            
            Text("After graduating from Korean Arts High School in 2014,[10] V enrolled in Global Cyber University—he graduated in August 2020 with \na major in Broadcasting and Entertainment. \nAs of 2021, he is enrolled at Hanyang Cyber University, pursuing a Master of Business Administration in Advertising and Media.")
                .font(.callout)
                .fontWeight(.regular)
                .foregroundColor(Color.purple)
                .frame(width: 350)
        }
    }
}
}
}
}

struct V_Previews: PreviewProvider {
    @State static var player = AVQueuePlayer()
    
    static var previews: some View {
        V(player: $player, showV: .constant(true))
    }
}
