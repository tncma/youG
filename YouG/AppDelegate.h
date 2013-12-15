//
//  AppDelegate.h
//  YouG
//
//  Created by Khan on 15/12/13.
//  Copyright (c) 2013 com.iKhanstudios. All rights reserved.
//

#import <UIKit/UIKit.h>
@class graphController;
@class tabbarcontroller;
@class PostIssue;
@class TimeLine;
@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property(strong,nonatomic) graphController *graphObj;
@property (strong,nonatomic)tabbarcontroller *tab;
@property(strong,nonatomic)PostIssue *post;
@property(strong,nonatomic)TimeLine *timez;

@end
