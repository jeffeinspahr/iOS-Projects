//
//  StopTimes.h
//  LATransit
//
//  Created by Jeff Einspahr on 11/14/13.
//  Copyright (c) 2013 Jeff Einspahr. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StopTimes : NSObject

@property (readonly) int trip_id;
@property (readonly) NSString* arrival_time;
@property (readonly) NSString* departure_time;
@property (readonly) NSString* stop_id;
@property (readonly) int stop_sequence;

- (id) initWithTripId: (int) tripId andArrivalTime: (NSString*) arrivalTime andDepartureTime: (NSString*) departureTime andStopId: (NSString*) stopId andStopSequence: (int) stopSequence;
@end
