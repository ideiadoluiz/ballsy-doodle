//
//  ShapePlatform.h
//  Ballsy
//
//  Created by CICCC1 on 2016-02-24.
//  Copyright © 2016 Ideia do Luiz. All rights reserved.
//

#import "BaseShapeObjectCollidable.h"

@interface ShapePlatform : BaseShapeObjectCollidable

+ (instancetype) platformDefaultWithParent:(SKScene *)parent;

@end
