#import "NewsDetailViewController.h"
#define kScreenWidth 320
#define kScreenHeight 480


@implementation NewsDetailViewController
@synthesize webView,newId;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)dealloc
{
    [webView release];
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{

    NSLog(@"self.newId:%@",self.newId);
    NSURL *url= [[NSURL alloc] initWithString:
                 [NSString stringWithFormat:@"http://61.144.123.215:2714/home/new/%@",self.newId]];
    //[[NSURL alloc]initWithString:
 
      NSLog(@"self.newId:%@",url);
   // NSURL *url = [[NSURL alloc] initWithString:@"http://www.baidu.com"];
    NSURLRequest *request = [[NSURLRequest alloc] initWithURL:url];
    [self.webView loadRequest:request];
    [super viewDidLoad];
}

- (void)viewDidUnload
{
    self.webView = nil;
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

//- (void)webViewDidStartLoad:(UIWebView *)webView;
//- (void)webViewDidFinishLoad:(UIWebView *)webView;

-(void)webViewDidStartLoad:(UIWebView *)webView{
    spinner = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
	[spinner setCenter:CGPointMake(kScreenWidth/2.0, kScreenHeight/2.0)]; // I do this because I'm in landscape mode
    
    [self.view addSubview:spinner];
    
    [spinner startAnimating];
    [spinner release];


}

-(void)webViewDidFinishLoad:(UIWebView *)webView{
    
    [spinner stopAnimating];

}

@end
