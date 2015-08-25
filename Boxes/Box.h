//
//  Box.h
//  Boxes
//
//  Created by asu on 2015-08-25.
//  Copyright (c) 2015 asu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Box : NSObject

@property (nonatomic, assign) float height;
@property (nonatomic, assign) float width;
@property (nonatomic, assign) float depth;

@property (nonatomic, strong) NSString* name;


-(instancetype)initWithName:(NSString*)name Height:(float)height Depth:(float)depth Width:(float)width;

+(instancetype)boxWithName:(NSString*)name Height:(float)height Depth:(float)depth Width:(float)width;

-(float)volume;

-(void)setDimensionsWithHeight:(float)height Depth:(float)depth Width:(float)width;

-(BOOL)canFitInBox:(Box*)otherBox;

-(int)countThatWillFitInBox:(Box*)otherBox;

@end
