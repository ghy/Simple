#import "MusicRootViewController.h"
#import "NewsCell.h"
#import "News.h"
#import "ASIHTTPRequest.h"
#import "JSON.h"
#import "NewsDetailViewController.h"
#import "UIHTTPImageView.h"
#define kTableViewRowHeight 80
#define kScreenWidth 320
#define kScreenHeight 480

@implementation MusicRootViewController
@synthesize news,myTableView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)dealloc
{
    [news release];
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle



- (void)viewDidLoad
{
    spinner = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
	[spinner setCenter:CGPointMake(kScreenWidth/2.0, kScreenHeight/2.0)]; // I do this because I'm in landscape mode
    
    self.myTableView.hidden=YES;
    [self.view addSubview:spinner];
    
    [spinner startAnimating];
    [spinner release];

    
    NSURL *url = [NSURL URLWithString:@"http://61.144.123.215:2714/home/listnews"];
    ASIHTTPRequest *request = [ASIHTTPRequest requestWithURL:url];
      self.news=[[NSMutableArray alloc]init];
    [request setDelegate:self];
    [request startAsynchronous];
    
//    [request startSynchronous];
//    NSError *error=[request error];
//    if(!error){
//        self.news=[[NSMutableArray alloc]init];
//        SBJSON *parser = [[SBJSON alloc] init];	
//        NSString *responseString = [request responseString];
//        NSArray *objs=(NSArray *)[parser objectWithString:responseString error:nil];
//        for (NSDictionary *new in objs) {
//            NSLog(@"%@",[new objectForKey:@"Title"]);
//            News *n=[[News alloc]init];
//            n.newId=[new objectForKey:@"Id"];
//            n.title=[new objectForKey:@"Title"];
//            n.content=[new objectForKey:@"Content"];
//            n.author=[new objectForKey:@"Author"];
//            n.pushTime=[new objectForKey:@"PublicTime"];
//            [self.news addObject:n];
//        }
//    }

    [super viewDidLoad];
}

- (void)viewDidUnload
{
    self.news = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark -
#pragma mark Table Data Source Methods
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.news count]+1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if([indexPath row] == [news count]){
        static NSString *MoreCellIdentifier = @"MoreCellIdentifier";
        
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:MoreCellIdentifier];
        if(cell == nil){
            cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:MoreCellIdentifier] autorelease];
            
            CGRect moreButtonRect = CGRectMake(120,26,70,15);
            UIButton *moreButton = [[UIButton alloc] initWithFrame:moreButtonRect];
           
            [moreButton setBackgroundColor:[UIColor grayColor]];
            [moreButton setBackgroundImage:[UIImage imageNamed:@"hand_more.png"] forState:UIControlStateNormal];
            [moreButton addTarget:self action:@selector(btnMore:) forControlEvents:UIControlEventTouchUpInside];
            [cell.contentView addSubview:moreButton];
            [moreButton release];
        }
        
        return cell;
    }
    else{
        static NSString *NewsCellIdentifier = @"NewsCellIdentifier";
        NewsCell *cell = (NewsCell *)[tableView dequeueReusableCellWithIdentifier:NewsCellIdentifier];
        if(cell == nil){
            NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"NewsCell" owner:self options:nil];
            
            for(id oneObject in nib){
                if([oneObject isKindOfClass:[NewsCell class]]){
                    cell = (NewsCell *) oneObject;
                }
            }
        }

        NSUInteger row = [indexPath row];
        News *currNews = [news objectAtIndex:row];
        cell.lblTitle.text = currNews.title;
        cell.lblPushTime.text = currNews.pushTime;
        NSURL *imgUrl=[NSURL URLWithString:@"http://61.144.123.215:2714/home/getimg"];        
        cell.lblDescription.text = currNews.author;
        UIHTTPImageView *httpImgView=[[UIHTTPImageView alloc]initWithFrame:CGRectMake(4, 5, 60, 60)];
        [httpImgView setImageWithURL:imgUrl placeholderIamge:[UIImage imageNamed:@"5.png"]];
        [cell addSubview:httpImgView];

        return cell;
    }
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSUInteger row=[indexPath row];
    if(row != [news count]){
        News *new=[self.news objectAtIndex:row];
        NewsDetailViewController *detailController=[[NewsDetailViewController alloc]init];
        detailController.newId=new.newId;
        NSLog(@"newId=====%@",new.newId);
        [self.navigationController pushViewController:detailController animated:YES];
        [new release];
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return kTableViewRowHeight;
}


-(IBAction) btnMore:(id)sender{
    NSURL *url = [NSURL URLWithString:@"http://61.144.123.215:2714/home/listnews"];
    ASIHTTPRequest *request = [ASIHTTPRequest requestWithURL:url];
    [request setDelegate:self];
    [request startAsynchronous];
    
}

- (void)requestFinished:(ASIHTTPRequest *)request
{
    NSMutableArray *moreArray=[[NSMutableArray alloc]init];
	SBJSON *parser = [[SBJSON alloc] init];	
	NSString *responseString = [request responseString];
    NSArray *objs=(NSArray *)[parser objectWithString:responseString error:nil];
    for (NSDictionary *new in objs) {
        NSLog(@"%@",[new objectForKey:@"Title"]);
        News *n=[[News alloc]init];
        n.newId=[new objectForKey:@"Id"];
        n.title=[new objectForKey:@"Title"];
        n.content=[new objectForKey:@"Content"];
        n.author=[new objectForKey:@"Author"];
        n.pushTime=[new objectForKey:@"PublicTime"];
        [moreArray addObject:n];
        [n release];

    }
    
    [self performSelectorOnMainThread:@selector(appendTableWith:)
                           withObject:moreArray waitUntilDone:NO];
    self.myTableView.hidden=NO;
    [spinner stopAnimating];
	[parser release];
}

- (void)requestFailed:(ASIHTTPRequest *)request
{
    NSError *error = [request error];
}   

-(void)appendTableWith:(NSMutableArray *)data{
    for(int i =0;i<[data count];i++){
        [news addObject:[data objectAtIndex:i]];
    }
    
    NSMutableArray *insertIndexPaths = [NSMutableArray arrayWithCapacity:10];
    for(int ind=0;ind<[data count];ind++){
        NSIndexPath *newPath = 
        [NSIndexPath indexPathForRow:[news indexOfObject:[data objectAtIndex:ind]] inSection:0];
        [insertIndexPaths addObject:newPath];
    }
    
    [self.myTableView insertRowsAtIndexPaths:insertIndexPaths withRowAnimation:UITableViewRowAnimationFade];

}

@end
