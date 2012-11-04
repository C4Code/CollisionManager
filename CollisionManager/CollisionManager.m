//
//  CollisionManager.m
//  Collision
//
//  Created by moi on 12-10-29.
//  Copyright (c) 2012 moi. All rights reserved.
//

#import "CollisionManager.h"

@implementation CollisionManager {
    int numberOfChecks;
}

-(void)setup {
    [self listenFor:@"collisionShapeMoved" andRunMethod:@"checkCollisions:"];
}

-(void)checkCollisions:(NSNotification *)notification {
    C4Log(@"check collisions based on movement: %d",numberOfChecks++);
    CollisionShape *currentShape = (CollisionShape *)[notification object];
    for (CollisionShape *s in self.collisionShapes){
        if(![currentShape isEqual:s]) {
            if(CGRectIntersectsRect(currentShape.frame, s.frame)) {
                currentShape.fillColor = C4GREY;
                break;
            }
            currentShape.fillColor = C4BLUE;
        }
    }
}
@end
