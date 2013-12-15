//
//  graphController.m
//  YouG
//
//  Created by Khan on 15/12/13.
//  Copyright (c) 2013 com.iKhanstudios. All rights reserved.
//

#import "graphController.h"
#import "tabbarcontroller.h"
@interface graphController ()

@end

@implementation graphController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        
        self.title = @"Graph";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    imgV = [[UIImageView alloc]initWithFrame:CGRectMake(0, 244, 244, 218)];
    
    catArray= [[NSArray alloc]initWithObjects:@"Sanity",@"Health",@"Education",@"Birth&Death",nil ];
    
}
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{

    NSString *title = [catArray objectAtIndex:row];
    if([title isEqualToString:@"Sanity"])
    {
        imgV = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"1.png"]];
        
    }
    else     if([title isEqualToString:@"Health"])

    {
        imgV = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"2.png"]];
   
    }
    else     if([title isEqualToString:@"Education"])
    {
        imgV = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"3.png"]];

    }
    else     if([title isEqualToString:@"Birth&Death"])
    {
        imgV = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"4.png"]];
   
    }
    [self.view addSubview:imgV];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return [catArray count];
}
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [catArray objectAtIndex:row];
}


@end
