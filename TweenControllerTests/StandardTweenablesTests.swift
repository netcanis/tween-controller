//
//  StandardTweenablesTests.swift
//  TweenController
//
//  Created by Dalton Claybrook on 1/9/17.
//
//  Copyright (c) 2017 Dalton Claybrook
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.
//

import XCTest
import UIKit
import TweenController

class StandardTweenablesTests: XCTestCase {
    
    func testDouble() {
        let val = Double.valueBetween(0.0, 0.5, percent: 0.5)
        XCTAssertEqual(val, 0.25)
    }
    
    func testFloat() {
        let val = Float.valueBetween(0.0, 10.0, percent: 0.25)
        XCTAssertEqual(val, 2.5)
    }
    
    func testInt() {
        let val = Int.valueBetween(0, 8, percent: 0.5)
        XCTAssertEqual(val, 4)
    }
    
    func testCGFloat() {
        let val = CGFloat.valueBetween(1.0, 3.0, percent: 0.25)
        XCTAssertEqual(val, 1.5)
    }
    
    func testCGPoint() {
        let val = CGPoint.valueBetween(CGPoint(x: 0.0, y: 0.0) , CGPoint(x: 1.0, y: 2.0), percent: 0.25)
        XCTAssertEqual(val, CGPoint(x: 0.25, y: 0.5))
    }
    
    func testCGSize() {
        let val = CGSize.valueBetween(CGSize(width: 0.0, height: 0.0) , CGSize(width: 1.0, height: 2.0), percent: 0.25)
        XCTAssertEqual(val, CGSize(width: 0.25, height: 0.5))
    }
    
    func testCGRect() {
        let rect1 = CGRect(x: 0.0, y: 0.0, width: 0.0, height: 0.0)
        let rect2 = CGRect(x: 10.0, y: 20.0, width: 10, height: 10)
        let finalRect = CGRect(x: 5.0, y: 10.0, width: 5.0, height: 5.0)
        let val = CGRect.valueBetween(rect1, rect2, percent: 0.5)
        XCTAssertEqual(val, finalRect)
    }
    
    func testUIColor() {
        let val = UIColor.valueBetween(.green, .blue, percent: 0.5)
        let final = UIColor(red: 0.0, green: 0.5, blue: 0.5, alpha: 1.0)
        XCTAssertEqual(val, final)
    }
    
    func testCGAffineTransform() {
        let tran1 = CGAffineTransform.identity
        let tran2 = CGAffineTransform(scaleX: 2.0, y: 2.0)
        let finalTran = CGAffineTransform(scaleX: 1.5, y: 1.5)
        let val = CGAffineTransform.valueBetween(tran1, tran2, percent: 0.5)
        XCTAssertEqual(val, finalTran)
    }
    
    func testCATransform3D() {
        let tran1 = CATransform3DIdentity
        let tran2 = CATransform3DMakeScale(2.0, 3.0, 4.0)
        let finalTran = CATransform3DMakeScale(1.5, 2.0, 2.5)
        let val = CATransform3D.valueBetween(tran1, tran2, percent: 0.5)
        XCTAssertTrue(CATransform3DEqualToTransform(val, finalTran))
    }
}
