//
//  Stop.m
//  LATransit
//
//  Created by Jeff Einspahr on 11/14/13.
//  Copyright (c) 2013 Jeff Einspahr. All rights reserved.
//

#import "Stop.h"

@implementation Stop

@synthesize stop_id, stop_name, coord;

- (id) initWithId: (NSString*) Id andName: (NSString*) name andLongitude: (double) longitude andLatitude: (double) latitude
{
    self = [super init];
    if (self != nil)
    {
        stop_id = Id;
        stop_name = name;
        coord = CLLocationCoordinate2DMake(latitude, longitude);
    }
    return self;

}

- (NSString*) longitudeString{
    double theta = coord.longitude;
    double deg = floor(theta);
    double min = floor((theta - deg) * 60.0);
    double sec = floor((theta - deg - (min/60.0)) * 3600.0);
    return [NSString stringWithFormat: @"%g° %g' %g\"", deg, min, sec];
}

- (NSString*) latitudeString{
    double theta = coord.latitude;
    double deg = floor(theta);
    double min = floor((theta - deg) * 60.0);
    double sec = floor((theta - deg - (min/60.0)) * 3600.0);
    return [NSString stringWithFormat: @"%g° %g' %g\"", deg, min, sec];
}

@end
