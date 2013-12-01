//
//  Stop.h
//  LATransit
//
//  Created by Jeff Einspahr on 11/14/13.
//  Copyright (c) 2013 Jeff Einspahr. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

@interface Stop : NSObject

@property (readonly) NSString* stop_id;
@property (readonly) NSString* stop_name;
@property (readonly) CLLocationCoordinate2D coord;

- (id) initWithId: (NSString*) Id andName: (NSString*) name andLongitude: (double) longitude andLatitude: (double) latitude;
- (NSString*) longitudeString;
- (NSString*) latitudeString;

@end
