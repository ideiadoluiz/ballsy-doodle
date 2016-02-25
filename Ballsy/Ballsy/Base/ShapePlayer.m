//
//  ShapePlayer.m
//  Ballsy
//
//  Created by CICCC1 on 2016-02-24.
//  Copyright © 2016 Ideia do Luiz. All rights reserved.
//

#import "ShapePlayer.h"

@implementation ShapePlayer

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

+ (instancetype) playerDefaultWithParent:(SKScene *)parent
{
    CGMutablePathRef pathToDraw = CGPathCreateMutable();
    CGPathAddArc(pathToDraw, NULL, 0,0, 15, 0, M_PI*2, YES);
    ShapePlayer *playerDefault = [[ShapePlayer alloc] initWithPath:pathToDraw andParent:parent];
    playerDefault.fillColor = [SKColor blueColor];
    
    return playerDefault;
}

- (void) initialize
{
    self.physicsBody.categoryBitMask = BEE_PLAYER_MASK;
    self.physicsBody.dynamic = YES;
}



@end
