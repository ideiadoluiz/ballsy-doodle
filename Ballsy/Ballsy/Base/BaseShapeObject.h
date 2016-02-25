//
//  BaseShapeObject.h
//  Ballsy
//
//  Created by CICCC1 on 2016-02-24.
//  Copyright © 2016 Ideia do Luiz. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@interface BaseShapeObject : SKShapeNode

- (instancetype) initWithPath:(CGMutablePathRef)path andParent:(SKScene *)parent;

- (instancetype) initWithPath:(CGMutablePathRef)path lineWidth:(CGFloat)lineWidth colorLine:(SKColor *)colorLine andParent:(SKScene *)parent;

@end
