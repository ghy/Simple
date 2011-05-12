#import <UIKit/UIKit.h>

@interface EventsDetailsViewController : UIViewController <UIScrollViewDelegate>{
	UIScrollView  *scrollView;
	UIPageControl *pageControl;
	CGPoint startPoint;
	//UIView *view1;
  
}
@property (nonatomic,retain) IBOutlet UIScrollView *scrollView;
@property (nonatomic,retain) UIPageControl *pageControl;
@property CGPoint startPoint;
//@property (nonatomic,retain) IBOutlet UIView *view1;
@end
