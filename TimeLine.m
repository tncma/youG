//
//  TimeLine.m
//  YouG
//
//  Created by Khan on 15/12/13.
//  Copyright (c) 2013 com.iKhanstudios. All rights reserved.
//

#import "TimeLine.h"
#import <Parse/Parse.h>

@interface TimeLine ()

@end

@implementation TimeLine

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title =@"Timeline";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    PFQuery *query = [PFQuery queryWithClassName:@"Issues"];
    [query getObjectInBackgroundWithId:@"9ULGtspoic" block:^(PFObject *obj, NSError *error) {
        // Do something with the returned PFObject in the gameScore variable.
        NSLog(@"%@", obj);
        nst = obj[@"Issues"];

      
    }];
    txtView.text = nst;
    
 

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [parseArray count];
}

@end
