//
//  TutorialView.h
//  TutorialSample
//
//  Created by yenkai huang on 2014/10/14.
//  Copyright (c) 2014年 yenkai huang. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol TutorialViewDelegate;

@interface TutorialView : UIView{
    UIImageView *leftArrow;
    UIImageView *rightArrow;
    
    UILabel *leftLabel;
    UILabel *rightLabel;
}

@property (nonatomic, strong) id<TutorialViewDelegate>delegate;

- (id) initWithFrame:(CGRect)frame LeftText:(NSString *)leftText rightText:(NSString *)rightText ;

@end

@protocol TutorialViewDelegate

@optional
- (void) tutorialView:(TutorialView *)tutorialView touchPinot:(CGPoint)touchPinot;

@end
