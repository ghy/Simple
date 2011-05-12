#import "EventsRootViewController.h"
#import "CustomCell.h"
#import "Article.h"
#import "EventsDetailViewController.h"
#import "EventsDetailsViewController.h"
#import "MyScrollViewViewController.h"
#define kTableViewRowHeight 70

@implementation EventsRootViewController
@synthesize computers,myTableView;

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
    [computers release];
    [myTableView release];
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
 //   self.title=@"Sydney Symphony";
//    NSDictionary *row1 = [[NSDictionary alloc] initWithObjectsAndKeys:@"MacBook",@"Name",
//                          @"White",@"Color",nil];
//    NSDictionary *row2 = [[NSDictionary alloc] initWithObjectsAndKeys:@"Mac Pro",@"Name",
//                          @"Silver",@"Color",nil];
//    NSDictionary *row3 = [[NSDictionary alloc] initWithObjectsAndKeys:@"iMac",@"Name",
//                          @"White",@"Color",nil];
//    NSDictionary *row4 = [[NSDictionary alloc] initWithObjectsAndKeys:@"Mac mini",@"Name",
//                          @"White",@"Color",nil];
//    NSDictionary *row5 = [[NSDictionary alloc] initWithObjectsAndKeys:@"Mac Pro",@"Name",
//                          @"Silver",@"Color",nil];
//
//    NSArray *array = [[NSArray alloc] initWithObjects:row1,row2,row3,row4,row5, nil];
//    self.computers = array;
//    
//    [row1 release];
//    [row2 release];
//    [row3 release];
//    [row4 release];
//    [row5 release];
//    [array release];
    
    
    Article *a1 = [[Article alloc] init];
    a1.title = @"Sydney Symphony / The \n Fellowship of the Ring:On";
    a1.info = @"Sydney Opera House:Concert Hail";
    a1.createDate = @"6 May 2011";
    a1.createTime = @"7:00p Friday";
    
    UIImage *pic1 = [UIImage imageNamed:@"1.png"];
    a1.picture = pic1;
    
    Article *a2 = [[Article alloc] init];
    a2.title = @"Sydney Symphony / Mahler \n 10:Love & Death / Mahler";
    a2.info = @"Sydney Opera House:Concert Hail";
    a2.createDate = @"12 May 2011";
    a2.createTime = @"1:30p Thursday";
    
    UIImage *pic2 = [UIImage imageNamed:@"2.png"];
    a2.picture = pic2;
    
    Article *a3 = [[Article alloc] init];
    a3.title = @"Sydney Symphony / Mahler \n 10:Love & Death / Mahler";
    a3.info = @"Sydney Opera House:Concert Hail";
    a3.createDate = @"12 May 2011";
    a3.createTime = @"1:30p Thursday";
    
    UIImage *pic3 = [UIImage imageNamed:@"3.png"];
    a3.picture = pic3;
    
    Article *a4 = [[Article alloc] init];
    a4.title = @"Sydney Symphony / Mahler \n 10:Love & Death / Mahler";
    a4.info = @"Sydney Opera House:Concert Hail";
    a4.createDate = @"12 May 2011";
    a4.createTime = @"1:30p Thursday";
    
    UIImage *pic4 = [UIImage imageNamed:@"4.png"];
    a4.picture = pic4;
    
    Article *a5 = [[Article alloc] init];
    a5.title = @"Sydney Symphony / Mahler \n 10:Love & Death / Mahler";
    a5.info = @"Sydney Opera House:Concert Hail";
    a5.createDate = @"12 May 2011";
    a5.createTime = @"1:30p Thursday";
    
    UIImage *pic5 = [UIImage imageNamed:@"5.png"];
    a5.picture = pic5;
    
    Article *a6 = [[Article alloc] init];
    a6.title = @"Sydney Symphony / Mahler \n 10:Love & Death / Mahler";
    a6.info = @"Sydney Opera House:Concert Hail";
    a6.createDate = @"12 May 2011";
    a6.createTime = @"1:30p Thursday";
    
    UIImage *pic6 = [UIImage imageNamed:@"3.png"];
    a6.picture = pic6;
    
    Article *a7 = [[Article alloc] init];
    a7.title = @"Sydney Symphony / Mahler \n 10:Love & Death / Mahler";
    a7.info = @"Sydney Opera House:Concert Hail";
    a7.createDate = @"12 May 2011";
    a7.createTime = @"1:30p Thursday";
    
    UIImage *pic7 = [UIImage imageNamed:@"2.png"];
    a7.picture = pic7;
    
    Article *a8 = [[Article alloc] init];
    a8.title = @"Sydney Symphony / Mahler \n 10:Love & Death / Mahler";
    a8.info = @"Sydney Opera House:Concert Hail";
    a8.createDate = @"12 May 2011";
    a8.createTime = @"1:30p Thursday";
    
    UIImage *pic8 = [UIImage imageNamed:@"5.png"];
    a8.picture = pic8;
    
    Article *a9 = [[Article alloc] init];
    a9.title = @"Sydney Symphony / Mahler \n 10:Love & Death / Mahler";
    a9.info = @"Sydney Opera House:Concert Hail";
    a9.createDate = @"12 May 2011";
    a9.createTime = @"1:30p Thursday";
    
    UIImage *pic9 = [UIImage imageNamed:@"1.png"];
    a9.picture = pic9;
    
    Article *a10 = [[Article alloc] init];
    a10.title = @"Sydney Symphony / Mahler \n 10:Love & Death / Mahler";
    a10.info = @"Sydney Opera House:Concert Hail";
    a10.createDate = @"12 May 2011";
    a10.createTime = @"1:30p Thursday";
    
    UIImage *pic10 = [UIImage imageNamed:@"4.png"];
    a10.picture = pic10;
    
    NSMutableArray *array = [[NSMutableArray alloc] initWithObjects:a1,a2,a3,a4,a5,a6,a7,a8,a9,a10, nil];
    self.computers = array;
    
    [array release];
    [a1 release];
    [a2 release];
    [a3 release];
    [a4 release];
    [a5 release];
    [a6 release];
    [a7 release];
    [a8 release];
    [a9 release];
    [a10 release];

    [super viewDidLoad];
}

- (void)viewDidUnload
{
    self.computers = nil;
    self.myTableView = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

-(IBAction) btnMore:(id)sender{
    Article *a1 = [[Article alloc] init];
    a1.title = @"Sydney Symphony / The \n Fellowship of the Ring:On";
    a1.info = @"Sydney Opera House:Concert Hail";
    a1.createDate = @"6 May 2011";
    a1.createTime = @"7:00p Friday";
    
    UIImage *pic1 = [UIImage imageNamed:@"1.png"];
    a1.picture = pic1;
    
    Article *a2 = [[Article alloc] init];
    a2.title = @"Sydney Symphony / Mahler \n 10:Love & Death / Mahler";
    a2.info = @"Sydney Opera House:Concert Hail";
    a2.createDate = @"12 May 2011";
    a2.createTime = @"1:30p Thursday";
    
    UIImage *pic2 = [UIImage imageNamed:@"2.png"];
    a2.picture = pic2;
    
    Article *a3 = [[Article alloc] init];
    a3.title = @"Sydney Symphony / Mahler \n 10:Love & Death / Mahler";
    a3.info = @"Sydney Opera House:Concert Hail";
    a3.createDate = @"12 May 2011";
    a3.createTime = @"1:30p Thursday";
    
    UIImage *pic3 = [UIImage imageNamed:@"3.png"];
    a3.picture = pic3;
    
    Article *a4 = [[Article alloc] init];
    a4.title = @"Sydney Symphony / Mahler \n 10:Love & Death / Mahler";
    a4.info = @"Sydney Opera House:Concert Hail";
    a4.createDate = @"12 May 2011";
    a4.createTime = @"1:30p Thursday";
    
    UIImage *pic4 = [UIImage imageNamed:@"4.png"];
    a4.picture = pic4;
    
    Article *a5 = [[Article alloc] init];
    a5.title = @"Sydney Symphony / Mahler \n 10:Love & Death / Mahler";
    a5.info = @"Sydney Opera House:Concert Hail";
    a5.createDate = @"12 May 2011";
    a5.createTime = @"1:30p Thursday";
    
    UIImage *pic5 = [UIImage imageNamed:@"5.png"];
    a5.picture = pic5;
    
    Article *a6 = [[Article alloc] init];
    a6.title = @"Sydney Symphony / Mahler \n 10:Love & Death / Mahler";
    a6.info = @"Sydney Opera House:Concert Hail";
    a6.createDate = @"12 May 2011";
    a6.createTime = @"1:30p Thursday";
    
    UIImage *pic6 = [UIImage imageNamed:@"3.png"];
    a6.picture = pic6;
    
    Article *a7 = [[Article alloc] init];
    a7.title = @"Sydney Symphony / Mahler \n 10:Love & Death / Mahler";
    a7.info = @"Sydney Opera House:Concert Hail";
    a7.createDate = @"12 May 2011";
    a7.createTime = @"1:30p Thursday";
    
    UIImage *pic7 = [UIImage imageNamed:@"2.png"];
    a7.picture = pic7;
    
    Article *a8 = [[Article alloc] init];
    a8.title = @"Sydney Symphony / Mahler \n 10:Love & Death / Mahler";
    a8.info = @"Sydney Opera House:Concert Hail";
    a8.createDate = @"12 May 2011";
    a8.createTime = @"1:30p Thursday";
    
    UIImage *pic8 = [UIImage imageNamed:@"5.png"];
    a8.picture = pic8;
    
    Article *a9 = [[Article alloc] init];
    a9.title = @"Sydney Symphony / Mahler \n 10:Love & Death / Mahler";
    a9.info = @"Sydney Opera House:Concert Hail";
    a9.createDate = @"12 May 2011";
    a9.createTime = @"1:30p Thursday";
    
    UIImage *pic9 = [UIImage imageNamed:@"1.png"];
    a9.picture = pic9;
    
    Article *a10 = [[Article alloc] init];
    a10.title = @"Sydney Symphony / Mahler \n 10:Love & Death / Mahler";
    a10.info = @"Sydney Opera House:Concert Hail";
    a10.createDate = @"12 May 2011";
    a10.createTime = @"1:30p Thursday";
    
    UIImage *pic10 = [UIImage imageNamed:@"4.png"];
    a10.picture = pic10;
    
    NSMutableArray *more = [[NSMutableArray alloc] initWithObjects:a1,a2,a3,a4,a5,a6,a7,a8,a9,a10, nil];
    
    [self performSelectorOnMainThread:@selector(appendTableWith:)
                           withObject:more waitUntilDone:NO];
    
    [more release];
    [a1 release];
    [a2 release];
    [a3 release];
    [a4 release];
    [a5 release];
    [a6 release];
    [a7 release];
    [a8 release];
    [a9 release];
    [a10 release];
}

-(void)appendTableWith:(NSMutableArray *)data{
    for(int i =0;i<[data count];i++){
        [computers addObject:[data objectAtIndex:i]];
    }
    
    NSMutableArray *insertIndexPaths = [NSMutableArray arrayWithCapacity:10];
    for(int ind=0;ind<[data count];ind++){
        NSIndexPath *newPath = 
        [NSIndexPath indexPathForRow:[computers indexOfObject:[data objectAtIndex:ind]] inSection:0];
        [insertIndexPaths addObject:newPath];
    }
    
    [self.myTableView insertRowsAtIndexPaths:insertIndexPaths withRowAnimation:UITableViewRowAnimationFade];
}

#pragma mark -
#pragma mark Table Data Source Methods
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.computers count] + 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if([indexPath row] == [computers count]){
        static NSString *MoreCellIdentifier = @"MoreCellIdentifier";
        
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:MoreCellIdentifier];
        if(cell == nil){
            cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:MoreCellIdentifier] autorelease];
            
            CGRect moreButtonRect = CGRectMake(120,26,70,15);
            UIButton *moreButton = [[UIButton alloc] initWithFrame:moreButtonRect];
            
            //[moreButton setTitle:@"More" forState:UIControlStateNormal];
            [moreButton setBackgroundColor:[UIColor grayColor]];
            [moreButton setBackgroundImage:[UIImage imageNamed:@"hand_more.png"] forState:UIControlStateNormal];
            [moreButton addTarget:self action:@selector(btnMore:) forControlEvents:UIControlEventTouchUpInside];
            [cell.contentView addSubview:moreButton];
            [moreButton release];
        }
        
        return cell;
    }
    else{
        static NSString *CustomCellIdentifier = @"CustomCellIdentifier";
        
        CustomCell *cell = (CustomCell *)[tableView dequeueReusableCellWithIdentifier:CustomCellIdentifier];
        if(cell == nil){
            NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"CustomCell" owner:self options:nil];
            
            for(id oneObject in nib){
                if([oneObject isKindOfClass:[CustomCell class]]){
                    cell = (CustomCell *) oneObject;
                }
            }
        }
        
        NSUInteger row = [indexPath row];
        Article *article = [self.computers objectAtIndex:row];
        cell.titleLabel.text = article.title;
        cell.infoLabel.text = article.info;
        cell.dateLabel.text = article.createDate;
        cell.timeLabel.text = article.createTime;
        cell.picture.image = article.picture;
        return cell;
    }
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSUInteger row=[indexPath row];
    if(row != [computers count]){
        EventsDetailsViewController *detailController=[[EventsDetailsViewController alloc]init];
       //TestView *detailController = [[TestView alloc] initwithframe:CGRectMake(0, 100, 300, 300);
        [self.navigationController pushViewController:detailController animated:YES];
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return kTableViewRowHeight;
}

@end
