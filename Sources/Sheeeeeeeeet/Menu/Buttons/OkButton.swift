//
//  OkButton.swift
//  Sheeeeeeeeet
//
//  Created by Daniel Saidi on 2019-09-17.
//  Copyright © 2019 Daniel Saidi. All rights reserved.
//

import Foundation

/**
 An ok button can be used to "submit" the effects of a menu.
 
 The `value` of the button is `.ok`.
 */
open class OkButton: MenuButton {
    
    
    // MARK: - Initialization
    
    public init(title: String) {
        super.init(title: title, type: .ok)
    }
    
    
    // MARK: - ActionSheetItemConvertible
    
    override func toActionSheetItem() -> ActionSheetItem {
        ActionSheetOkButton(title: title)
    }
}
