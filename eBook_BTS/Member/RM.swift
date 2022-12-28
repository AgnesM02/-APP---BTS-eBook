//
//  RM.swift
//  eBook_BTS
//
//  Created by User11 on 2022/10/21.
//
import AVKit
import SwiftUI

struct RM: View {
    
    @Binding var player: AVQueuePlayer
    @Binding var showRM: Bool

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
        
            Image("RM")
                .resizable()
                .frame(width: 200, height: 300, alignment: .center)
            Spacer().frame(height :15)
            
            Text("KIM, NAM-JOON")
                .font(.system(size: 30))
                .fontWeight(.bold)
                .foregroundColor(Color.purple)
            
            Spacer().frame(height :20)
            
            VStack
            {
            Text("Kim Nam-joon\n김남준\nSeptember 12, 1994\n\nKnown professionally as RM (formerly Rap Monster), is a South Korean rapper, singer-songwriter and record producer. He is the leader of the South Korean boy group BTS.")
                .font(.callout)
                .fontWeight(.regular)
                .foregroundColor(Color.purple)
                .frame(width: 350)
                
            Spacer().frame(height :20)
                
            Text("Kim Nam-joon (Korean: 김남준) was born on September 12, 1994, in Dongjak District, Seoul, South Korea and grew up in Ilsan District, Goyang, where his family moved when he was aged four or five. The elder of two siblings, he has a younger sister. As a child, RM largely learned English by watching the American sitcom Friends with his mother.As a student, he actively wrote poetry and often received awards for his writing.")
                .font(.callout)
                .fontWeight(.regular)
                .foregroundColor(Color.purple)
                .frame(width: 350)
                
                Spacer().frame(height :20)
                
            Text("He posted his work to an online poetry website for roughly one year, where he received moderate attention. As a result, RM expressed interest in pursuing a literary career but later decided against it. When he was twelve years old, he studied in New Zealand for four months.")
                .font(.callout)
                .fontWeight(.regular)
                .foregroundColor(Color.purple)
                .frame(width: 350)
                
            } //Vstack desc
        }
        }
    }
    }
    }
    }
    }
struct RM_Previews: PreviewProvider {
    @State static var player = AVQueuePlayer()
                
static var previews: some View {
    RM(player: $player, showRM: .constant(true))
}
}
