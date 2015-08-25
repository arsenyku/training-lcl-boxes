//
//  Box.m
//  Boxes
//
//  Created by asu on 2015-08-25.
//  Copyright (c) 2015 asu. All rights reserved.
//

#import "Box.h"

@implementation Box

-(instancetype)init{
    _height = 0;
    _depth = 0;
    _width = 0;
    
    _name = @"";
    
    return self;
}

-(instancetype)initWithName:(NSString*)name Height:(float)height Depth:(float)depth Width:(float)width{
    self = [super init];
    _name = name;
    [self setDimensionsWithHeight:height Depth:depth Width:width];
    
    return self;
}

+(instancetype)boxWithName:(NSString*)name Height:(float)height Depth:(float)depth Width:(float)width{
    Box* newBox = [[Box alloc] initWithName:name Height:height Depth:depth Width:width];
    return newBox;
}

-(void)setDimensionsWithHeight:(float)height Depth:(float)depth Width:(float)width{
    self.height = height;
    self.depth = depth;
    self.width = width;
}

-(float)volume{
    return self.height * self.depth * self.width;
}

-(BOOL)canFitInBox:(Box*)otherBox{
    return [self volume] < [otherBox volume];
}

-(int)countThatWillFitInBox:(Box*)otherBox{
    if ([self canFitInBox:otherBox]){
        return [otherBox volume] / [self volume];
    }
    else{
        return 0;
    }
}




@end
