//
//  BallMoveWithFinger.m
//  BallMoveWithFinger
//
//  Created by 吴迪 on 6/11/15.
//  Copyright (c) 2015 吴迪. All rights reserved.
//

#import "BallMoveWithFinger.h"

@implementation BallMoveWithFinger
{
   CGPoint point;
}

-(void) touchesMoved: (NSSet *) touches withEvent: (UIEvent *) event{
    
        UITouch *touch = [touches anyObject];
        CGPoint lasttouch = [touch locationInView:self];
        point = lasttouch;
        [self setNeedsDisplay];
    }
-(void)drawRect:(CGRect)rect
{
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(ctx, [[UIColor redColor]CGColor]);
    
    CGContextFillEllipseInRect(ctx, CGRectMake(point.x -10, point.y-10, 20, 20));
    
}

    
    
    
    
    @end
