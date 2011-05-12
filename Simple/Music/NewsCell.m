//
//  NewsCell.m
//  Simple
//
//  Created by YouMay on 11-5-5.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import "NewsCell.h"



@implementation NewsCell
@synthesize lblTitle,lblPushTime,lblDescription,imgUrl;

-(id) initWithFrame:(CGRect)frame reuseIdentifier:(NSString *)reuseIdentifier{
    if(self==[super initWithFrame:frame reuseidentifier:reuseIdentifier])
    {
    }
    return  self;
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
    [httpImgView release];
    [lblTitle release];
    [lblPushTime release];
    [lblDescription release];
    [super dealloc];
}

@end

