//
//  ViewController.h
//  myDiscountCalc
//
//  Created by Jeffeinspahr on 10/9/13.
//  Copyright (c) 2013 jeffeinspahr. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Price.h"

@interface ViewController : UIViewController <UITextFieldDelegate>
//@property (retain) Price* firstPrice;
@property (nonatomic,weak) IBOutlet UITextField *priceTextField;
@property (nonatomic,weak) IBOutlet UITextField *dollarOffTextField;
@property (nonatomic,weak) IBOutlet UITextField *discountTextField;
@property (nonatomic,weak) IBOutlet UITextField *addlDiscTextField;
@property (nonatomic,weak) IBOutlet UITextField *taxTextField;
@property (nonatomic,weak) IBOutlet UILabel *origPriceLabel;
@property (nonatomic,weak) IBOutlet UILabel *discPriceLabel;
@property (retain,nonatomic) Price * myPrice;
- (IBAction)calcButtonPressed:(UIButton *)sender;
- (IBAction)recognizeSwipe:(UISwipeGestureRecognizer *)sender;


@end
