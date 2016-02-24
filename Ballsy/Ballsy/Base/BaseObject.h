//
//  BaseObject.h
//  Ballsy
//
//  Created by CICCC1 on 2016-02-23.
//  Copyright © 2016 Ideia do Luiz. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@interface BaseObject : SKSpriteNode

- (instancetype) initWithImageNamed:(NSString *)imageName position:(CGPoint)pos andParentScene:(SKScene *)parent;

- (instancetype) initWithImageNamed:(NSString *)imageNamed imageMovableName:(NSString *)imageMovableName position:(CGPoint)pos andParentScene:(SKScene *)parent;

@end
