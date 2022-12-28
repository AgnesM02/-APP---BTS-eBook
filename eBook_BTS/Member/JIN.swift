//
//  JIN.swift
//  eBook_BTS
//
//  Created by User11 on 2022/10/21.
//
import AVKit
import SwiftUI

struct JIN: View {
    
    @Binding var player: AVQueuePlayer
    @Binding var showJIN: Bool

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
        HStack{
            VStack
            {
                Image("Jin")
                    .resizable()
                    .frame(width: 300, height: 250, alignment: .center)
                
                Spacer().frame(height :15)
                
                Text("KIM SEOK-JIN")
                    .font(.system(size: 30))
                    .fontWeight(.bold)
                    .foregroundColor(Color.purple)
                
                Spacer().frame(height :20)
                
                VStack
                {
                Text("Kim Seok-jin\n김석진\nDecember 4, 1992\n\nKnown professionally as Jin, is a South Korean singer, songwriter, and member of the South Korean boy band BTS.")
                    .font(.callout)
                    .fontWeight(.regular)
                    .foregroundColor(Color.purple)
                    .frame(width: 350)
                    Spacer().frame(height :20)
                    
                Text("Kim has co-written and released three solo tracks with BTS: 'Awake' in 2016, 'Epiphany' in 2018, and 'Moon' in 2020, all of which have charted on South Korea's Gaon Digital Chart. In 2019, Kim released his first independent song, the digital track 'Tonight'.")
                    .font(.callout)
                    .fontWeight(.regular)
                    .foregroundColor(Color.purple)
                    .frame(width: 350)
                    Spacer().frame(height :20)
                
                Text("He also appeared on the 2016 soundtrack for Hwarang: The Poet Warrior Youth alongside bandmate V. Kim's debut single, 'The Astronaut', will be released in 2022. Kim has received critical praise for his falsetto and emotional range as a singer.")
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
}

struct JIN_Previews: PreviewProvider {
    @State static var player = AVQueuePlayer()
    
    static var previews: some View {
        JIN(player: $player, showJIN: .constant(true))
    }
}}
