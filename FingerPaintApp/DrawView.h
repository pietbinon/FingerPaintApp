//
//  DrawView.h
//  FingerPaintApp
//
//  Created by Pierre Binon on 2017-03-27.
//  Copyright © 2017 Pierre Binon. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol Path <NSObject>

-(UIBezierPath *)getPath;
-(NSArray *)getPaths;
-(NSArray *)getColors;

@end



@interface DrawView: UIView

@property (nonatomic, weak) id<Path> delegate;

@end
