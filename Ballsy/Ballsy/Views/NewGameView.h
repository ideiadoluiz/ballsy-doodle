//
//  NewGameView.h
//  Ballsy
//
//  Created by Luiz Fernando Peres on 2016-02-24.
//  Copyright © 2016 Ideia do Luiz. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>
@class ShapeBackground;
@class ShapePlayer;

@interface NewGameView : NSObject

@property (readonly) ShapeBackground *background;
@property (readonly) ShapePlayer *player;

+ (instancetype) sharedInstance;
- (void) createNewGameWithParentScene:(SKScene *)parent;
- (void) createPlatformAtPoint:(CGPoint)point andParent:(SKScene *)parent;

@end
