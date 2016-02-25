//
//  BaseShapeObjectCollidable.m
//  Ballsy
//
//  Created by CICCC1 on 2016-02-24.
//  Copyright © 2016 Ideia do Luiz. All rights reserved.
//

#import "BaseShapeObjectCollidable.h"

@implementation BaseShapeObjectCollidable

- (instancetype)initWithPath:(CGMutablePathRef)path andParent:(SKScene *)parent
{
    self = [super initWithPath:path andParent:parent];
    if (self)
    {
        [self initializeObject];
    }
    
    return self;
}

- (instancetype)initWithPath:(CGMutablePathRef)path lineWidth:(CGFloat)lineWidth colorLine:(UIColor *)colorLine andParent:(SKScene *)parent
{
    self = [super initWithPath:path lineWidth:lineWidth colorLine:colorLine andParent:parent];
    if (self)
    {
        [self initializeObject];
    }
    
    return self;
}

- (void) initializeObject
{
    self.physicsBody = [SKPhysicsBody bodyWithPolygonFromPath:self.path];
    self.physicsBody.dynamic = NO;
    self.physicsBody.collisionBitMask = 0;
}

@end
