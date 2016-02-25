//
//  BaseShapeObjectCollidable.h
//  Ballsy
//
//  Created by CICCC1 on 2016-02-24.
//  Copyright © 2016 Ideia do Luiz. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>
#import "BaseShapeObject.h"

@interface BaseShapeObjectCollidable : BaseShapeObject

#define BEE_PLAYER_MASK 0x1 << 0
#define BEE_MONSTER_MASK 0x1 << 1
#define BEE_PLATFORM_MASK 0x1 << 2

@end
