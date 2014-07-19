//
//  SKDropDown.h
//  DropDownExample
//
//  Created by Sukru on 01.10.2013.
//  Copyright (c) 2013 Sukru. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SKDropDown;
@protocol SKDropDownDelegate
- (void) skDropDownDelegateMethod: (SKDropDown *) sender;
@end

@interface SKDropDown : UIView <UITableViewDelegate, UITableViewDataSource>
{
    NSString *animationDirection;
}
@property (nonatomic, retain) id <SKDropDownDelegate> delegate;
//@property (nonatomic, retain) NSString *animationDirection;
@property(nonatomic, strong) UITableView *table;
@property(nonatomic, strong) UIButton *btnSender;
@property(nonatomic, retain) NSArray *list;

-(void)hideDropDown:(UIButton *)b;
- (id)showDropDown:(UIButton *)b withHeight:(CGFloat *)height withData:(NSArray *)arr animationDirection:(NSString *)direction;


@end
