//
//  ViewController.h
//  DropDownExample
//
//  Created by Sukru on 01.10.2013.
//  Copyright (c) 2013 Sukru. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SKDropDown.h"

@interface ViewController : UIViewController<SKDropDownDelegate>
@property (strong, nonatomic) SKDropDown *dropDown;

- (IBAction)showOrHideDropDownList:(UIButton *)sender;
@end
