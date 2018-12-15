//
//  android.widget.LinearLayout.swift
//  AndriodOniOS
//
//  Created by tungt on 13/12/2018.
//  Copyright © 2018 tloss. All rights reserved.
//

import Foundation
import UIKit

class android_widget_LinearLayout_UIViewController:UIViewController{
    var tgLayout:TGLinearLayout
    init(_ tgLayout:TGLinearLayout) {
        self.tgLayout = tgLayout
        super.init(nibName: nil,bundle: nil)
        self.tgLayout.backgroundColor = .white
        self.tgLayout.tg_size(width:.wrap, height:.wrap)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView(){
        self.view = self.tgLayout
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
class android_widget_LinearLayout : android_view_ViewGroup{
    static let HORIZONTAL: Int = 0
    static let VERTICAL : Int = 1
    var tgLayout:TGLinearLayout = TGLinearLayout(.vert)
    
    init(_ context: android_content_Context){
        super.init()
        self.uiResponder = android_widget_LinearLayout_UIViewController(self.tgLayout)
    }
    func setOrientation (_ orientation:Int) {
        if(orientation == android_widget_LinearLayout.HORIZONTAL){
            self.tgLayout.tg_orientation = .horz
        }else{
            self.tgLayout.tg_orientation = .vert
        }
    }
    override func setLayoutParams (_ params : android_view_ViewGroup_LayoutParams){
        if( params is android_widget_LinearLayout_LayoutParams){
            let layoutParam = params as! android_widget_LinearLayout_LayoutParams
            if(layoutParam.height < 0 && layoutParam.width < 0){
                self.tgLayout.tg_size(width:.wrap, height:.wrap)
            }else if (layoutParam.height < 0){
                self.tgLayout.tg_size(width:layoutParam.width, height:.wrap)
            }else if (layoutParam.width < 0){
                self.tgLayout.tg_size(width:.wrap, height:layoutParam.height)
            }else{
                self.tgLayout.tg_size(width:layoutParam.width, height:layoutParam.height)
            }
        }
    }
    
    override func addView(_ child:android_view_View){
        self.tgLayout.addSubview(child.getUIResponder() as! UIView)
    }
}
