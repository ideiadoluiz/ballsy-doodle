//
//  NewGameView.m
//  Ballsy
//
//  Created by Luiz Fernando Peres on 2016-02-24.
//  Copyright © 2016 Ideia do Luiz. All rights reserved.
//

#import "NewGameView.h"
#import "ShapeBackground.h"
#import "BaseShapeObjectCollidable.h"
#import "ShapePlayer.h"
#import "ShapePlatform.h"

@interface NewGameView () <SKPhysicsContactDelegate>

@end

@implementation NewGameView

+ (instancetype) sharedInstance
{
    static NewGameView *sharedStore;
    
    if (!sharedStore)
        sharedStore = [[self alloc] initPrivate];
    
    return sharedStore;
}

- (instancetype) init
{
    [NSException raise:@"Singleton" format:@"Use [NewGameView sharedInstance]"];
    return nil;
}

- (instancetype) initPrivate
{
    self = [super init];
    
    if (self)
    {
    }
    
    return self;
}

- (void) createNewGameWithParentScene:(SKScene *)parent
{
    parent.backgroundColor = [SKColor whiteColor];
    _background = [[ShapeBackground alloc ] initWithColorLine:[SKColor colorWithRed:1.0 green:0.0 blue:0.0 alpha:0.1] andParent:parent];
    
    parent.physicsWorld.gravity = CGVectorMake( 0.0, -5.0);
    parent.physicsWorld.contactDelegate = self;
    
    
    ShapePlayer *player = [ShapePlayer playerDefaultWithParent:parent];
    player.position = CGPointMake(CGRectGetMidX(parent.frame), CGRectGetMidY(parent.frame));
    player.zPosition = 1.0;
    _player = player;
    
    ShapePlatform *platform = [ShapePlatform platformDefaultWithParent:parent];
    platform.position = CGPointMake(CGRectGetMidX(parent.frame) - platform.frame.size.width / 2, 20);
    platform.zPosition = 1.0;
}

- (void)didBeginContact:(SKPhysicsContact *)contact
{
    SKPhysicsBody *playerBody = nil;
    playerBody = (contact.bodyA.categoryBitMask & BEE_PLAYER_MASK) != 0 ? contact.bodyA : playerBody;
    playerBody = (contact.bodyB.categoryBitMask & BEE_PLAYER_MASK) != 0 ? contact.bodyB : playerBody;
    
    SKPhysicsBody *monsterBody = nil;
    monsterBody = (contact.bodyA.categoryBitMask & BEE_MONSTER_MASK) != 0 ? contact.bodyA : monsterBody;
    monsterBody = (contact.bodyB.categoryBitMask & BEE_MONSTER_MASK) != 0 ? contact.bodyB : monsterBody;
    
    SKPhysicsBody *platformBody = nil;
    platformBody = (contact.bodyA.categoryBitMask & BEE_PLATFORM_MASK) != 0 ? contact.bodyA : platformBody;
    platformBody = (contact.bodyB.categoryBitMask & BEE_PLATFORM_MASK) != 0 ? contact.bodyB : platformBody;
    
    if (playerBody && monsterBody)
    {
        NSLog(@"player touched monster");
    }
    else if (playerBody && platformBody)
    {
        self.player.physicsBody.velocity = CGVectorMake(0, 0);
        [self.player.physicsBody applyImpulse:CGVectorMake(0, 17)];
    }
    
    // otherwise ignore
}

@end
