//
//  main.m
//  Boxes
//
//  Created by asu on 2015-08-25.
//  Copyright (c) 2015 asu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Box.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        Box *smallBox = [Box boxWithName:@"Box of Matches" andHeight:1 andDepth:1 andWidth:1];
        Box *mediumBox = [Box boxWithName:@"Lamp Box" andHeight:3 andDepth:1 andWidth:1];
        
        float volume = [smallBox volume];
        
        NSLog(@"The volume of the box is %f", volume);
        
        Box* largeBox = [Box boxWithName:@"Moving Box #1" andHeight:5 andDepth:5 andWidth:5];
        
        NSLog(@"%@ will fit into %@ %d times.", smallBox.name, largeBox.name,
              [smallBox countThatWillFitInBox:largeBox]);
        
        NSLog(@"%@ will fit into %@ %d times.", mediumBox.name, largeBox.name,
              [mediumBox countThatWillFitInBox:largeBox]);

        NSLog(@"%@ will fit into %@ %d times.", largeBox.name, smallBox.name,
              [largeBox countThatWillFitInBox:smallBox]);

        NSLog(@"%@ will fit into %@ %d times.", smallBox.name, smallBox.name,
              [smallBox countThatWillFitInBox:smallBox]);

    }
    return 0;
}
