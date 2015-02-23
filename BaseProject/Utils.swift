//
//  Utils.swift
//  BaseProject
//
//  Created by George on 23/02/15.
//  Copyright (c) 2015 George. All rights reserved.
//

import Foundation


class Utils:NSObject
{

    class func showAlertView(title: String, message: String,cancelButtonTitle: String?)
    {
        var alert:UIAlertView = UIAlertView(title: title, message: message, delegate: nil, cancelButtonTitle: "Ok")
        alert.show()
    }
    
    class func showAlertViewWithBtnCompletion(title: String, message: String, okButtonTitle: String, okButtonAction:()-> Void)
    {
        
        var alert:CustomUIAlertView = CustomUIAlertView(title: title, message: message, delegate: nil, cancelButtonTitle: "Ok")
        alert.tag = 10001
        alert.delegate = alert
        alert.okButtonAction = okButtonAction
        alert.show()
        
    }
    
    
    
    class func visibleKeyboardHeight() -> CGFloat
    {
        
        var keyboardWindow:UIWindow?
        for testWindow in UIApplication.sharedApplication().windows
        {
            if(testWindow.isKindOfClass(NSClassFromString("UIWindow")))
            {
                keyboardWindow = testWindow as? UIWindow
                break
                
            }
        }
        
        for possibleKeyboard in keyboardWindow!.subviews
        {
            if(possibleKeyboard.isKindOfClass(NSClassFromString("UIPeripheralHostView")) || possibleKeyboard.isKindOfClass(NSClassFromString("UIKeyboard")))
            {
                return possibleKeyboard.bounds.size.height
            }
        }
        
        return 0
    }

}