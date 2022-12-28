//
//  WebsiteView.swift
//  eBook_BTS
//
//  Created by User13 on 2022/12/27.
//

import SwiftUI
import SafariServices

struct WebsiteView: UIViewControllerRepresentable{
    func makeUIViewController(context: Context) -> SFSafariViewController {
         SFSafariViewController(url: url)
    }
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: Context) {
            
    }
    let url: URL
}
