//
//  SectionTitleMarginTests.swift
//  Sheeeeeeeeet
//
//  Created by Daniel Saidi on 2019-09-17.
//  Copyright © 2019 Daniel Saidi. All rights reserved.
//

import Quick
import Nimble
import UIKit
@testable import Sheeeeeeeeet

class SectionTitleMarginTests: QuickSpec {
    
    override func spec() {
        
        describe("creating menu item") {
            
            it("fills in omitted properties") {
                let item = SectionTitleMargin()
                
                expect(item.title).to(equal(""))
                expect(item.subtitle).to(beNil())
                expect(item.value).to(beNil())
                expect(item.image).to(beNil())
                expect(item.tapBehavior).to(equal(MenuItem.TapBehavior.none))
            }
        }
        
        describe("action sheet conversion") {
            
            it("can be converted to an action sheet item") {
                let source = SectionTitleMargin()
                let item = source.toActionSheetItem() as? ActionSheetSectionMargin
                
                expect(item?.title).to(equal(""))
                expect(item?.subtitle).to(beNil())
                expect(item?.value).to(beNil())
                expect(item?.image).to(beNil())
                expect(item?.tapBehavior).to(equal(MenuItem.TapBehavior.none))
            }
        }
    }
}
