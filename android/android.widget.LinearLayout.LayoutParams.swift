//
//  android.widget.LinearLayout.LayoutParams.swift
//  AndriodOniOS
//
//  Created by tungt on 13/12/2018.
//  Copyright © 2018 tloss. All rights reserved.
//

import Foundation
class android_widget_LinearLayout_LayoutParams : android_view_ViewGroup_LayoutParams{
    var width:Int
    var height:Int
    init(_ width:Int,_ height:Int){
        self.width =  width
        self.height  = height
    }
}
