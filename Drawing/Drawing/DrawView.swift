//
//  DrawView.swift
//  Drawing
//
//  Created by 青木宏祐 on 2015/05/24.
//  Copyright (c) 2015年 Kosuke. All rights reserved.
//

import UIKit

class DrawView: NSObject {
    
    var lines: [Line] = []
    var lastPoint: CGPoint!
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
   
    override func touchesBegan(Touches: NSSet, withEvent event: UIEvent) {
        lastPoint = touches.anyObject()?.locationINView(self)
    }
    
    override func touchesMoved(touches: NSSet, withEvent event: UIEvent) {
        var newPoint = touches.anyObject()?.locationInView(self)
        lines.append(Line(start: lastPoint, end: newPoint!))
        lastPoint = newPoint
        
        self.setNeedsDisplay()
    }
    
    override func drawRect(rect: CGRect) {
        var context = UIGraphicsGetCurrentContext()
        CGContextBeginPath(context)
        
        for line in lines {
            CGContextMoveToPoint(context, line.start.x, line.start.y)
            CGContextAddLineToPoint(context, line.end.x, line.end.y)
        }
        
        CGContextSetRGBStrokeColor(context, 1, 0, 0, 1)
        CGContextSetLineWidth(context, 10)
        CGContextSetLineCap(context, kCGLineCapRound)
        CGContextStrokePath(context)
    }
    
}
