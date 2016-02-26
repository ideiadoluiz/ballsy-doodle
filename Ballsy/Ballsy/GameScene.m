//
//  GameScene.m
//  Ballsy
//
//  Created by Luiz Fernando Peres on 2016-02-23.
//  Copyright (c) 2016 Ideia do Luiz. All rights reserved.
//

#import "GameScene.h"
#import "NewGameView.h"

@interface GameScene ()

@end

@implementation GameScene


-(void)didMoveToView:(SKView *)view
{
    [[NewGameView sharedInstance] createNewGameWithParentScene:self];
    
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [touches anyObject];
    CGPoint point = [touch locationInNode:self];
    
    [[NewGameView sharedInstance] createPlatformAtPoint:point andParent:self];
}

-(void)update:(CFTimeInterval)currentTime
{
}

@end
