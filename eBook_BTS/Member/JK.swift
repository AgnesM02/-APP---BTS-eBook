//
//  JK.swift
//  eBook_BTS
//
//  Created by User11 on 2022/10/21.
//
import AVKit
import SwiftUI

struct JK: View {
    @State private var ShowSecondView = false
    
    @Binding var player: AVQueuePlayer
    @Binding var showJK: Bool
    
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
            Image("JK")
                .resizable()
                .frame(width: 180, height: 300, alignment: .center)
                .cornerRadius(30)
            Spacer().frame(height :15)
            
            Text("JEON, JUNG-KOOK")
                .font(.system(size: 30))
                .fontWeight(.bold)
                .foregroundColor(Color.purple)
            
            Spacer().frame(height :20)
            
            Text("Jeon Jung-kook\n전정국\nSeptember 1, 1997\n\nKnown mononymously as Jungkook (stylized as Jung Kook), is a South Korean singer and songwriter. \nHe is the youngest member and vocalist of the South Korean boy band BTS. \nJungkook has released three solo tracks with BTS: 'Begin' in 2016, 'Euphoria' in 2018, and 'My Time' in 2020, all of which have charted on South Korea's Gaon Digital Chart. He also sang the soundtrack for the BTS-based webtoon 7Fates: Chakho, titled 'Stay Alive'. In 2022, he was featured on the single 'Left and Right' by American singer-songwriter Charlie Puth, which peaked at number 22 on the U.S. Billboard Hot 100.")
                .font(.callout)
                .fontWeight(.regular)
                .foregroundColor(Color.purple)
                .frame(width: 350)
            
            Spacer().frame(height :20)
            
            Text("His family consists of his parents and an elder brother. He attended Baekyang Elementary and Middle School in Busan. When he became a trainee, he transferred to Singu Middle School in Seoul. Jungkook initially had dreams of becoming a badminton player when he was younger, but after seeing G-Dragon perform 'Heartbreaker' on television, it influenced him to want to become a singer.")
                .font(.callout)
                .fontWeight(.regular)
                .foregroundColor(Color.purple)
                .frame(width: 350)
            
            Spacer().frame(height :20)
            
            Text("In 2011, Jungkook auditioned for the South Korean talent show Superstar K during its auditions in Daegu. Though he was not selected, he received casting offers from seven entertainment companies. He eventually chose to become a trainee under Big Hit Entertainment after seeing RM, now his fellow band member and leader in BTS, perform.[8] To work on his dance skills in preparation for debut, he went to Los Angeles during the summer of 2012 to receive dance training from Movement Lifestyle.In June 2012, he appeared in Jo Kwon's 'I'm Da One' music video and also worked as a backup dancer for Glam before his debut. \nHe graduated from School of Performing Arts Seoul, an arts high school, in 2017. In November 2016, he decided to forgo taking the CSATs, Korea's nationwide university entrance exam. In March 2022, he received his degree from Global Cyber University's Department of Broadcasting and Entertainment. He was awarded with the President's Award, the school's highest honor.")
                .font(.callout)
                .fontWeight(.regular)
                .foregroundColor(Color.purple)
                .frame(width: 350)

        }
    }
}
}
}


struct JK_Previews: PreviewProvider {
    @State static var player = AVQueuePlayer()

    static var previews: some View {
        JK(player: $player, showJK: .constant(true))
    }
}
