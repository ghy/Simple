
#import "UIHTTPImageView.h"


@implementation UIHTTPImageView 

-(void) setImageWithURL:(NSURL *)url placeholderIamge:(UIImage *)placeHolder{
    [request setDelegate:nil];
    [request cancel];
    [request release];
    
    request=[[ASIHTTPRequest requestWithURL:url]retain];
    [request setCacheStoragePolicy:ASICachePermanentlyCacheStoragePolicy];
    
    if(placeHolder)
        self.image=placeHolder;
    
    [request setDelegate:self];
    [request startAsynchronous];
    
}

-(void)dealloc{
    [request setDelegate:nil];
    [request cancel];
    [request release];
    [super dealloc];
}

-(void)requestFinished:(ASIHTTPRequest *)req{
        if(request.responseStatusCode!=200)   
        return;
    
    self.image=[UIImage imageWithData:request.responseData];
}
    

@end
