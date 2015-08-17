//
//  Parser.m
//  JsonObject
//
//  Created by 0x00 on 16/08/15.
//  Copyright (c) 2015 jesusnajar. All rights reserved.
//

#import "Parser.h"

@implementation Parser
+ (WeatherObject *)parseWeatherObject {
    //check for valid value
    if(mjsonWeatherObject!=nil){
        // Using ObjectMapper Directly
        WeatherObject *weatherObject         = [[ObjectMapper sharedInstance] objectFromSource:mjsonWeatherObject toInstanceOfClass:[WeatherObject class]];
        return weatherObject;
    }
    return nil;
}
+ (Weather *)parseWeather {
    //check for valid value
    if(mjsonWeatherObject!=nil){
        // Using ObjectMapper Directly
        Weather *weather         = [[ObjectMapper sharedInstance] objectFromSource:mjsonWeatherObject toInstanceOfClass:[Weather class]];
        return weather;
    }
    return nil;
}
+ (WeatherDetail *)parseWeatherDetail {
    //check for valid value
    if(mjsonWeatherObject!=nil){
        // Using ObjectMapper Directly
        WeatherDetail *weatherDetail         = [[ObjectMapper sharedInstance] objectFromSource:mjsonWeatherObject toInstanceOfClass:[WeatherDetail class]];
        return weatherDetail;
    }
    return nil;
}
//-------------------------------------------------------------------------------
+ (NSMutableArray *)parseWeatherDetails {
    //check for valid value
    if(mjsonWeatherObject != nil){
        // Using ObjectMapper Directly
        NSMutableArray *weatherDetails = [[ObjectMapper sharedInstance] objectFromSource:mjsonWeatherObject toInstanceOfClass:[WeatherDetail class]];
        return weatherDetails;
    }
    return nil;
}


@end
