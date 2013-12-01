//
//  mapStopViewController.m
//  LATransit
//
//  Created by Jeff Einspahr on 11/14/13.
//  Copyright (c) 2013 Jeff Einspahr. All rights reserved.
//

#import "mapStopViewController.h"

@interface mapStopViewController ()

@end

@implementation mapStopViewController

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
    self.labelTitle.text = self.stop.stop_name;
    self.labelLocation.text = [NSString stringWithFormat: @"%@, %@", self.stop.latitudeString, self.stop.longitudeString];
    [self.map setCenterCoordinate: self.stop.coord animated: YES];
    self.map.region = MKCoordinateRegionMake(self.stop.coord, MKCoordinateSpanMake(0.5, 0.5));
    MKPointAnnotation *annotation = [[MKPointAnnotation alloc] init];
    [annotation setCoordinate: self.stop.coord];
    [annotation setTitle: self.stop.stop_name];
    [self.map addAnnotation:annotation];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
