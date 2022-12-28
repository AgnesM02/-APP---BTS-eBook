//
//  GoogleSearch.swift
//  eBook_BTS
//
//  Created by User11 on 2022/12/23.
//

import SwiftUI
import WebKit

struct GoogleSearch: View {
    @State private var Home = false
    @State private var ShowView = false
    
    @Binding var ShowForthView: Bool
    
    @ObservedObject var webViewStateModel:WebViewStateModel = WebViewStateModel()
    @State private var webAddress = "http://google.com"

    var body: some View {
        VStack{
                    
            WKView(webViewStateModel: webViewStateModel)
                    
                }
                .toolbar{
                    ToolbarItem(placement: ToolbarItemPlacement.bottomBar){
                        HStack{
                            Button(action: {
                                webViewStateModel.goBack = true
                            }, label: {
                                Image(systemName: "arrow.backward")
                            })
                            Button(action: {
                                webViewStateModel.goForward = true
                            }, label: {
                                Image(systemName: "arrow.forward")
                            })
                }
            }
        }
    }
}

struct GoogleSearch_Previews: PreviewProvider {

    
    static var previews: some View {
        GoogleSearch(ShowForthView: .constant(true))
    }
}
