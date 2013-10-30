//
//  ViewController.h
//  Calculator
//
//  Created by Jeff Einspahr on 10/21/13.
//  Copyright (c) 2013 Jeff Einspahr. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "valueStorage.h"

typedef enum operand : NSUInteger {
    add,
    substract,
    multiply,
    divide,
    equal,
    none
} operand;


@interface ViewController : UIViewController
//storage of operands
@property (retain, nonatomic) valueStorage* myValueStorage;
//enum for calculations
@property operand trigger;
//properties for the labels
@property (weak, nonatomic) IBOutlet UILabel *labelSign;
@property (weak, nonatomic) IBOutlet UILabel *labelOperandOne;
@property (weak, nonatomic) IBOutlet UILabel *labelOperandTwo;
@property (weak, nonatomic) IBOutlet UITextField *labelInput;

//actions to each number button
- (IBAction)bOne:(id)sender;
- (IBAction)bTwo:(id)sender;
- (IBAction)bThree:(id)sender;
- (IBAction)bFour:(id)sender;
- (IBAction)bFive:(id)sender;
- (IBAction)bSix:(id)sender;
- (IBAction)bSeven:(id)sender;
- (IBAction)bEight:(id)sender;
- (IBAction)bNine:(id)sender;
- (IBAction)bZero:(id)sender;
- (IBAction)bDecimal:(id)sender;

//actions for each operator
- (IBAction)bAdd:(id)sender;
- (IBAction)bSubtract:(id)sender;
- (IBAction)bMultiply:(id)sender;
- (IBAction)bDivide:(id)sender;
- (IBAction)bSign:(id)sender;
- (IBAction)bEqual:(id)sender;
- (IBAction)bSquareRoot:(id)sender;
- (IBAction)bClear:(id)sender;

//setters for operands
- (void)setOperandOne:(double)sender;
- (void)setOperandTwo:(double)sender;

//appends to the textfield
- (void)appendToTextField:(NSString*)sender;











@end
