//
//  FoodOption.swift
//  SheeeeeeeeetExample
//
//  Created by Daniel Saidi on 2017-11-27.
//  Copyright © 2017 Daniel Saidi. All rights reserved.
//

import UIKit

/**
 This enum specifies food options that are listed in the app.
 */
enum FoodOption: String {
    
    case
    fancy,
    fast,
    homeMade,
    light,
    none
    
    var title: String {
        switch self {
        case .fancy: return "Something fancy"
        case .fast: return "Something fast"
        case .homeMade: return "Something home-made"
        case .light: return "Something light"
        case .none: return "I don't eat"
        }
    }
    
    var subtitle: String? {
        switch self {
        case .fancy: return "Because you're worth it"
        default: return nil
        }
    }
    
    var image: UIImage? {
        return UIImage(named: imageName)
    }
    
    var imageName: String {
        switch self {
        case .fancy: return "ic_cutlery"
        case .fast: return "ic_pizza"
        case .homeMade: return "ic_grocery"
        case .light: return "ic_coffee"
        case .none: return "ic_drink"
        }
    }
    
    var isCheap: Bool {
        switch self {
        case .fancy: return false
        default: return true
        }
    }
}
