//
//  ViewController.h
//  MyBMICalc
//
//  Created by Admin on 9/18/13.
//  Copyright (c) 2013 Jeff Einspahr. All rights reserved.
//
//This header file contains all the prototypes for my objects and actions

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *weightTextField;
@property (weak, nonatomic) IBOutlet UITextField *heightTextField;
@property (weak, nonatomic) IBOutlet UISwitch *unitSwitch;
- (IBAction)goButtonPressed:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UILabel *BmiLabel;
@property (weak,nonatomic) IBOutlet UILabel *weightTypeLabel;
@property (weak,nonatomic) IBOutlet UILabel *heightTypeLabel;
@property (weak,nonatomic) IBOutlet UILabel *BMICategoryLabel;
- (IBAction)togglePressed:(UISwitch *)sender;
@property (weak,nonatomic) IBOutlet UIImageView *faceImage;
@end


