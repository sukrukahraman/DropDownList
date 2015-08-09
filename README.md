### DropDownList

Create a custom drop down list for IOS

### Screenshots

<img src="https://raw.githubusercontent.com/sukruk/DropDownList/master/ScreenShots/Image_1.png"  width="214">&nbsp;&nbsp;
<img src="https://raw.githubusercontent.com/sukruk/DropDownList/master/ScreenShots/Image_2.png"  width="214">&nbsp;&nbsp;
<img src="https://raw.githubusercontent.com/sukruk/DropDownList/master/ScreenShots/Image_3.png" width="214"><br><br><hr>

### Implementation


Add SKDropDownList.h and SKDropDownList.m to your project 

Then analyze ViewController.h and ViewController.m classes

#### Initialize Dropdown Item


    @interface ViewController : UIViewController<SKDropDownDelegate>
        @property (strong, nonatomic) SKDropDown *dropDown;
    @end


Write above code in button action method

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

#### Delegate method
   - (void) skDropDownDelegateMethod: (SKDropDown *) sender {
   
    [self closeDropDown];

   }

#### Close dropdown 
-(void)closeDropDown{

    _dropDown = nil;
    
}


