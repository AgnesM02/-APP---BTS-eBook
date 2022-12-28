//
//  JHOPE.swift
//  eBook_BTS
//
//  Created by User11 on 2022/10/21.
//
import AVKit
import SwiftUI

struct JHOPE: View {

    @Binding var player: AVQueuePlayer
    @Binding var showJHOPE: Bool
    
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
            Image("jhope")
                .resizable()
                .frame(width: 300, height: 250, alignment: .center)
                .clipShape(Circle())
            Spacer().frame(height :15)
            
            Text("JUNG, HO-SEOK")
                .font(.system(size: 30))
                .fontWeight(.regular)
                .foregroundColor(Color.purple)
                    
            Spacer().frame(height :20)
            
            Text("Jung Ho-seok \n정호석\nFebruary 18, 1994)\n\nKnown by his stage name J-Hope (stylized as j-hope), is a South Korean rapper, singer-songwriter, dancer, and record producer. He made his debut as a member of South Korean boy band BTS in 2013, under Big Hit Entertainment.")
                .font(.callout)
                .fontWeight(.regular)
                .foregroundColor(Color.purple)
                .frame(width: 350)
                
                    Spacer().frame(height :20)
                    
            Text("J-Hope released his first solo mixtape, Hope World, in 2018. The album was met with a positive reception from critics, and peaked at number 38 on the Billboard 200 in the United States, making him the highest-charting solo Korean artist on the ranking at the time.")
                .font(.callout)
                .fontWeight(.regular)
                .foregroundColor(Color.purple)
                .frame(width: 350)
                    
                    Spacer().frame(height :20)
                    
            Text("He became the first member of BTS to enter the Billboard Hot 100 as a soloist in 2019, when his single 'Chicken Noodle Soup', featuring singer Becky G, debuted at number 81 on the chart. In 2022, J-Hope released his debut studio album Jack in the Box.")
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

struct JHOPE_Previews: PreviewProvider {
    @State static var player = AVQueuePlayer()
    
    static var previews: some View {
        JHOPE(player: $player, showJHOPE: .constant(true))
    }
}
