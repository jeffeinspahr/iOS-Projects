//
//  ViewController.m
//  Calculator
//
//  Created by Jeff Einspahr on 10/21/13.
//  Copyright (c) 2013 Jeff Einspahr. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.trigger = none;
    if (self.myValueStorage == nil)
        self.myValueStorage = [[valueStorage alloc] init];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//when button is pressed, the value or symbol is appended to the text field
- (IBAction)bOne:(id)sender {
    [self appendToTextField:@"1"];
}
- (IBAction)bTwo:(id)sender {
    [self appendToTextField:@"2"];

}
- (IBAction)bThree:(id)sender {
    [self appendToTextField:@"3"];

}
- (IBAction)bFour:(id)sender {
    [self appendToTextField:@"4"];

}
- (IBAction)bFive:(id)sender {
    [self appendToTextField:@"5"];

}
- (IBAction)bSix:(id)sender {
    [self appendToTextField:@"6"];

}
- (IBAction)bSeven:(id)sender {
    [self appendToTextField:@"7"];

}
- (IBAction)bEight:(id)sender {
    [self appendToTextField:@"8"];

}
- (IBAction)bNine:(id)sender {
    [self appendToTextField:@"9"];

}
- (IBAction)bZero:(id)sender {
    [self appendToTextField:@"0"];

}
- (IBAction)bDecimal:(id)sender {
    [self appendToTextField:@"."];

}

//when the button is hit, the appropriate calculation is done
- (IBAction)bAdd:(id)sender {
    [self setOperandOne: [self.labelInput.text doubleValue]];
    self.labelInput.text = @"";
    self.labelSign.text = @"+";
    self.trigger = add;
    self.labelOperandOne.hidden = NO;
    self.labelSign.hidden = NO;
    
}
- (IBAction)bSubtract:(id)sender {
    [self setOperandOne: [self.labelInput.text doubleValue]];
    self.labelInput.text = @"";
    self.labelSign.text = @"-";
    self.trigger = substract;
    self.labelOperandOne.hidden = NO;
    self.labelSign.hidden = NO;


}
- (IBAction)bMultiply:(id)sender {
    [self setOperandOne: [self.labelInput.text doubleValue]];
    self.labelInput.text = @"";
    self.labelSign.text = @"x";
    self.trigger = multiply;
    self.labelOperandOne.hidden = NO;
    self.labelSign.hidden = NO;


}
- (IBAction)bDivide:(id)sender {
    [self setOperandOne: [self.labelInput.text doubleValue]];
    self.labelInput.text = @"";
    self.labelSign.text = @"÷";
    self.trigger = divide;
    self.labelOperandOne.hidden = NO;
    self.labelSign.hidden = NO;


}
- (IBAction)bSign:(id)sender {
    NSNumber* num = [NSNumber numberWithDouble:[self.labelInput.text doubleValue]];
    num = [NSNumber numberWithDouble:-1.0 * [num doubleValue]];
    self.labelInput.text = [num stringValue];
}
- (IBAction)bEqual:(id)sender {
    [self setOperandTwo: [self.labelInput.text doubleValue]];
    double value = 0.0;
    switch (self.trigger) {
        case add:
            value = [self.myValueStorage add];
            self.labelInput.text = [[NSNumber numberWithDouble:value] stringValue];
            break;
        case substract:
            value = [self.myValueStorage subtract];
            self.labelInput.text = [[NSNumber numberWithDouble:value] stringValue];
            break;
        case multiply:
            value = [self.myValueStorage multiply];
            self.labelInput.text = [[NSNumber numberWithDouble:value] stringValue];
            break;
        case divide:
            value = [self.myValueStorage divide];
            self.labelInput.text = [[NSNumber numberWithDouble:value] stringValue];
            break;
        default:
            self.labelInput.text = [self.myValueStorage.operandTwo stringValue];
            break;
    }
    self.trigger = none;    
}
- (IBAction)bSquareRoot:(id)sender {
    [self setOperandOne: [self.labelInput.text doubleValue]];
    self.labelInput.text = [[NSNumber numberWithDouble:[self.myValueStorage squareRoot]] stringValue];
    self.labelSign.text = @"√";
    self.labelOperandOne.hidden = NO;
    self.labelSign.hidden = NO;
}
- (IBAction)bClear:(id)sender {
    self.labelInput.text = @"";
    self.labelSign.hidden = YES;
    self.labelOperandOne.hidden = YES;
    self.labelOperandTwo.hidden = YES;
}

- (void)setOperandOne:(double)sender {
    self.myValueStorage.operandOne = [NSNumber numberWithDouble:sender];
    self.labelOperandOne.text = [self.myValueStorage.operandOne stringValue];
    self.labelOperandTwo.text = @"";
}
- (void)setOperandTwo:(double)sender {
    self.myValueStorage.operandTwo = [NSNumber numberWithDouble:sender];
    self.labelOperandTwo.text = [self.myValueStorage.operandTwo stringValue];
    self.labelOperandTwo.hidden = NO;

    
}
- (void)appendToTextField:(NSString*)sender {
    self.labelInput.text = [NSString stringWithFormat:@"%@%@",self.labelInput.text, sender];
}


@end
