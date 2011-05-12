#import <UIKit/UIKit.h>


@interface CustomCell : UITableViewCell {
    UILabel *dateLabel;
    UILabel *timeLabel;
    UILabel *infoLabel;
    UILabel *titleLabel;
    UIImageView *picture;
}

@property (nonatomic, retain) IBOutlet UILabel *dateLabel;
@property (nonatomic, retain) IBOutlet UILabel *timeLabel;
@property (nonatomic, retain) IBOutlet UILabel *infoLabel;
@property (nonatomic, retain) IBOutlet UILabel *titleLabel;
@property (nonatomic, retain) IBOutlet UIImageView *picture;

@end
