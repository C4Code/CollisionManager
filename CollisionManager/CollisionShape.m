//
//  CollisionShape.m
//  Collision
//
//  Created by moi on 12-10-29.
//  Copyright (c) 2012 moi. All rights reserved.
//

#import "CollisionShape.h"

@implementation CollisionShape

-(void)setup {
    [self rect:self.frame];
    self.center = self.frame.origin;
    [self addGesture:PAN name:@"pan" action:@"move:"];
}

-(void)move:(id)sender {
    [super move:sender];
    [self postNotification:@"collisionShapeMoved"];
}

@end
