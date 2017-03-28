//
//  DrawView.m
//  FingerPaintApp
//
//  Created by Pierre Binon on 2017-03-27.
//  Copyright © 2017 Pierre Binon. All rights reserved.
//

#import "DrawView.h"
#import "ViewController.h"



@implementation DrawView

-(void)drawRect: (CGRect) rect {
    
    [super drawRect: rect];
        
    NSArray *pathArray = [self.delegate getPaths];
    NSArray *colorArray  = [self.delegate getColors];
    
    for (int i = 0; i < pathArray.count; i++) {
        
        UIBezierPath *path = [UIBezierPath bezierPath];
        path = pathArray[i];
        [colorArray[i] setStroke];
        [path stroke];
    }
}

@end
