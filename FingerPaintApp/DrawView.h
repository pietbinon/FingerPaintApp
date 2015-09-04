//
//  DrawView.h
//  FingerPaintApp
//
//  Created by Derrick Park on 2015-09-04.
//  Copyright (c) 2015 dspAPP. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol Path <NSObject>

-(UIBezierPath *)getPath;
-(NSArray *)getPaths;
-(NSArray *)getColors;

@end


@interface DrawView : UIView

@property (nonatomic, weak) id<Path> delegate;

@end
