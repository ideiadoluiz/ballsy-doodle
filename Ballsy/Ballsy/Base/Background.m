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

- (instancetype)initWithColorLine:(UIColor *)colorLine andParent:(SKScene *)parent
{
    CGMutablePathRef path = [Background initializeFormWithParent:parent];
    self = [super initWithPath:path lineWidth:1.0 colorLine:colorLine andParent:parent];
    return self;
}

+ (CGMutablePathRef) initializeFormWithParent:(SKScene*)parent
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
    
    return pathToDraw;
}

@end
