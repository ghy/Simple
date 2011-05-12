//
//  MyScrollViewViewController.h
//  Simple
//
//  Created by YouMay on 11-5-4.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyScrollViewViewController : UIViewController <UIScrollViewDelegate>{
	UIScrollView  *scrollView;
	UIPageControl *pageControl;
	CGPoint startPoint;
	UIView *view1;
	UIView *view2;
	UIView *view3;
    
}
@property (nonatomic,retain) IBOutlet UIScrollView *scrollView;
@property (nonatomic,retain) UIPageControl *pageControl;
@property CGPoint startPoint;
@property (nonatomic,retain) IBOutlet UIView *view1;
@property (nonatomic,retain) IBOutlet UIView *view2;
@property (nonatomic,retain) IBOutlet UIView *view3;
@end
