//
//  C4WorkSpace.m
//  CollisionManager
//
//  Created by moi on 12-10-29.
//  Copyright (c) 2012 moi. All rights reserved.
//

#import "C4WorkSpace.h"
#import "CollisionShape.h"
#import "CollisionManager.h"

@implementation C4WorkSpace {
    CollisionShape *c1, *c2;
    CollisionManager *cm;
}

-(void)setup {
    //create the first shape
    c1 = [[CollisionShape alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
    c1.center = CGPointMake(self.canvas.center.x-50, self.canvas.center.y); //left of center
    [self.canvas addShape:c1];
    
    //create the second shape
    c2 = [[CollisionShape alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
    c2.center = CGPointMake(self.canvas.center.x+50, self.canvas.center.y); //right of center
    [self.canvas addShape:c2];

    //try adding more shapes and see what happens!
    
    cm = [[CollisionManager alloc] init]; //construct the collision manager
    cm.collisionShapes = @[c1,c2]; //this is an array of all the shapes to manage
}
@end
