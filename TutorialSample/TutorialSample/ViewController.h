//
//  ViewController.h
//  TutorialSample
//
//  Created by yenkai huang on 2014/10/14.
//  Copyright (c) 2014年 yenkai huang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TutorialView.h"

@interface ViewController : UIViewController<TutorialViewDelegate>{
    TutorialView *myTutorialView;
}

@end

