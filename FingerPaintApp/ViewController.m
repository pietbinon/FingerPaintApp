//
//  ViewController.m
//  FingerPaintApp
//
//  Created by Pierre Binon on 2017-03-27.
//  Copyright © 2017 Pierre Binon. All rights reserved.
//

#import "ViewController.h"
#import "DrawView.h"



@interface ViewController () {
    CGPoint startLocation;
    CGPoint currentLocation;
}

@property (strong, nonatomic) IBOutlet DrawView *drawView;
@property (strong, nonatomic) UIBezierPath *path;
@property (strong, nonatomic) NSArray *paths;
@property (strong, nonatomic) NSArray *colors;
@property (assign, nonatomic) NSInteger colorIndex;

@end




@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    self.drawView.delegate = self;
    UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc] initWithTarget: self action: @selector(paintGesture:)];
    [self.drawView addGestureRecognizer: panGesture];
    self.path = [UIBezierPath bezierPath];

    self.paths = @[[UIBezierPath bezierPath], [UIBezierPath bezierPath], [UIBezierPath bezierPath],[UIBezierPath bezierPath]];
    self.colors = @[[UIColor blackColor], [UIColor blueColor], [UIColor redColor], [UIColor whiteColor]];
    self.colorIndex = 0;
}


- (IBAction) paintGesture: (UIPanGestureRecognizer *) sender {
    
    if (sender.state == UIGestureRecognizerStateBegan ) {
        
        startLocation = [sender locationInView: self.view];
        [self.paths[self.colorIndex] moveToPoint: startLocation];
        
    } else if (sender.state == UIGestureRecognizerStateChanged) {
        
        currentLocation = [sender locationInView: self.view];
        [self.paths[self.colorIndex] addLineToPoint: currentLocation];
    }
    
    [self.drawView setNeedsDisplay];
}


- (IBAction) blackButtonPressed: (UIButton *) sender {
    
    self.colorIndex = 0;
}


- (IBAction) blueButtonPressed: (UIButton *) sender {
    
    self.colorIndex = 1;
}


- (IBAction) redButtonPressed: (UIButton *) sender {
    
    self.colorIndex = 2;
}


- (IBAction) eraseButtonPressed: (UIButton *) sender {
    
    self.colorIndex = 3;
}


- (UIBezierPath *) getPath {
    
    return self.path;
}


- (NSArray *) getPaths {
    
    return self.paths;
}


- (NSArray *) getColors {
    
    return self.colors;
}

@end
