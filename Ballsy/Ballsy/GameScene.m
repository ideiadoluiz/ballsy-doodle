//
//  GameScene.m
//  Ballsy
//
//  Created by Luiz Fernando Peres on 2016-02-23.
//  Copyright (c) 2016 Ideia do Luiz. All rights reserved.
//

#import "GameScene.h"
#import "Background.h"

@implementation GameScene


-(void)didMoveToView:(SKView *)view
{
    self.backgroundColor = [SKColor whiteColor];
    __unused Background *bg = [Background nodeWithColorLine:[SKColor colorWithRed:1.0 green:0.0 blue:0.0 alpha:0.1] andParent:self];
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    /*for (UITouch *touch in touches)
    {
        
    }*/
}

-(void)update:(CFTimeInterval)currentTime
{
}

@end
