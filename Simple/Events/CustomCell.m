#import "CustomCell.h"


@implementation CustomCell
@synthesize dateLabel,timeLabel,infoLabel,titleLabel,picture;


- (id)initWithFrame:(CGRect)frame reuseIdentifier:(NSString *)reuseIdentifier{
    if (self == [super initWithFrame:frame reuseIdentifier:reuseIdentifier]){
        
    }
    
    return self;
}


- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)dealloc
{
    [dateLabel release];
    [timeLabel release];
    [infoLabel release];
    [titleLabel release];
    [picture release];
    [super dealloc];
}

@end
