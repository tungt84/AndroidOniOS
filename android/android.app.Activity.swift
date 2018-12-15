//
//  android.app.Activity.swift
//  AndriodOniOS
//
//  Created by tungt on 13/12/2018.
//  Copyright © 2018 tloss. All rights reserved.
//

import Foundation
import UIKit
class android_app_Activity:android_content_Context{
    var window: UIWindow?
    override init() {
        
    }
    
    func onCreate(_ savedInstanceState:android_os_Bundle) {
        self.window = UIWindow(frame: UIScreen.main.bounds)
        
    }
  
    func onStart (){
        guard let window = self.window else { fatalError("No Window") }
        window.makeKeyAndVisible()
    }
    func onReStart (){
    }
    func onStop (){
        
    }
    func onResume (){
    
    }
    func onPause(){
    }
    func setContentView(_ view:android_view_View) {
        self.window?.rootViewController = view.getUIResponder() as? UIViewController
    }
}
