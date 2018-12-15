//
//  android.view.View.swift
//  AndriodOniOS
//
//  Created by tungt on 13/12/2018.
//  Copyright © 2018 tloss. All rights reserved.
//

import Foundation
import UIKit
class android_view_View{
    var uiResponder:UIResponder?
    func setLayoutParams (_ params : android_view_ViewGroup_LayoutParams){
    }
    func getUIResponder() -> UIResponder {
        return uiResponder!
    }
}
