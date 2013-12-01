//
//  sqlDatabase.h
//  LATransit
//
//  Created by Jeff Einspahr on 11/14/13.
//  Copyright (c) 2013 Jeff Einspahr. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <sqlite3.h>
@interface sqlDatabase : NSObject
{
    sqlite3* databasePointer;
}

+ (sqlDatabase*) databaseWithName: (NSString*) dbName;

- (id)initWithDB: (NSString*) dbName;

@end
