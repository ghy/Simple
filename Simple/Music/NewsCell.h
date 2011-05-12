#import <Foundation/Foundation.h>
#import "UIHTTPImageView.h"

@interface NewsCell : UITableViewCell {
    UILabel *lblTitle;
    UILabel *lblPushTime;
    UILabel *lblDescription;
    NSURL *imgUrl;
    UIHTTPImageView *httpImgView;
}

@property (nonatomic,retain) IBOutlet UILabel *lblTitle;
@property (nonatomic,retain) IBOutlet UILabel *lblPushTime;
@property (nonatomic,retain) IBOutlet UILabel *lblDescription;
@property (nonatomic,retain) NSURL *imgUrl;
@property (nonatomic,retain) UIHTTPImageView *httpImgView;

@end
