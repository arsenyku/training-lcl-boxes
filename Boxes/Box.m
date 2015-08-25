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
    self = [super init];
    _height = 0;
    _depth = 0;
    _width = 0;
    
    _name = @"";
    
    return self;
}


-(instancetype)initWithName:(NSString*)name andHeight:(float)height andDepth:(float)depth andWidth:(float)width{
    self = [super init];
    _name = name;
    _height = height;
    _depth = depth;
    _width = width;
    
    return self;
}

+(instancetype)boxWithName:(NSString*)name andHeight:(float)height andDepth:(float)depth andWidth:(float)width{
    Box* newBox = [[Box alloc] initWithName:name andHeight:height andDepth:depth andWidth:width];
    return newBox;
}

-(void)setDimensionsWithHeight:(float)height andDepth:(float)depth andWidth:(float)width{
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
