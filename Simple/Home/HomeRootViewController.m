#import "HomeRootViewController.h"
#import "CustomCell.h"
#import "Article.h"
#import "EventsDetailsViewController.h"
#define kTableViewRowHeight 70

@implementation HomeRootViewController
@synthesize articles,keys,myTableView;

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
    [articles release];
    [keys release];
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
    
    NSArray *group1 = [[NSArray alloc] initWithObjects:a1, nil];
    NSArray *group2 = [[NSArray alloc] initWithObjects:a2, nil];
    NSArray *group3 = [[NSArray alloc] initWithObjects:a1,a2,a1,a2,a1,a2,a1,a2, nil];

    
    NSMutableDictionary *dict = [[NSMutableDictionary alloc] initWithObjectsAndKeys:group1,@"Now",group2,@"Featured",group3,@"What's New",nil];
    self.articles = dict;
    
    NSMutableArray *array = (NSMutableArray *)[[dict allKeys]
                                               sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
    self.keys = array;
    
    [group1 release];
    [group2 release];
    [group3 release];
    [a1 release];
    [a2 release];
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    self.articles = nil;
    self.keys = nil;
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

#pragma mark -
#pragma mark Table View Data Source Methods
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return [keys count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    NSString *key = [keys objectAtIndex:section];
    NSArray *articleSection = [articles objectForKey:key];
    return [articleSection count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSUInteger section = [indexPath section];
    NSUInteger row = [indexPath row];
    
    NSString *key = [keys objectAtIndex:section];
    NSArray *articleSection = [articles objectForKey:key];
    
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
    
    Article *article = [articleSection objectAtIndex:row];
    cell.titleLabel.text = article.title;
    cell.infoLabel.text = article.info;
    cell.dateLabel.text = article.createDate;
    cell.timeLabel.text = article.createTime;
    cell.picture.image = article.picture;
    
    return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    NSString *key = [keys objectAtIndex:section];
    return key;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    //NSUInteger row=[indexPath row];
    
    EventsDetailsViewController *detailController=[[EventsDetailsViewController alloc]init];
    
    [self.navigationController pushViewController:detailController animated:YES];
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return kTableViewRowHeight;
}

//- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
//
//    NSString *key = [keys objectAtIndex:section];
//    
//    UILabel *title = [[UILabel alloc] init];
//    title.text = key;
//    title.textColor = [UIColor whiteColor];
//    title.backgroundColor = [UIColor grayColor];
//    
//    
//    return title;

//        // create the parent view that will hold header Label
//        //UIView* customView = [[UIView alloc] initWithFrame:CGRectMake(10.0, 0.0, 320, 20)];
//        UIImageView *image= [[UIImageView alloc] initWithFrame:CGRectMake(10.0, 0.0, 320, 20)];
//        image.backgroundColor=[UIColor redColor];
//        //image.image=[UIImage imageNamed:@"call.png"];
//        //[customView addSubview:image];
//        //customView.backgroundColor=[UIColor redColor];
//        // create the button object
//        UILabel * headerLabel = [[UILabel alloc] initWithFrame:CGRectZero];
//        headerLabel.backgroundColor = [UIColor clearColor];
//        headerLabel.opaque = NO;
//        headerLabel.textColor = [UIColor blackColor];
//        //headerLabel.highlightedTextColor = [UIColor redColor];
//        headerLabel.font = [UIFont boldSystemFontOfSize:20];
//        headerLabel.frame = CGRectMake(10.0, 0.0, 300.0, 44.0);
//        
//        // If you want to align the header text as centered
//        // headerLabel.frame = CGRectMake(150.0, 0.0, 300.0, 44.0);
//        headerLabel.text = [[[UILocalizedIndexedCollation currentCollation] sectionTitles] objectAtIndex:section];
//        
//        //headerLabel.text =[temp objectAtIndex:5];// i.e. array element
//        //[customView addSubview:headerLabel];
//        [image addSubview:headerLabel];
//        //return customView;
//        return image;

//}

@end
