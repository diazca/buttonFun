//
//  BFSquare.m
//  ButtonFun
//
//  Created by diazca on 2/21/13.
//  Copyright (c) 2013 com.clos. All rights reserved.
//

#import "BFSquare.h"

@implementation BFSquare

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [self getRandomColor];
        UITapGestureRecognizer *singleFingerTap =
        [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(setViewColor:)];
        [self addGestureRecognizer:singleFingerTap];
       
    }
    return self;
}
- (void)setViewColor:(UITapGestureRecognizer *)recognizer
{
    recognizer.view.backgroundColor = [self getRandomColor];
}
-(UIColor *)getRandomColor
{
    return [UIColor colorWithRed:[self getRandomRGBValue] green:[self getRandomRGBValue] blue:[self getRandomRGBValue] alpha:1];
}

-(double)getRandomRGBValue
{
    return (arc4random() % 255)/255.0;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
