//
//  ShapePlatform.m
//  Ballsy
//
//  Created by CICCC1 on 2016-02-24.
//  Copyright © 2016 Ideia do Luiz. All rights reserved.
//

#import "ShapePlatform.h"

@implementation ShapePlatform

- (instancetype)initWithPath:(CGMutablePathRef)path andParent:(SKScene *)parent
{
    self = [super initWithPath:path andParent:parent];
    if (self)
    {
        [self initialize];
    }
    
    return self;
}

- (instancetype)initWithPath:(CGMutablePathRef)path lineWidth:(CGFloat)lineWidth colorLine:(UIColor *)colorLine andParent:(SKScene *)parent
{
    self = [super initWithPath:path lineWidth:lineWidth colorLine:colorLine andParent:parent];
    if (self)
    {
        [self initialize];
    }
    
    return self;
}

+ (instancetype) platformDefaultWithParent:(SKScene *)parent
{
    CGMutablePathRef pathToDraw = CGPathCreateMutable();
    CGRect rect = CGRectMake(0, 0, 100, 20);
    CGPathAddRect(pathToDraw, NULL, rect);
    ShapePlatform *platformDefault = [[ShapePlatform alloc] initWithPath:pathToDraw lineWidth:10.0 colorLine:[SKColor clearColor] andParent:parent];
    platformDefault.fillColor = [SKColor brownColor];
    
    return platformDefault;
}

- (void) initialize
{
    //self.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:CGRectMake(0, 0, 100, 20)];
    //self.physicsBody.dynamic = NO;
    self.physicsBody.categoryBitMask = BEE_PLATFORM_MASK;
    self.physicsBody.contactTestBitMask = BEE_PLAYER_MASK;
}

@end
