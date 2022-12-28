//
//  WebViewStateModel.swift
//  eBook_BTS
//
//  Created by User13 on 2022/12/26.
//

import Foundation

class WebViewStateModel: ObservableObject{
    @Published var pageTitle:String = "https://google.com"
    @Published var goToPage:Bool = false
    
    @Published var goBack:Bool = false
    @Published var goForward:Bool = false
}
