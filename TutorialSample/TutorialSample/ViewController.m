//
//  ViewController.m
//  TutorialSample
//
//  Created by yenkai huang on 2014/10/14.
//  Copyright (c) 2014年 yenkai huang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    myTutorialView = [[TutorialView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) LeftText:nil rightText:@"Tap this icon to add remote control"];
    myTutorialView.delegate = self;
    
    [self.view addSubview:myTutorialView];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) tutorialView:(TutorialView *)tutorialView touchPoint:(CGPoint)touchPoint{
    [myTutorialView removeFromSuperview];
}

@end
