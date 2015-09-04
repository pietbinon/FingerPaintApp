//
//  DrawView.m
//  FingerPaintApp
//
//  Created by Derrick Park on 2015-09-04.
//  Copyright (c) 2015 dspAPP. All rights reserved.
//

#import "DrawView.h"
#import "ViewController.h"

@implementation DrawView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(void)drawRect:(CGRect)rect {
    
    [super drawRect:rect];
        
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
