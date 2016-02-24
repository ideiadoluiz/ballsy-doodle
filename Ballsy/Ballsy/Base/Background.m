//
//  Background.m
//  Ballsy
//
//  Created by CICCC1 on 2016-02-23.
//  Copyright © 2016 Ideia do Luiz. All rights reserved.
//

#import "Background.h"

@interface Background ()

@end

@implementation Background

+ (instancetype)nodeWithColorLine:(SKColor *)colorLine andParent:(SKScene *)parent
{
    Background *background = [Background node];
    if (background)
    {
        [background initializeFormWithColorLine:colorLine andParent:parent];
        
        [parent addChild:background];
    }
    
    return background;
}

- (void) initializeFormWithColorLine:(SKColor *)colorLine andParent:(SKScene*)parent
{
    CGSize size = parent.size;
    CGMutablePathRef pathToDraw = CGPathCreateMutable();
    
    for (int y = 30; y < size.width; y += 30)
    {
        CGPathMoveToPoint(pathToDraw, NULL, 0.0, y);
        CGPathAddLineToPoint(pathToDraw, NULL, size.width, y);
    }
    
    for (int x = 30; x < size.height; x += 30)
    {
        CGPathMoveToPoint(pathToDraw, NULL, x, 0.0);
        CGPathAddLineToPoint(pathToDraw, NULL, x, size.height);
    }
    
    self.path = pathToDraw;
    self.lineWidth = 1.0;
    [self setStrokeColor:colorLine];
}

@end
