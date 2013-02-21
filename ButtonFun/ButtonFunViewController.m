//
//  ButtonFunViewController.m
//  ButtonFun
//
//  Created by CLOS on 2/20/13.
//  Copyright (c) 2013 com.clos. All rights reserved.
//

#import "ButtonFunViewController.h"
#import "BFSquare.h"
@interface ButtonFunViewController ()

@end

@implementation ButtonFunViewController


//Builds the main view with random colored UIViews
- (void)initSquares
{
    CGRect screenBounds = [[UIScreen mainScreen] bounds];
    
    UIDeviceOrientation orientation = [[UIDevice currentDevice] orientation];
    
    for(int x = 0;x < screenBounds.size.width; x+=40) // use x+=40
    {
        for(int y=0;y<screenBounds.size.height;y+=40)
        {
            BFSquare *squareView;
            if(UIDeviceOrientationIsLandscape(orientation))
                squareView = [[BFSquare alloc] initWithFrame:CGRectMake(y, x, 40, 40)];
            else
                squareView = [[BFSquare alloc] initWithFrame:CGRectMake(x, y, 40, 40)];
            
            [super.view addSubview:(squareView)];
        }
    }
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self initSquares];
}

-(void)viewWillAppear:(BOOL)animated
{
    
}


-(BOOL)shouldAutorotateToInterfaceOrientation
{
    UIDeviceOrientation orientation = [[UIDevice currentDevice] orientation];
    return UIDeviceOrientationIsPortrait(orientation);
}
- (void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation
{
    NSArray *subviews = [super.view subviews];
    for (int i=0; i<[subviews count]; i++)
    {
        if([[subviews objectAtIndex:i] isKindOfClass:[BFSquare class]])
            [[subviews objectAtIndex:i] removeFromSuperview];
        
    }
    [self initSquares];
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end

