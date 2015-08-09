//
//  ViewController.m
//  DropDownExample
//
//  Created by Sukru on 01.10.2013.
//  Copyright (c) 2013 Sukru. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *B_openList;
@end

@implementation ViewController

-(void)awakeFromNib{
    self.title = @"Dropdown List";
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.B_openList.layer.cornerRadius = 5;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showOrHideDropDownList:(UIButton *)sender {
    NSArray * arrListContent = @[@"Popular", @"Trending", @"Daily", @"Special"];
    
    if(_dropDown == nil) {
        CGFloat dropDownListHeight = 160; //Set height of drop down list
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
