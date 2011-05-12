#import <UIKit/UIKit.h>


@interface HomeRootViewController : UIViewController<UITableViewDelegate, UITableViewDataSource> {
    NSMutableDictionary *articles;
    NSMutableArray *keys;
    UITableView *myTableView;
 
}

@property (nonatomic, retain) NSMutableDictionary *articles;
@property (nonatomic, retain) NSMutableArray *keys;
@property (nonatomic, retain) IBOutlet UITableView *myTableView;
@end
