//
//  CollisionManager.h
//  Collision
//
//  Created by moi on 12-10-29.
//  Copyright (c) 2012 moi. All rights reserved.
//

#import "C4Object.h"
#import "CollisionShape.h"

@interface CollisionManager : C4Object
@property (readwrite, strong) NSArray *collisionShapes;
@end
