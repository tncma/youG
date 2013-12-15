//
//  PostIssue.m
//  YouG
//
//  Created by Khan on 15/12/13.
//  Copyright (c) 2013 com.iKhanstudios. All rights reserved.
//

#import "PostIssue.h"

@interface PostIssue ()

@end

@implementation PostIssue

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"Post Issue";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
