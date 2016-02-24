//
//  GameScene.m
//  Ballsy
//
//  Created by CICCC1 on 2016-02-23.
//  Copyright (c) 2016 Ideia do Luiz. All rights reserved.
//

#import "GameScene.h"

@implementation GameScene


-(void)didMoveToView:(SKView *)view
{
    self.backgroundColor = [SKColor whiteColor];
    SKLabelNode *label = [SKLabelNode labelNodeWithFontNamed:@"Al-seana"];
    label.text = NSLocalizedString(@"hello_world", @"Hello World");
    label.position = CGPointMake(CGRectGetMidX(self.frame),                          CGRectGetMidY(self.frame));
    label.fontColor = [SKColor blackColor];
    label.fontSize = 100;
    [self addChild:label];
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    /* Called when a touch begins */
    
    for (UITouch *touch in touches) {
        CGPoint location = [touch locationInNode:self];
        
        SKSpriteNode *sprite = [SKSpriteNode spriteNodeWithImageNamed:@"Spaceship"];
        
        sprite.xScale = 0.5;
        sprite.yScale = 0.5;
        sprite.position = location;
        
        SKAction *action = [SKAction rotateByAngle:M_PI duration:1];
        
        [sprite runAction:[SKAction repeatActionForever:action]];
        
        [self addChild:sprite];
    }
}

-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}

@end
