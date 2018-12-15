//
//  android.widget.TextView.swift
//  AndriodOniOS
//
//  Created by tungt on 13/12/2018.
//  Copyright © 2018 tloss. All rights reserved.
//

import Foundation
import UIKit
class android_widget_TextView:android_view_View{
    var lablel:UILabel = UILabel()
    init(_ context: android_content_Context){
        super.init()
        self.uiResponder =  self.lablel
        self.lablel.font = UIFont(name: "STHeitiSC-Light", size: 17)
    }
    func setText (_ text: String){
        self.lablel.text  = text
        self.lablel.sizeToFit()
    }
}
