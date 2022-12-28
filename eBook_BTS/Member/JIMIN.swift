//
//  JIMIN.swift
//  eBook_BTS
//
//  Created by User11 on 2022/10/21.
//
import AVKit
import SwiftUI

struct JIMIN: View {

    @Binding var player: AVQueuePlayer
    @Binding var showJIMIN: Bool
    
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
            Image("Jimin")
                .resizable()
                .frame(width: 300, height: 200, alignment: .center)
                .cornerRadius(20)
                
            Spacer().frame(height :15)
            
            Text("PARK, JI-MIN")
                .font(.system(size: 30))
                .fontWeight(.bold)
                .foregroundColor(Color.purple)
            
            Spacer().frame(height :20)
            
            Text("Park Ji-min\n박지민\nOctober 13, 1995\n\nKnown mononymously as Jimin, is a South Korean singer and dancer. In 2013, he made his debut as a member of the South Korean boy group BTS, under the record label Big Hit Entertainment.")
                .font(.callout)
                .fontWeight(.regular)
                .foregroundColor(Color.purple)
                .frame(width: 350)
            
            Spacer().frame(height :20)
            
            Text("Jimin has released three solo tracks with BTS: 'Lie' in 2016, 'Serendipity' in 2017, and 'Filter' in 2020, all of which have charted on South Korea's Gaon Digital Chart. In 2018, he released his first independent song, the digital track 'Promise', which he co-wrote and co-composed. He appeared on the soundtrack for the 2022 TvN drama Our Blues, and sang 'With You' a duet with Ha Sung-woon.")
                .font(.callout)
                .fontWeight(.regular)
                .foregroundColor(Color.purple)
                .frame(width: 350)
            
            Spacer().frame(height :20)
            
            Text("His immediate family includes his mother, father, and younger brother. When he was a child, he attended Busan's Hodong Elementary School and Yonsan Middle School.During middle school, he attended Just Dance Academy and learned popping and locking dance.[citation needed] Prior to becoming a trainee, Jimin studied contemporary dance at Busan High School of Arts and was a top student in the modern dance department. \nAfter a teacher suggested he audition with an entertainment company, it led him to Big Hit Entertainment. Once he passed the auditions in 2012, he transferred to Korean Arts High School, graduating in 2014.Jimin graduated from Global Cyber University in August 2020, with a major in Broadcasting and Entertainment.\n\nAs of 2021, he is enrolled at Hanyang Cyber University, pursuing a Master of Business Administration in Advertising and Media.")
                .font(.callout)
                .fontWeight(.regular)
                .foregroundColor(Color.purple)
                .frame(width: 350)
            
        }
    }
}
}
}

struct JIMIN_Previews: PreviewProvider {
    @State static var player = AVQueuePlayer()
    
    static var previews: some View {
        JIMIN(player: $player, showJIMIN: .constant(true))
    }
}
