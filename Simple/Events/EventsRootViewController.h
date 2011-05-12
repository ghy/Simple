#import <UIKit/UIKit.h>
#define kNameValueTag 1
#define kColorValueTag 2

@interface EventsRootViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>{
    NSMutableArray *computers;
    UITableView *myTableView;
}

@property (nonatomic, retain) NSMutableArray *computers;
@property (nonatomic, retain) IBOutlet UITableView *myTableView;
@end
