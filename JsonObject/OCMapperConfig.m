//
//  OCMapperConfig.m
//  JsonObject
//
//  Created by 0x00 on 16/08/15.
//  Copyright (c) 2015 jesusnajar. All rights reserved.
//

#import "OCMapperConfig.h"
#import "OCMapper.h"
#import <UIKit/UIKit.h>

@implementation OCMapperConfig
+ (void)configure
{
    InCodeMappingProvider *inCodeMappingProvider = [[InCodeMappingProvider alloc] init];
    CommonLoggingProvider *commonLoggingProvider = [[CommonLoggingProvider alloc] initWithLogLevel:LogLevelError];
    
    [[ObjectMapper sharedInstance] setMappingProvider:inCodeMappingProvider];
    [[ObjectMapper sharedInstance] setLoggingProvider:commonLoggingProvider];
    
    /******************* Any custom mapping would go here **********************/
    
    // Map from key 'posTables' to property 'posTables' of type 'LeagueTable' which is a property of 'LeagueTables' class
    [inCodeMappingProvider mapFromDictionaryKey:@"coord"
                                  toPropertyKey:@"coord"
                                 withObjectType:[Coord class]
                                       forClass:[WeatherObject class]];
    
    [inCodeMappingProvider mapFromDictionaryKey:@"weather"
                                  toPropertyKey:@"weatherDetails"
                                 withObjectType:[WeatherDetail class]
                                       forClass:[Weather class]];
    
    
    
}


@end
