#import <Foundation/Foundation.h>


@interface Article : NSObject {
    NSString *title;
    NSString *createDate;
    NSString *createTime;
    NSString *info;
    UIImage *picture;
}

@property (nonatomic, retain) NSString *title;
@property (nonatomic, retain) NSString *info;
@property (nonatomic, retain) NSString *createDate;
@property (nonatomic, retain) NSString *createTime;
@property (nonatomic, retain) UIImage *picture;

@end
