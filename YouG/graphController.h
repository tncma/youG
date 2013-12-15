//
//  graphController.h
//  YouG
//
//  Created by Khan on 15/12/13.
//  Copyright (c) 2013 com.iKhanstudios. All rights reserved.
//

#import <UIKit/UIKit.h>
@interface graphController : UIViewController<UIPickerViewDataSource,UIPickerViewDelegate>
{
    
    IBOutlet UIPickerView *catPicker;
    NSArray *catArray;
    IBOutlet UIButton *timeLineBtn;
     UIImageView *imgV;
    
}

@end
