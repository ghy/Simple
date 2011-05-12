
#import "EventsDetailsViewController.h"


@implementation EventsDetailsViewController

@synthesize scrollView;
@synthesize pageControl;
@synthesize startPoint;
//@synthesize view1;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

// The designated initializer. Override to perform setup that is required before the view is loaded.
// - (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
// if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
// // Custom initialization
// }
// return self;
// }


/*
 // Implement loadView to create a view hierarchy programmatically, without using a nib.
 - (void)loadView {
 }
 */



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	//scrollView=[[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, 320, 480)];
	//self.view=scrollView;
    scrollView=(UIScrollView *)self.view;
    
	[scrollView setContentSize:CGSizeMake(320,scrollView.frame.size.height)];
	[scrollView setPagingEnabled:NO];
	[scrollView setShowsHorizontalScrollIndicator:NO];
	[scrollView setClipsToBounds:YES];
    
	[scrollView setDelegate:self];

    //	scrollView=[[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, 320, 480)];
    //	self.view=scrollView;
    //	
    //	[scrollView setContentSize:CGSizeMake(320,480*2)];
    //	[scrollView setPagingEnabled:NO];
    //	[scrollView setShowsHorizontalScrollIndicator:NO];
    //	[scrollView setClipsToBounds:YES];
    //    scrollView.backgroundColor=[UIColor blackColor];
    //	[scrollView setDelegate:self];
    
    
    
//	UIImageView *iv=[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"1.png"]];
//    iv.frame=CGRectMake(5.0, 5.0, 56, 56);
//    [scrollView addSubview:iv];
//    
//    
//    
//    
//    [iv release];
    
   // view1=[[UIView alloc] initWithFrame:CGRectMake(0.0, 0.0, 320.0, 980.0)];
	//[view1 setBackgroundColor:[UIColor redColor]];
    //[scrollView addSubview:view1];
		

//	UIButton *testbutton = [UIButton buttonWithType:UIButtonTypeCustom];
//	testbutton.frame = CGRectMake(10, 20, 65, 30);
//	[testbutton addTarget:self action:@selector(buttonRespond) forControlEvents:UIControlEventTouchUpInside];
//	[testbutton setTitle:@"" forState:UIControlStateNormal];
//	testbutton.backgroundColor=[UIColor greenColor];
//	testbutton.alpha=0.1;
//	[scrollView addSubview:testbutton];
	

	//[view1 release];

//	pageControl=[[UIPageControl alloc] initWithFrame:CGRectMake(150, 400, 30, 30)];
//	pageControl.numberOfPages=3;
//	[pageControl addTarget:self action:@selector(c) forControlEvents:UIControlEventValueChanged];
//	[self.view addSubview:pageControl];
	[pageControl release];
}



-(void)buttonRespond
{
	//self.view1.backgroundColor=[UIColor yellowColor];
}


/*
 // Override to allow orientations other than the default portrait orientation.
 - (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
 // Return YES for supported orientations
 return (interfaceOrientation == UIInterfaceOrientationPortrait);
 }
 */

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
	[scrollView release];
    [super dealloc];
}

#pragma mark -
#pragma mark scrollView delegate method
-(void)scrollViewDidScroll:(UIScrollView *)scrollView1
{
//	CGFloat pageWidth=scrollView1.frame.size.width;
//	int page=floor((scrollView1.contentOffset.x-pageWidth/2)/pageWidth)+1;
//	pageControl.currentPage=page;
}


#pragma mark UIResponder methods
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
	UITouch *touch=[touches anyObject];
	startPoint=[touch locationInView:self.view];
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
//	UITouch *touch=[touches anyObject];
//	NSUInteger tapCount=[touch tapCount];
//	if(tapCount==1)
//		self.view1.backgroundColor=[UIColor blueColor];
//	if(tapCount==2)
//		self.view1.backgroundColor=[UIColor greenColor];
//	if(tapCount==3)
//		self.view1.backgroundColor=[UIColor redColor];
}
/*
 -(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
 {
 UITouch *touch=[touches anyObject];
 CGPoint currentPosition=[touch locationInView:self.view];
 CGFloat deltaX=fabsf(startPoint.x-currentPosition.x);
 CGFloat deltaY=fabsf(startPoint.y-currentPosition.y);
 if(deltaX>=kMinLength&&deltaY<=kMaxOffset)
 {
 UIAlertView *alert=[[UIAlertView alloc] initWithTitle:@"Horizontal swipe"
 message:nil
 delegate:nil
 cancelButtonTitle:@"Close"
 otherButtonTitles:nil];
 [alert show];
 [alert release];
 }
 if(deltaY>=kMinLength&&deltaX<=kMaxOffset)
 {
 UIAlertView *alert=[[UIAlertView alloc] initWithTitle:@"Vertical swipe"
 message:nil 
 delegate:nil
 cancelButtonTitle:@"Close"
 otherButtonTitles:nil];
 [alert show];
 [alert release];
 }
 }
 */


-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
	UITouch *touch=[touches anyObject];
	CGPoint currentLocation=[touch locationInView:self.view];
	CGRect frame=self.view.frame;
	
}



@end
