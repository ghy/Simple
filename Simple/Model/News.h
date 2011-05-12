//
//  News.h
//  Simple
//
//  Created by YouMay on 11-5-5.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface News : NSObject {
    NSString *newId;
    NSString *title;
    NSString *author;
    NSString *content;
    NSString *pushTime;
}
@property (nonatomic,retain) NSString *newId;
@property (nonatomic, retain) NSString *title;
@property (nonatomic, retain) NSString *author;
@property (nonatomic, retain) NSString *content;
@property (nonatomic, retain) NSString *pushTime;
@end
