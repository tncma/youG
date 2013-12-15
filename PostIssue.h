//
//  PostIssue.h
//  YouG
//
//  Created by Khan on 15/12/13.
//  Copyright (c) 2013 com.iKhanstudios. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>

@interface PostIssue : UIViewController<UITextFieldDelegate>

{
    IBOutlet UIButton *postBtn;
    IBOutlet UITextView *textView;
}
-(IBAction)postIssue:(id)sender;

@end
