//
//  ViewController.m
//  DropDownExample
//
//  Created by Sukru on 01.10.2013.
//  Copyright (c) 2013 Sukru. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showOrHideDropDownList:(UIButton *)sender {
    NSArray * arrListContent = @[@"Item 0", @"Item 1", @"Item 2", @"Item 3", @"Item 4", @"Item 5", @"Item 6", @"Item 7", @"Item 8", @"Item 9"];

    
    if(_dropDown == nil) {
        CGFloat dropDownListHeight = 320; //Set height of drop down list
        NSString *direction = @"down"; //Set drop down direction animation
        
        _dropDown = [[SKDropDown alloc]showDropDown:sender withHeight:&dropDownListHeight withData:arrListContent animationDirection:direction];
        _dropDown.delegate = self;
    }
    else {
        [_dropDown hideDropDown:sender];
        [self closeDropDown];
    }
}
- (void) skDropDownDelegateMethod: (SKDropDown *) sender {
    [self closeDropDown];
}

-(void)closeDropDown{
    _dropDown = nil;
}
@end
