import Foundation
import UIKit
class org_tloss_tiengvietlop1_MainActiviy:android_app_Activity{
    var lLayout : android_widget_LinearLayout?;
    var tView : android_widget_TextView?;
    override func onCreate(_ _parameter0:android_os_Bundle){
        let _r6:android_widget_LinearLayout_LayoutParams;
        let _r1:android_widget_LinearLayout;
        let _r5:android_widget_TextView;
        let _r2:android_widget_LinearLayout_LayoutParams;
        let _r16:android_widget_LinearLayout;
        let _r0:android_widget_LinearLayout;
        let _r4:android_widget_TextView;
        let _r12:android_widget_LinearLayout_LayoutParams;
        let _r11:android_widget_TextView;
        let _r15:android_widget_LinearLayout;
        let _r8:android_widget_TextView;
        let _r7:android_widget_TextView;
        let _r3:android_widget_LinearLayout;
        let _r9:android_widget_LinearLayout;
        let _r13:android_widget_TextView;
        let savedInstanceState:android_os_Bundle;
        let _r10:android_widget_TextView;
        let _r14:android_widget_TextView;
        savedInstanceState=_parameter0;
        super.onCreate(savedInstanceState);
        _r0=android_widget_LinearLayout(self);
        self.lLayout=_r0;
        _r1=self.lLayout!;
        _r1.setOrientation(0);
        _r3=self.lLayout!;
        _r2=android_widget_LinearLayout_LayoutParams(-1,-1);
        _r3.setLayoutParams(_r2);
        _r4=android_widget_TextView(self);
        self.tView=_r4;
        _r5=self.tView!;
        _r5.setText("Hello, This is a view created programmatically! You CANNOT change me that easily :-)");
        _r7=self.tView!;
        _r6=android_widget_LinearLayout_LayoutParams(-1,-2);
        _r7.setLayoutParams(_r6);
        _r9=self.lLayout!;
        _r8=self.tView!;
        _r9.addView(_r8);
        _r10=android_widget_TextView(self);
        self.tView=_r10;
        _r11=self.tView!;
        _r11.setText("Line 22");
        _r13=self.tView!;
        _r12=android_widget_LinearLayout_LayoutParams(-1,-2);
        _r13.setLayoutParams(_r12);
        _r15=self.lLayout!;
        _r14=self.tView!;
        _r15.addView(_r14);
        _r16=self.lLayout!;
        self.setContentView(_r16);
        return;
    }
    override init() {
        super.init();
        return;
    }
}
