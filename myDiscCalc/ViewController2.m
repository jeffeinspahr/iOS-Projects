//
//  ViewController2.m
//  myDiscountCalc
//
//  Created by Jeff Einspahr on 10/12/13.
//  Copyright (c) 2013 jeffeinspahr. All rights reserved.
//
#import "ViewController2.h"
#import "ViewController.h"

@interface ViewController2 ()

@end

@implementation ViewController2
- (void) setModel: (Price*)newModel {
    self.secondPrice = newModel;
}

- (Price*) getModel {
    return self.secondPrice;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    if (self.secondPrice == nil) {
        self.secondPrice = [[Price alloc] init];
    }

    NSLog(@"Price: %.2f", [self.secondPrice.price doubleValue]);
    [(graphicsView*)(self.view) setModel:self.secondPrice];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    ViewController2* me = (ViewController2*)(segue.sourceViewController);
    ViewController* you = (ViewController*)(segue.destinationViewController);
    you.myPrice = me.secondPrice;
}


- (IBAction)recognizeSwipe:(UISwipeGestureRecognizer *)sender {
    NSLog(@"In second view controller, I recognized a swipe.");
    [self performSegueWithIdentifier:@"graphicsToText" sender:self];
    
}


@end
