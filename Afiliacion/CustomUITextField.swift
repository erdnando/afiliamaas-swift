//
//  CustomUITextField.swift
//  HomeBankin
//
//  Created by stefanini on 7/12/17.
//  Copyright © 2017 stefanini. All rights reserved.
//

import UIKit

class CustomUITextField: UITextField {
    
    override public func canPerformAction(_ action: Selector, withSender sender: Any?) -> Bool {
        if action == #selector(copy(_:)) || action == #selector(paste(_:)) || action == #selector(cut(_:)) || action == #selector(select(_:)) || action == #selector(selectAll(_:)) {
            self.resignFirstResponder()
            return false
        }
        
        return true
    }
    
    override public func shouldChangeText(in range: UITextRange, replacementText text: String) -> Bool {
        self.resignFirstResponder()
        return false
    }
    
   
}
