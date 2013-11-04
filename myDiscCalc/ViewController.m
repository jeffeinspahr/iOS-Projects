//
//  ViewController.m
//  myDiscountCalc
//
//  Created by Jeffeinspahr on 10/9/13.
//  Copyright (c) 2013 jeffeinspahr. All rights reserved.
//

#import "ViewController.h"
#import "ViewController2.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize myPrice;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    if(self.myPrice == nil) {
        self.myPrice = [[Price alloc]init];
    }
    else {
        self.priceTextField.text = [self.myPrice.price stringValue];
        self.dollarOffTextField.text = [self.myPrice.dollarsOff stringValue];
        self.discountTextField.text = [self.myPrice.discountPercent stringValue];
        self.addlDiscTextField.text = [self.myPrice.addDiscPercent stringValue];
        self.taxTextField.text = [self.myPrice.tax stringValue];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    ViewController* me = (ViewController*)(segue.sourceViewController);
    ViewController2* you = (ViewController2*)(segue.destinationViewController);
    you.secondPrice = me.myPrice;
}
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    if(![self isFirstResponder]) {
        if([self.priceTextField isFirstResponder]){
            [self.priceTextField resignFirstResponder];
        }
        if([self.dollarOffTextField isFirstResponder]){
            [self.dollarOffTextField resignFirstResponder];
        }
        if([self.discountTextField isFirstResponder]){
            [self.discountTextField resignFirstResponder];
        }
        if([self.addlDiscTextField isFirstResponder]){
            [self.addlDiscTextField resignFirstResponder];
        }
        if([self.taxTextField isFirstResponder]){
            [self.taxTextField resignFirstResponder];
        }
    }
}
- (IBAction)calcButtonPressed:(UIButton *)sender {
    self.myPrice.price = [NSNumber numberWithDouble:[self.priceTextField.text doubleValue]];
    self.myPrice.dollarsOff = [NSNumber numberWithDouble:[self.dollarOffTextField.text doubleValue]];
    self.myPrice.discountPercent = [NSNumber numberWithDouble:[self.discountTextField.text doubleValue]];
    self.myPrice.addDiscPercent = [NSNumber numberWithDouble:[self.addlDiscTextField.text doubleValue]];
    self.myPrice.tax = [NSNumber numberWithDouble:[self.taxTextField.text doubleValue]];
    double discPrice = self.myPrice.calcDiscPrice;
    double tax = 0.0;
    tax = ([self.myPrice.price doubleValue] * [self.myPrice.tax doubleValue]/100.0);
        self.origPriceLabel.text = [NSString stringWithFormat: @"$ %.2f", ([self.myPrice.price doubleValue] + tax)];
    self.discPriceLabel.text = [NSString stringWithFormat:@"$ %.2f", (discPrice - tax)];
}

- (IBAction)recognizeSwipe:(UISwipeGestureRecognizer *)sender {
    NSLog(@"In first view controller, I recognized a swipe.");
    [self performSegueWithIdentifier:@"textToGraphics" sender:self];
}
@end
