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


/**
 * @brief Initial TutorialView with LeftText and rightText.
 * @param LeftText left navigation item text.
 * @param rightText right navigation item text
 */
- (id) initWithFrame:(CGRect)frame LeftText:(NSString *)leftText rightText:(NSString *)rightText ;

@end

@protocol TutorialViewDelegate

@optional
/**
 * @brief TutorialView Delegate: when touch in TutorialView
 * @param touchPinot CGPoint, touch location.
 * @param
 */
- (void) tutorialView:(TutorialView *)tutorialView touchPoint:(CGPoint)touchPoint;

@end
