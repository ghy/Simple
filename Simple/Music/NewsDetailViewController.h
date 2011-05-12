#import <UIKit/UIKit.h>


@interface NewsDetailViewController : UIViewController<UIWebViewDelegate> {
    UIWebView *webView;
    NSString *newId;
    UIActivityIndicatorView *spinner;
}

@property (nonatomic, retain) IBOutlet UIWebView *webView;
@property (nonatomic, retain) NSString *newId;
@end
