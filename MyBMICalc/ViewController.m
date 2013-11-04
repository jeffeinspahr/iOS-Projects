//
//  ViewController.m
//  MyBMICalc
//
//  Created by Admin on 9/18/13.
//  Copyright (c) 2013 Jeff Einspahr. All rights reserved.
//
//This viewController handles all of the business logic of my program

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
- (void)touchesBegan: (NSSet *) touches withEvent: (UIEvent *) event
{
    //allows the user to touch the screen and have the keyboard move down
    NSLog( @"resigning first respond for inputTextField; Touch event!" );
    if ( ! [self isFirstResponder]) {
        if ([self.heightTextField isFirstResponder]) {
            [self.heightTextField resignFirstResponder];
        }
        if ([self.weightTextField isFirstResponder]) {
            [self.weightTextField resignFirstResponder];
        }
    }
}

- (IBAction)togglePressed:(UISwitch *)sender{
    //implements the toggle button to switch between imperial and metric units
    if(self.unitSwitch.on == TRUE){
        self.weightTypeLabel.text = [NSString stringWithFormat: @"Lbs."];
        self.heightTypeLabel.text = [NSString stringWithFormat: @"Inches"];
        self.heightTypeLabel.hidden = NO;
    }
    else {
        self.weightTypeLabel.text = [NSString stringWithFormat: @"KG"];
        self.heightTypeLabel.text = [NSString stringWithFormat: @"CM"];
    }
    
    
}

- (IBAction)goButtonPressed:(UIButton *)sender {
    //starts the application and calculates the BMI based off of the input
    double weight = [self.weightTextField.text doubleValue];
    double height = [self.heightTextField.text   doubleValue];
    double BMI = 0.0;

    if (weight > 0 && height > 0) {
        if (self.unitSwitch.on == TRUE) {
            BMI = (weight*703)/ (height * height);
        }
        else{
            height /= 100.0;
            BMI = (weight)/(height * height);
        }
        
        self.BmiLabel.text = [NSString stringWithFormat:@"%.2f",BMI];
        self.BmiLabel.hidden = NO;
        //checks the BMI and displays the category and a fitting image
        if (BMI < 16.00) {
            self.BMICategoryLabel.text = [NSString stringWithFormat: @"Severe Thinness"];
            self.faceImage.image = [UIImage imageNamed:@"sad.png"];
            self.faceImage.hidden = NO;
            
        }
        else if (BMI < 17.00){
            self.BMICategoryLabel.text = [NSString stringWithFormat: @"Moderate Thinness"];
            self.faceImage.image = [UIImage imageNamed:@"sad.png"];
            self.faceImage.hidden = NO;
        }
        else if (BMI < 18.50){
            self.BMICategoryLabel.text = [NSString stringWithFormat: @"Mild Thinness"];
            self.faceImage.image = [UIImage imageNamed:@"happy.png"];
            self.faceImage.hidden = NO;
        }
        else if (BMI < 25.00){
            self.BMICategoryLabel.text = [NSString stringWithFormat: @"Normal Range"];
            self.faceImage.image = [UIImage imageNamed:@"happy.png"];
            self.faceImage.hidden = NO;
        }
        else if (BMI < 30.00){
            self.BMICategoryLabel.text = [NSString stringWithFormat: @"Overweight"];
            self.faceImage.image = [UIImage imageNamed:@"neutral.png"];
            self.faceImage.hidden = NO;
            
        }
        else if (BMI < 35.00){
            self.BMICategoryLabel.text = [NSString stringWithFormat: @"Obese Class I (Moderate)"];
            self.faceImage.image = [UIImage imageNamed:@"sad.png"];
            self.faceImage.hidden = NO;
        }
        else if (BMI < 40.00){
            self.BMICategoryLabel.text = [NSString stringWithFormat: @"Obese Class II (Severe)"];
            self.faceImage.image = [UIImage imageNamed:@"sad.png"];
            self.faceImage.hidden = NO;
        }
        else if (BMI >= 40.00){
            self.BMICategoryLabel.text = [NSString stringWithFormat: @"Obese Class III (Very Severe)"];
            self.faceImage.image = [UIImage imageNamed:@"sad.png"];
            self.faceImage.hidden = NO;
        }
        self.BMICategoryLabel.hidden = NO;
        
    }
    else
    {
        //makes sure the user puts in viable input
        self.BmiLabel.text = [NSString stringWithFormat:@"Please Enter a Weight and Height"];
        self.BmiLabel.hidden = NO;

    }
    
    
}
@end
