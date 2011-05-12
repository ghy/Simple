#import <Foundation/Foundation.h>
#import "ASIHTTPRequest.h"

@interface UIHTTPImageView : UIImageView {
    ASIHTTPRequest *request;
}
-(void) setImageWithURL:(NSURL *)url placeholderIamge:(UIImage *)placeHolder;
@end
