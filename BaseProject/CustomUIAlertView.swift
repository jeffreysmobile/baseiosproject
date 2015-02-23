//
//  CustomUIAlertView.swift
//  BaseProject
//
//  Created by George on 23/02/15.
//  Copyright (c) 2015 George. All rights reserved.
//

import UIKit

class CustomUIAlertView: UIAlertView,UIAlertViewDelegate {
    var okButtonAction:(() -> Void)!
    
    
    
    func alertView(alertView: UIAlertView, didDismissWithButtonIndex buttonIndex: Int) {
        didTapOkBtn()
    }
    func didTapOkBtn(){
        okButtonAction()
    }
    
    
}
