//
//  TutorialView.m
//  TutorialSample
//
//  Created by yenkai huang on 2014/10/14.
//  Copyright (c) 2014年 yenkai huang. All rights reserved.
//

#import "TutorialView.h"

@implementation TutorialView

- (id) initWithFrame:(CGRect)frame LeftText:(NSString *)leftText rightText:(NSString *)rightText {
    self = [super init];
    if (self) {
        
        [self setFrame:frame];
        UIView *backgroundView = [[UIView alloc] initWithFrame:frame];
        [backgroundView setBackgroundColor:[UIColor blackColor]];
        [backgroundView setAlpha:0.5];
        [self addSubview:backgroundView];
        
        [self initUI];
        
        if (!leftText) {
            leftArrow.hidden = YES;
            leftLabel.hidden = YES;
        }else{
            leftLabel.text = leftText;
        }
        
        if (!rightText) {
            rightArrow.hidden = YES;
            rightLabel.hidden = YES;
        }else{
            rightLabel.text = rightText;
        }
        
    }
    return self;
}

- (void) initUI{
    leftArrow = [[UIImageView alloc] initWithFrame:CGRectMake(222, 56, 32, 85)];
    [leftArrow setImage:[UIImage imageNamed:@"Arrow1.png"]];
    
    rightArrow = [[UIImageView alloc] initWithFrame:CGRectMake(245, 56, 52, 138)];
    [rightArrow setImage:[UIImage imageNamed:@"Arrow2.png"]];
    
    leftLabel = [[UILabel alloc] initWithFrame:CGRectMake(37, 142, 200, 50)];
    [leftLabel setTextAlignment:NSTextAlignmentRight];
    [leftLabel setTextColor:[UIColor whiteColor]];
    [leftLabel setNumberOfLines:2];
    
    rightLabel = [[UILabel alloc] initWithFrame:CGRectMake(49, 192, 200, 50)];
    [rightLabel setTextAlignment:NSTextAlignmentRight];
    [rightLabel setTextColor:[UIColor whiteColor]];
    [rightLabel setNumberOfLines:2];
    
    [self addSubview:leftArrow];
    [self addSubview:leftLabel];
    [self addSubview:rightArrow];
    [self addSubview:rightLabel];
    
    //The setup code (in viewDidLoad in your view controller)
    UITapGestureRecognizer *singleFingerTap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(handleSingleTap:)];
    [self addGestureRecognizer:singleFingerTap];
}

//The event handling method
- (void)handleSingleTap:(UITapGestureRecognizer *)recognizer {
    CGPoint location = [recognizer locationInView:[recognizer.view superview]];
    [self.delegate tutorialView:self touchPoint:location];
}


@end
